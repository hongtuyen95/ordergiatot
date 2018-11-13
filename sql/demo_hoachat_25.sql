/*
Navicat MySQL Data Transfer

Source Server         : qts
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : demo_hoachat

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-06-20 14:52:48
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `access`
-- ----------------------------
DROP TABLE IF EXISTS `access`;
CREATE TABLE `access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `access` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of access
-- ----------------------------
INSERT INTO `access` VALUES ('1', '11', '{\"product\":[\"products\",\"add\",\"edit\",\"delete\",\"categories\",\"cat_add\",\"cat_edit\",\"cat_delete\"]}');
INSERT INTO `access` VALUES ('2', '12', '{\"menu\":[\"menulist\",\"add\",\"edit\",\"delete\"]}');
INSERT INTO `access` VALUES ('3', '2', '{\"product\":[\"products\",\"category_pro\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\",\"delete_once_comment\",\"delete_once_question\"],\"order\":[\"orders\",\"listSale\",\"listProvince\",\"delete_once_orders\",\"addSale\",\"del_once_sale\"],\"news\":[\"newslist\",\"categories\",\"tagsnews\",\"addnews\",\"delete_once_news\",\"cat_add_news\",\"del_catnews_once\"],\"menu\":[\"addmenu\",\"menulist\",\"delete\"],\"comment\":[\"comments\",\"questions\"],\"imageupload\":[\"banners\",\"addbanner\",\"delete_Banner_once\"],\"pages\":[\"pagelist\",\"addpage\",\"delete_page_once\"],\"contact\":[\"contacts\",\"delete\"],\"admin\":[\"site_option\",\"maps\",\"store_shopping\"]}');
INSERT INTO `access` VALUES ('4', '1', '{\"inuser\":[\"categories\",\"cate_add\",\"delete_cat_once\"],\"media\":[\"listAll\",\"categories\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\"],\"video\":[\"listAll\",\"category_video\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\"],\"product\":[\"products\",\"category_pro\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\",\"delete_once_comment\",\"delete_once_question\"],\"order\":[\"orders\",\"listSale\",\"listProvince\",\"delete_once_orders\",\"addSale\",\"del_once_sale\"],\"attribute\":[\"listBrand\",\"listLocale\",\"listColor\",\"listprice\",\"listOption\",\"addbrand\",\"delete_brand_once\",\"addlocale\",\"delete_locale_once\",\"addcolor\",\"delete_color_once\",\"addprice\",\"delete_price_once\",\"addoption\",\"delete_option_once\"],\"news\":[\"newslist\",\"categories\",\"tagsnews\",\"addnews\",\"delete_once_news\",\"cat_add_news\",\"del_catnews_once\"],\"tag\":[\"tag\"],\"menu\":[\"addmenu\",\"menulist\",\"delete\"],\"comment\":[\"comments\",\"questions\"],\"imageupload\":[\"banners\",\"addbanner\",\"delete_Banner_once\"],\"pages\":[\"pagelist\",\"addpage\",\"delete_page_once\"],\"contact\":[\"contacts\",\"delete\"],\"raovat\":[\"listraovat\",\"categories\",\"tagtinrao\",\"add\",\"delete_raovat_once\",\"cat_add\",\"del_cattinrao_once\"],\"email\":[\"emails\",\"delete\"],\"support\":[\"listSuport\",\"add\",\"delete_support_once\"],\"users\":[\"listuser_admin\",\"listusers\",\"add_users\",\"smslist\"],\"admin\":[\"site_option\",\"maps\",\"store_shopping\",\"setup_product\"],\"province\":[\"listDistric\",\"listWard\",\"street\"],\"report\":[\"soldout\",\"bestsellers\"]}');
INSERT INTO `access` VALUES ('5', '580', '{\"admin\":[\"\",\"site_option\",\"inuser\",\"comment\",\"email\",\"contact\"],\"users\":[\"delete\"],\"order\":[\"orders\",\"Deleteeorder\"],\"support\":[\"add\",\"edit\",\"x\\u00f3a\"],\"product\":[\"products\",\"add\",\"edit\",\"delete\",\"categories\",\"cat_add\",\"cat_edit\",\"listCodeSale\",\"cat_delete\",\"images\"],\"news\":[\"newslist\",\"add\",\"edit\",\"delete\",\"categories\",\"cat_add\",\"cat_edit\",\"delete_cat\"],\"pages\":[\"pagelist\",\"add\",\"edit\",\"delete\",\"action\"],\"menu\":[\"menulist\",\"add\",\"edit\",\"delete\"]}');
INSERT INTO `access` VALUES ('6', '612', '{\"media\":[\"listAll\",\"categories\"],\"video\":[\"listAll\",\"category_video\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\"]}');
INSERT INTO `access` VALUES ('7', '636', '{\"product\":[\"products\",\"category_pro\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\",\"delete_once_comment\",\"delete_once_question\"],\"order\":[\"orders\",\"listSale\",\"listProvince\",\"delete_once_orders\",\"addSale\",\"del_once_sale\"],\"news\":[\"newslist\",\"categories\",\"tagsnews\",\"addnews\",\"delete_once_news\",\"cat_add_news\",\"del_catnews_once\"],\"users\":[\"listuser_admin\",\"listusers\",\"delete_users_once\",\"add_users\"],\"admin\":[\"site_option\",\"maps\",\"store_shopping\"]}');

-- ----------------------------
-- Table structure for `alias`
-- ----------------------------
DROP TABLE IF EXISTS `alias`;
CREATE TABLE `alias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` char(50) CHARACTER SET utf8 DEFAULT NULL,
  `item_id` int(11) DEFAULT '0',
  `new_cat` int(11) DEFAULT '0',
  `new` int(11) DEFAULT '0',
  `pro_cat` int(11) DEFAULT '0',
  `pro` int(11) DEFAULT '0',
  `page` int(11) DEFAULT '0',
  `m_cat` int(11) DEFAULT '0',
  `media` int(11) DEFAULT '0',
  `locale` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `inuser` int(11) DEFAULT NULL,
  `video_cat` int(11) DEFAULT NULL,
  `video` int(11) DEFAULT NULL,
  `services_cat` int(11) DEFAULT NULL,
  `services` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of alias
-- ----------------------------
INSERT INTO `alias` VALUES ('10', 'gioi-thieu', 'page', '0', '0', '0', '0', '0', '31', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('81', 'up-anh-jpeg-cha-le-khong-duoc-12', 'media', '0', '0', '0', '0', '0', '0', '0', '11', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('86', 'hinh-anh', 'm-cat', '0', '0', '0', '0', '0', '0', '1', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('87', 'bai-hat-gianh-cho-nguoi-dang-yeu', 'video', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, '2', null, null);
INSERT INTO `alias` VALUES ('88', 'danh-muc-video-cua-nam-2018', 'video-cat', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, '4', null, null, null);
INSERT INTO `alias` VALUES ('89', 'ban-nha-tai-ha-noi-viet-nam', 'services', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, '3');
INSERT INTO `alias` VALUES ('90', 'khac', 'cate-ser', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, null, '42', null);
INSERT INTO `alias` VALUES ('217', 'cong-ty-co-phan-xay-dung-tuan-phat', 'page', '0', '0', '0', '0', '0', '38', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('194', 'nguyen-cong-hoan', 'cat_inuser', '0', '0', '0', '0', '0', '0', '0', '0', null, null, '27', null, null, null, null);
INSERT INTO `alias` VALUES ('195', 'truong-phong-hlc-group', 'cat_inuser', '0', '0', '0', '0', '0', '0', '0', '0', null, null, '30', null, null, null, null);
INSERT INTO `alias` VALUES ('220', 'trang-tri-noi-that-cho-khong-gian-nha-an-tuong1', 'new', '0', '0', '6', '0', '0', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('221', 'tab-dau-giuong-go-go-do-cao-cap-926b', 'pro', '0', '0', '0', '0', '18', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('222', 'bo-phong-ngu-han-quoc-co-ghe-hoc-xoay-a689bg15', 'pro', '0', '0', '0', '0', '17', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('223', 'tu-ao-2-canh-hien-dai-phong-cach-han-quoc-a689d2', 'pro', '0', '0', '0', '0', '16', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('224', 'ban-an-sang-trong-t072', 'pro', '0', '0', '0', '0', '15', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('225', 'ghe-an-a656', 'pro', '0', '0', '0', '0', '11', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('226', 'ban-an-1m2-mat-kinh-vien-den-t0509092-1', 'pro', '0', '0', '0', '0', '14', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('227', 'ghe-nhua-duc-nguyen-khoi-mau-xanh-ck6', 'pro', '0', '0', '0', '0', '13', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('228', 'ghe-an-bang-da-cao-cap-y148917', 'pro', '0', '0', '0', '0', '12', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('229', 'ban-tra-1m4-cao-cap-phong-cach-phap-88012', 'pro', '0', '0', '0', '0', '6', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('230', 'tin-tuc', 'cate-new', '0', '1', '0', '0', '0', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('231', 'mau-thiet-ke-biet-thu-dep-2018-phong-cach-hien-dai-sang-trong', 'new', '0', '0', '5', '0', '0', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('232', 'thiet-ke-noi-that-biet-thu-ha-do-phong-cach-tan-co-dien', 'new', '0', '0', '4', '0', '0', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('233', 'trang-tri-noi-that-cho-khong-gian-nha-an-tuong', 'new', '0', '0', '3', '0', '0', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('234', 'trang-tri-khong-gian-noi-that-biet-thu-nha-pho', 'new', '0', '0', '2', '0', '0', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('235', 'xu-huong-thiet-ke-noi-that-biet-thu-hien-dai-cao-cap', 'new', '0', '0', '1', '0', '0', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('236', 'noi-that-phong-khach', 'cate-pro', '0', '0', '0', '4', '0', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('237', 'noi-that-phong-an', 'cate-pro', '0', '0', '0', '3', '0', '0', '0', '0', null, null, null, null, null, null, null);
INSERT INTO `alias` VALUES ('238', 'noi-that-phong-ngu', 'cate-pro', '0', '0', '0', '2', '0', '0', '0', '0', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `code_sale`
-- ----------------------------
DROP TABLE IF EXISTS `code_sale`;
CREATE TABLE `code_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of code_sale
-- ----------------------------
INSERT INTO `code_sale` VALUES ('10', 'Noel', 'ADCVX', '10', '1');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `comment` text CHARACTER SET utf8,
  `reply` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `review` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for `comments_binhluan`
-- ----------------------------
DROP TABLE IF EXISTS `comments_binhluan`;
CREATE TABLE `comments_binhluan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sanpham` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `giatri` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `date` date NOT NULL,
  `flg` int(1) NOT NULL DEFAULT '0' COMMENT '0: moi binh luan; 1: xac nhan de hien thi',
  `reply` int(11) DEFAULT NULL,
  `review` tinyint(1) DEFAULT '0',
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comments_binhluan
-- ----------------------------
INSERT INTO `comments_binhluan` VALUES ('1', '5', 'nội dung đánh giá sản phẩm này rất tốt', '5', '0', '0', '1505698798', '2017-09-18', '0', '0', '1', 'trần mạnh', 'dangtranmanh051187@gmail.com', '1');
INSERT INTO `comments_binhluan` VALUES ('2', '5', 'nội dung bình luận', '0', '0', '0', '1505698841', '2017-09-18', '0', '0', '1', 'trần mạnh', 'dangtranmanh051187@gmail.com', '1');
INSERT INTO `comments_binhluan` VALUES ('3', '5', 'noi dung binh luận đánh giá nhận xét', '0', '0', '0', '1505699713', '2017-09-18', '0', '0', '0', 'trần mạnh', 'dangtranmanh051187@gmail.com', '1');
INSERT INTO `comments_binhluan` VALUES ('4', '5', 'nội dung bình luận tiếp theo', '4', '0', '0', '1505699941', '2017-09-18', '0', '0', '1', 'trần mạnh', 'dangtranmanh051187@gmail.com', '1');
INSERT INTO `comments_binhluan` VALUES ('5', '5', 'bình luận của vũ', '0', '0', '0', '1505700184', '2017-09-18', '0', '0', '1', 'trần long vũ', 'dangtranmanh051187@gmail.com', '1');
INSERT INTO `comments_binhluan` VALUES ('6', '5', 'bình luận của vũ', '0', '0', '0', '1505700223', '2017-09-18', '0', '0', '1', 'trần long vũ', 'dangtranmanh051187@gmail.com', '1');
INSERT INTO `comments_binhluan` VALUES ('7', '5', 'binh luận mới', '2', '0', '0', '1505700317', '2017-09-18', '0', '0', '1', 'tiến đạt', 'nguyentiendat@gmail.com', '1');
INSERT INTO `comments_binhluan` VALUES ('8', '5', 'noi dung binh luận', '1', '0', '0', '1505702973', '2017-09-18', '0', '0', '1', 'công sáng', 'congsang@gmail.com', '1');
INSERT INTO `comments_binhluan` VALUES ('9', '5', 'bình luận tiếp theo', '5', '0', '0', '1505703111', '2017-09-18', '0', '0', '1', 'công sáng', 'congsang@gmail.com', '1');
INSERT INTO `comments_binhluan` VALUES ('10', '5', 'noi trung tra loi binh luan', '4', '0', '0', '1505721191', '0000-00-00', '0', '7', '1', 'cong sangs', 'congsang@gmail.com', '1');
INSERT INTO `comments_binhluan` VALUES ('11', '4', 'Tốt', '5', '0', '0', '1505981714', '2017-09-21', '0', '0', '1', 'Vân', 'buivananh.th@gmail.com', '1');

-- ----------------------------
-- Table structure for `config_banner`
-- ----------------------------
DROP TABLE IF EXISTS `config_banner`;
CREATE TABLE `config_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `field` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `active` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of config_banner
-- ----------------------------
INSERT INTO `config_banner` VALUES ('1', '0', 'banner trang chủ', 'banner', '0');
INSERT INTO `config_banner` VALUES ('2', '0', 'Slide', 'slide', '1');
INSERT INTO `config_banner` VALUES ('3', '0', 'banner trái', 'left', '0');
INSERT INTO `config_banner` VALUES ('4', '0', 'Banner phải', 'right', '0');
INSERT INTO `config_banner` VALUES ('5', '0', 'banner top', 'top', '0');
INSERT INTO `config_banner` VALUES ('6', '0', 'banner bottom', 'bottom', '0');
INSERT INTO `config_banner` VALUES ('7', '0', 'Đối tác', 'partners', '1');
INSERT INTO `config_banner` VALUES ('8', '1', 'colum danh mục', 'danhmuc', '0');

-- ----------------------------
-- Table structure for `config_checkpro`
-- ----------------------------
DROP TABLE IF EXISTS `config_checkpro`;
CREATE TABLE `config_checkpro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `field` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `active` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of config_checkpro
-- ----------------------------
INSERT INTO `config_checkpro` VALUES ('1', 'product', 'sản phẩm mới', 'hot', 'd73925', '0');
INSERT INTO `config_checkpro` VALUES ('2', 'product', 'Trang chủ', 'home', '008d4c', '1');
INSERT INTO `config_checkpro` VALUES ('3', 'product', 'sp khuyến mại', 'coupon', 'f39c12', '0');
INSERT INTO `config_checkpro` VALUES ('4', 'product', 'sản phẩm nổi bật', 'focus', 'd352d4', '0');
INSERT INTO `config_checkpro` VALUES ('5', 'product_category', 'Trang chủ', 'home', 'd73925', '1');
INSERT INTO `config_checkpro` VALUES ('6', 'product_category', 'Danh mục mới', 'hot', '008d4c', '0');
INSERT INTO `config_checkpro` VALUES ('7', 'product_category', 'Nổi bật', 'focus', 'c3c3c3', '0');
INSERT INTO `config_checkpro` VALUES ('8', 'product_category', 'Đặc biệt', 'coupon', 'd352d4', '0');
INSERT INTO `config_checkpro` VALUES ('9', 'news', 'Trang chủ', 'home', 'd73925', '0');
INSERT INTO `config_checkpro` VALUES ('10', 'news', 'Tin mới nhất', 'focus', '008d4c', '1');
INSERT INTO `config_checkpro` VALUES ('11', 'news', 'Tin công ty', 'hot', '4e8e94', '0');
INSERT INTO `config_checkpro` VALUES ('12', 'news_category', 'Trang chủ', 'home', 'd73925', '1');
INSERT INTO `config_checkpro` VALUES ('13', 'news_category', 'Tin công ty', 'hot', '4e8e94', '1');
INSERT INTO `config_checkpro` VALUES ('14', 'news_category', 'Nổi bật', 'focus', 'c3c3c3', '0');
INSERT INTO `config_checkpro` VALUES ('15', 'news_category', 'Danh mục bên trái', 'coupon', '0098da', '0');
INSERT INTO `config_checkpro` VALUES ('16', 'media', 'Trang chủ', 'home', 'd73925', '1');
INSERT INTO `config_checkpro` VALUES ('17', 'media', 'nổi bật', 'focus', '008d4c', '1');
INSERT INTO `config_checkpro` VALUES ('18', 'media', 'Đặc biệt', 'hot', 'c3c3c3', '1');
INSERT INTO `config_checkpro` VALUES ('19', 'media_category', 'Trang chủ', 'home', 'd73925', '0');
INSERT INTO `config_checkpro` VALUES ('20', 'media_category', 'Mới', 'hot', '008d4c', '1');
INSERT INTO `config_checkpro` VALUES ('21', 'media_category', 'Nổi bật', 'focus', 'c3c3c3', '0');
INSERT INTO `config_checkpro` VALUES ('22', 'media_category', 'Cột trái', 'coupon', 'd352d4', '0');
INSERT INTO `config_checkpro` VALUES ('23', 'video', 'Trang chủ', 'home', 'd73925', '0');
INSERT INTO `config_checkpro` VALUES ('24', 'video', 'nổi bật', 'focus', '008d4c', '0');
INSERT INTO `config_checkpro` VALUES ('25', 'video', 'Đặc biệt', 'hot', 'c3c3c3', '0');
INSERT INTO `config_checkpro` VALUES ('26', 'video_category', 'Trang chủ', 'home', 'd73925', '1');
INSERT INTO `config_checkpro` VALUES ('27', 'video_category', 'Mới', 'hot', '008d4c', '1');
INSERT INTO `config_checkpro` VALUES ('28', 'video_category', 'Nổi bật', 'focus', 'c3c3c3', '0');
INSERT INTO `config_checkpro` VALUES ('29', 'staticpage', 'Trang chủ', 'home', 'd73925', '1');
INSERT INTO `config_checkpro` VALUES ('30', 'staticpage', 'Liên hệ', 'focus', '008d4c', '0');
INSERT INTO `config_checkpro` VALUES ('31', 'staticpage', 'Đặc biệt', 'hot', 'c3c3c3', '0');
INSERT INTO `config_checkpro` VALUES ('32', 'raovat', 'Trang chủ', 'home', 'd73925', '1');
INSERT INTO `config_checkpro` VALUES ('33', 'raovat', 'nổi bật', 'focus', '008d4c', '1');
INSERT INTO `config_checkpro` VALUES ('34', 'raovat', 'Đặc biệt', 'hot', 'c3c3c3', '1');
INSERT INTO `config_checkpro` VALUES ('35', 'raovat_category', 'Trang chủ', 'home', 'd73925', '1');
INSERT INTO `config_checkpro` VALUES ('36', 'raovat_category', 'Mới', 'hot', '008d4c', '1');
INSERT INTO `config_checkpro` VALUES ('37', 'raovat_category', 'Nổi bật', 'focus', 'c3c3c3', '1');
INSERT INTO `config_checkpro` VALUES ('38', 'product_category', 'Ảnh đại diện', 'image', '', '1');
INSERT INTO `config_checkpro` VALUES ('39', 'news_category', 'ảnh danh mục news', 'image', null, '0');
INSERT INTO `config_checkpro` VALUES ('40', 'staticpage', 'ảnh nội dung', 'image', null, '1');
INSERT INTO `config_checkpro` VALUES ('41', 'video_category', 'ảnh danh mục video', 'image', null, '1');
INSERT INTO `config_checkpro` VALUES ('42', 'media_category', 'ảnh danh mục media', 'image', null, '1');
INSERT INTO `config_checkpro` VALUES ('43', 'product', 'giá cũ', 'price', null, '1');
INSERT INTO `config_checkpro` VALUES ('44', 'product', 'giá bán', 'price_sale', null, '1');
INSERT INTO `config_checkpro` VALUES ('45', 'product', 'thẻ tags', 'tags', null, '0');
INSERT INTO `config_checkpro` VALUES ('46', 'hotline', 'Hiện thị hotline', 'hotline', '0', '1');
INSERT INTO `config_checkpro` VALUES ('47', 'hotline', 'Chát facebook', 'chat_fanpage', '0', '1');

-- ----------------------------
-- Table structure for `config_menu`
-- ----------------------------
DROP TABLE IF EXISTS `config_menu`;
CREATE TABLE `config_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `field` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `active` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of config_menu
-- ----------------------------
INSERT INTO `config_menu` VALUES ('2', 'top', 'menu đại', null, '0');
INSERT INTO `config_menu` VALUES ('3', 'left', 'menu left', null, '0');
INSERT INTO `config_menu` VALUES ('4', 'right', 'menu right', null, '0');
INSERT INTO `config_menu` VALUES ('5', 'bottom', 'menu bottom', null, '1');
INSERT INTO `config_menu` VALUES ('6', 'tag', 'menu tag', null, '0');
INSERT INTO `config_menu` VALUES ('7', 'bottom_2', 'menu bottom 2', null, '0');
INSERT INTO `config_menu` VALUES ('8', 'bottom_3', 'menu bottom 3', null, '0');

-- ----------------------------
-- Table structure for `config_wiget`
-- ----------------------------
DROP TABLE IF EXISTS `config_wiget`;
CREATE TABLE `config_wiget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `field` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `active` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of config_wiget
-- ----------------------------
INSERT INTO `config_wiget` VALUES ('1', null, 'banner trang chủ', 'banner', '1');
INSERT INTO `config_wiget` VALUES ('2', null, 'slide', 'slide', '1');
INSERT INTO `config_wiget` VALUES ('3', null, 'banner trái', 'left', '0');
INSERT INTO `config_wiget` VALUES ('4', null, 'Banner phải', 'right', '0');
INSERT INTO `config_wiget` VALUES ('5', null, 'banner top', 'top', '0');
INSERT INTO `config_wiget` VALUES ('6', null, 'banner bottom', 'bottom', '0');
INSERT INTO `config_wiget` VALUES ('7', null, 'đối tác', 'partners', '1');

-- ----------------------------
-- Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `comment` text CHARACTER SET utf8,
  `mark` tinyint(1) DEFAULT '0',
  `show` tinyint(1) DEFAULT '0',
  `time` int(11) DEFAULT NULL,
  `cat_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('9', 'donkihote', '094857643', 'abc@gmail.com', 'xumantra', null, null, 'Lam sao su dung camera ip', '0', '1', '1474383531', 'Camera');
INSERT INTO `contact` VALUES ('13', 'Vân', '0982255552', 'buivananh.th@gmail.com', 'sâsasaas', null, null, 'sxssxxs', '0', '0', '1505980957', null);
INSERT INTO `contact` VALUES ('14', 'Vân', '0989339814', 'buivananh.th@gmail.com', ' Số 7, ngách 71 Ngõ 120 Phường Vĩnh Tuy, Quận Hai Bà Trưng, TP Hà Nội', null, null, 'sdsdsd', '0', '0', '1512033926', null);

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` int(11) unsigned DEFAULT NULL,
  `gender` tinyint(3) unsigned DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` int(11) unsigned DEFAULT NULL,
  `district` int(11) unsigned DEFAULT NULL,
  `ward` int(10) unsigned DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  `date` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('17', 'Hồng Thất Công', 'KH17', '0986083468', 'hongthatcong@gmail.com', '17', '1', '', null, null, null, null, 'Cái Bang', '3643bhfsdhfds', '', '2', null, null, '1526551811', null);
INSERT INTO `customer` VALUES ('18', 'Tiều Cái', 'KH18', '09647239064', 'tieucai@luongson.com', '17', '1', '108 Lương Sơn', null, null, null, null, 'Lương Sơn Bạc', 'DV4364326', '', '2', null, null, '1526551875', null);
INSERT INTO `customer` VALUES ('19', 'Tào Tháo', 'KH19', '06949326935', 'taothao@tamquoc.com', '17', '1', '', null, null, null, null, 'Tam Quốc Diễn Nghĩa', '634ggdsgsgDG', '', '2', null, null, '1526551937', null);

-- ----------------------------
-- Table structure for `customer_debt`
-- ----------------------------
DROP TABLE IF EXISTS `customer_debt`;
CREATE TABLE `customer_debt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) DEFAULT NULL,
  `id_create` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nkd` float(22,0) DEFAULT '0',
  `ghino` float(22,0) DEFAULT '0',
  `ghico` float(22,0) DEFAULT '0',
  `nkc` float(22,0) DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  `time_insert` int(11) DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer_debt
-- ----------------------------
INSERT INTO `customer_debt` VALUES ('19', '14', null, 'HD38', '0', '760000', '0', '-860000', 'Bán hàng', '1526490000', '1526527753', '0');
INSERT INTO `customer_debt` VALUES ('20', '14', '580', 'HD38', '-860000', '0', '860000', '0', 'Thanh toán tiền hàng', '1526490000', '1526540055', '0');
INSERT INTO `customer_debt` VALUES ('21', '13', null, 'HD39', '0', '1760000', '0', '-1792000', 'Bán hàng', '1526490000', '1526541631', '0');
INSERT INTO `customer_debt` VALUES ('22', '18', '2', 'HD40', '0', '358000', '0', '-450840', 'Bán hàng', '1526490000', '1526551961', '0');

-- ----------------------------
-- Table structure for `district`
-- ----------------------------
DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pre` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `provinceid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=698 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of district
-- ----------------------------
INSERT INTO `district` VALUES ('106', 'Bến Lức', 'Huyện', '8');
INSERT INTO `district` VALUES ('121', 'Bắc Trà My', 'Huyện', '9');
INSERT INTO `district` VALUES ('139', 'Bà Rịa', 'Thị xã', '10');
INSERT INTO `district` VALUES ('147', 'Buôn Đôn', 'Huyện', '11');
INSERT INTO `district` VALUES ('162', ' Thới Lai', 'Huyện', '12');
INSERT INTO `district` VALUES ('171', 'Bắc Bình', 'Huyện', '13');
INSERT INTO `district` VALUES ('181', 'Bảo Lâm', 'Huyện', '14');
INSERT INTO `district` VALUES ('193', 'A Lưới', 'Huyện', '15');
INSERT INTO `district` VALUES ('202', 'An Biên', 'Huyện', '16');
INSERT INTO `district` VALUES ('217', 'Bắc Ninh', 'Thành phố', '17');
INSERT INTO `district` VALUES ('225', 'Ba Chẽ', 'Huyện', '18');
INSERT INTO `district` VALUES ('239', 'Bá Thước', 'Huyện', '19');
INSERT INTO `district` VALUES ('266', 'Anh Sơn', 'Huyện', '20');
INSERT INTO `district` VALUES ('287', 'Bình Giang', 'Huyện', '21');
INSERT INTO `district` VALUES ('299', 'An Khê', 'Thị xã', '22');
INSERT INTO `district` VALUES ('316', 'Bình Long', 'Thị xã', '23');
INSERT INTO `district` VALUES ('327', 'Ân Thi', 'Huyện', '24');
INSERT INTO `district` VALUES ('337', 'An Lão', 'Huyện', '25');
INSERT INTO `district` VALUES ('348', 'Cái Bè', 'Huyện', '26');
INSERT INTO `district` VALUES ('359', 'Đông Hưng', 'Huyện', '27');
INSERT INTO `district` VALUES ('367', 'Bắc Giang', 'Thành phố', '28');
INSERT INTO `district` VALUES ('377', 'Cao Phong', 'Huyện', '29');
INSERT INTO `district` VALUES ('388', 'An Phú', 'Huyện', '30');
INSERT INTO `district` VALUES ('399', 'Bình Xuyên', 'Huyện', '31');
INSERT INTO `district` VALUES ('408', 'Bến Cầu', 'Huyện', '32');
INSERT INTO `district` VALUES ('417', 'Đại Từ', 'Huyện', '33');
INSERT INTO `district` VALUES ('426', 'Bắc Hà', 'Huyện', '34');
INSERT INTO `district` VALUES ('435', 'Giao Thủy', 'Huyện', '35');
INSERT INTO `district` VALUES ('445', 'Ba Tơ', 'Huyện', '36');
INSERT INTO `district` VALUES ('459', 'Ba Tri', 'Huyện', '37');
INSERT INTO `district` VALUES ('468', 'Cư Jút', 'Huyện', '38');
INSERT INTO `district` VALUES ('476', 'Cà Mau', 'Thành phố', '39');
INSERT INTO `district` VALUES ('485', 'Bình Minh', 'Huyện', '40');
INSERT INTO `district` VALUES ('493', 'Gia Viễn', 'Huyện', '41');
INSERT INTO `district` VALUES ('501', 'Cẩm Khê', 'Huyện', '42');
INSERT INTO `district` VALUES ('514', 'Bác Ái', 'Huyện', '43');
INSERT INTO `district` VALUES ('521', 'Đông Hòa', 'Huyện', '44');
INSERT INTO `district` VALUES ('530', 'Bình Lục', 'Huyện', '45');
INSERT INTO `district` VALUES ('536', 'Cẩm Xuyên', 'Huyện', '46');
INSERT INTO `district` VALUES ('548', 'Cao Lãnh', 'Thành phố', '47');
INSERT INTO `district` VALUES ('560', 'Châu Thành', 'Huyện', '48');
INSERT INTO `district` VALUES ('571', 'Đăk Glei', 'Huyện', '49');
INSERT INTO `district` VALUES ('581', 'Ba Đồn', 'Thị xã', '50');
INSERT INTO `district` VALUES ('589', 'Cam Lộ', 'Huyện', '51');
INSERT INTO `district` VALUES ('599', 'Càng Long', 'Huyện', '52');
INSERT INTO `district` VALUES ('607', 'Châu Thành', 'Huyện', '53');
INSERT INTO `district` VALUES ('614', 'Bắc Yên', 'Huyện', '54');
INSERT INTO `district` VALUES ('626', 'Bạc Liêu', 'Thành phố', '55');
INSERT INTO `district` VALUES ('633', 'Lục Yên', 'Huyện', '56');
INSERT INTO `district` VALUES ('642', 'Chiêm Hóa', 'Huyện', '57');
INSERT INTO `district` VALUES ('649', 'Điện Biên', 'Huyện', '58');
INSERT INTO `district` VALUES ('659', 'Lai Châu', 'Thị xã', '59');
INSERT INTO `district` VALUES ('678', 'Bắc Mê', 'Huyện', '61');
INSERT INTO `district` VALUES ('689', 'Ba Bể', 'Huyện', '62');
INSERT INTO `district` VALUES ('697', 'Bảo Lạc', 'Huyện', '63');

-- ----------------------------
-- Table structure for `document`
-- ----------------------------
DROP TABLE IF EXISTS `document`;
CREATE TABLE `document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `description` text CHARACTER SET utf8,
  `sort` int(3) DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT '1',
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of document
-- ----------------------------
INSERT INTO `document` VALUES ('1', 'Hướng dẫn tổng quan về quản trị website', '0', '<p><a href=\"http://giaodiendep.vn/huongdan/\">Xem video hướng dẫn</a></p>\r\n', '1', 'vi', '1');

-- ----------------------------
-- Table structure for `emails`
-- ----------------------------
DROP TABLE IF EXISTS `emails`;
CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of emails
-- ----------------------------
INSERT INTO `emails` VALUES ('9', 'trungkienbds@gmail.com', null, '1433398898', null, null);
INSERT INTO `emails` VALUES ('11', 'vinarise.vn@gmail.com', null, '1433996361', null, null);
INSERT INTO `emails` VALUES ('12', 'daibkz@gmail.com', null, '1470928353', null, null);
INSERT INTO `emails` VALUES ('13', 'dangtranmanh051187@gmail.com', null, '1506309969', null, null);
INSERT INTO `emails` VALUES ('14', 'buivananh.th@gmail.com', null, '1506331541', null, null);
INSERT INTO `emails` VALUES ('15', 'hocongtru95@gmail.com', null, '1527327769', null, null);
INSERT INTO `emails` VALUES ('16', 'daibkz@gmail.com', null, '1529463984', null, null);

-- ----------------------------
-- Table structure for `images`
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `sort` int(3) DEFAULT NULL,
  `cate` int(4) DEFAULT '0',
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=289 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('200', null, null, null, '_self', null, null, null, null, '0', null, null);
INSERT INTO `images` VALUES ('216', null, null, 'Video hướng dẫn lắp đặt camera 2', '_self', '12', 'upload/img/media/9f62009350cb11a54f10ffd7c56e1bca.png', '1', '2', '0', null, 'https://www.youtube.com/embed/QzqthoS3Xkw');
INSERT INTO `images` VALUES ('217', null, null, 'HƯỚNG DẪN LẮP ĐẶT HỆ THỐNG CAMERA QUAN SÁT', '_self', '12', 'upload/img/media/14fca64f4ab55bddda0d89209d9d8c80.png', '1', '3', '0', null, 'https://www.youtube.com/embed/JdrNRXs8KqI');
INSERT INTO `images` VALUES ('218', null, null, 'Hướng dẫn cấu hình Camera xem qua mạng 100% thành công', '_self', '12', 'upload/img/media/9f62009350cb11a54f10ffd7c56e1bca1.png', '1', '4', '0', null, 'https://www.youtube.com/embed/Q27P_jphAXU');
INSERT INTO `images` VALUES ('219', null, null, 'Video Clip Hướng dẫn sử dụng Camera IP Wifi không dây thông minh Webvision 6203', '_self', '12', 'upload/img/media/9f62009350cb11a54f10ffd7c56e1bca2.png', '1', '5', '0', null, 'https://www.youtube.com/embed/isA3QHA4wOM');
INSERT INTO `images` VALUES ('288', 'slide', '', 'dsagd', '_self', null, 'upload/img/banner/banner2.png', null, null, null, 'vi', '');

-- ----------------------------
-- Table structure for `inuser`
-- ----------------------------
DROP TABLE IF EXISTS `inuser`;
CREATE TABLE `inuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `hot` int(11) DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `alias` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1',
  `tag` text COLLATE utf8_unicode_ci,
  `time` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `focus` int(11) DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of inuser
-- ----------------------------
INSERT INTO `inuser` VALUES ('4', 'Rực Rỡ Mùa Hoa Tây Bắc', 'Tết Nguyên Đán 2015 là thời khắc quan trọng nhất trong năm, là khi mỗi gia đình Việt Nam có thời gian được trở về quây quần bên nhau và tưng bừng du xuân khắp mọi miền đất nước. Trong không khí xuân nồng ấm ấy, Vietravel hân hạnh gửi tới Quý khách hàng ngàn đường tour Việt Nam để gia đình bạn thỏa sức tận hưởng những ngày lễ vui tươi, hạnh phúc, đón chào năm mới An khang Thịnh Vượng. \n', '1', 'upload/img/ava1_hoanhai1.jpg', '<div>&nbsp;</div>\n\n<div>\n<p style=\"text-align:justify\"><strong>Ng&agrave;y 1 : TP.HCM - NỘI B&Agrave;I (H&Agrave; NỘI) &ndash; ĐỀN H&Ugrave;NG - NGHĨA LỘ Số bữa ăn: 3 bữa&nbsp;</strong></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://travel.com.vn/Images/tour/tfd_141103_mien%20bac%20-%20den%20hung.jpg\" style=\"border:0px; box-sizing:border-box; height:458px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">Qu&yacute; kh&aacute;ch tập trung tại cột số 04 ga đi Trong Nước - S&acirc;n bay T&acirc;n Sơn Nhất để hướng dẫn l&agrave;m thủ tục cho Qu&yacute; kh&aacute;ch đ&aacute;p chuyến bay đi H&agrave; Nội. Xe Vietravel đ&oacute;n đo&agrave;n tại s&acirc;n bay Nội B&agrave;i, khởi h&agrave;nh đi Y&ecirc;n B&aacute;i. Tr&ecirc;n đường đi Qu&yacute; kh&aacute;ch gh&eacute; Ph&uacute; Thọ viếng Đền H&ugrave;ng, đến nơi, Qu&yacute; kh&aacute;ch l&agrave;m lễ d&acirc;ng hương đất tổ, tham quan đền Thượng, đền Trung, đền Hạ, Giếng Ngọc, Lăng vua H&ugrave;ng, tự do chụp ảnh mua sắm qu&agrave; lưu niệm. Đo&agrave;n tiếp tục khởi h&agrave;nh đi Nghĩa Lộ, nhận ph&ograve;ng kh&aacute;ch sạn nghỉ ngơi. Buổi tối, Qu&yacute; kh&aacute;ch thưởng thức chương tr&igrave;nh biểu diễn m&uacute;a X&ograve;e, giao lưu v&agrave; t&igrave;m hiểu n&eacute;t văn h&oacute;a đặc sắc của d&acirc;n tộc Th&aacute;i. Nghỉ đ&ecirc;m tại Nghĩa Lộ.</p>\n\n<p style=\"text-align:justify\"><strong>Ng&agrave;y 2 : NGHĨA LỘ - M&Ugrave; CANG CHẢI - SAPA (Số bữa ăn: 3 bữa)</strong></p>\n\n<p style=\"text-align:center\"><strong><img alt=\"\" src=\"https://travel.com.vn/Images/tour/tfd_141103_sapa%20-%20muong%20hoa%202.jpg\" style=\"border:0px; box-sizing:border-box; height:408px; vertical-align:middle; width:650px\" /></strong></p>\n\n<p style=\"text-align:justify\">Trả ph&ograve;ng kh&aacute;ch sạn, đo&agrave;n khởi h&agrave;nh đi M&ugrave; Cang Chải, ngang qua T&uacute; Lệ, Qu&yacute; kh&aacute;ch sẽ ngửi được m&ugrave;i hương thoang thoảng theo gi&oacute; bảng lảng tr&ecirc;n m&aacute;i nh&agrave; của &ldquo;cơm mới&rdquo;, nơi đ&acirc;y nổi tiếng với x&ocirc;i nếp, cốm kh&ocirc;. Đến Đ&egrave;o Khau Phạ Qu&yacute; kh&aacute;ch dừng chụp ảnh v&agrave; ngắm nh&igrave;n Bản L&igrave;m M&ocirc;ng xinh đẹp tọa lạc dưới ch&acirc;n đ&egrave;o. Đ&acirc;y l&agrave; Bản của d&acirc;n tộc M&ocirc;ng v&agrave; l&agrave; nơi c&oacute; ruộng l&uacute;a đẹp nhất M&ugrave; Cang Chải. Qua đ&egrave;o Khau Phạ v&agrave;o địa phận M&ugrave; Cang Chải, Qu&yacute; kh&aacute;ch sẽ bị m&ecirc; hoặc bởi vẻ đẹp h&uacute;t hồn của cung đường ruộng bậc thang (Nổi tiếng tại 3 x&atilde;: La P&aacute;n Tẩn, Chế Cu Nha v&agrave; Zế Xu Ph&igrave;nh). Đo&agrave;n chi&ecirc;m ngưỡng những thung lũng rộng h&uacute;t tầm mắt, c&aacute;c thửa ruộng tầng tầng lớp lớp lượn s&oacute;ng theo sườn n&uacute;i, ngọn n&uacute;i n&agrave;y nối tiếp ngọn n&uacute;i kh&aacute;c. Qu&yacute; kh&aacute;ch c&oacute; thể tham quan v&agrave; thưởng ngoạn c&aacute;c giai đoạn của m&ugrave;a l&uacute;a: m&ugrave;a nước đổ &oacute;ng &aacute;nh tr&ecirc;n c&aacute;c triền n&uacute;i (th&aacute;ng 2-3), m&ugrave;a cấy l&uacute;a (th&aacute;ng 5), m&ugrave;a l&uacute;a non (th&aacute;ng 6-7) v&agrave; đẹp nhất l&agrave;m m&ugrave;a l&uacute;a ch&iacute;n hay c&ograve;n lại l&agrave; m&ugrave;a v&agrave;ng (th&aacute;ng 9-10). Cũng ch&iacute;nh bởi vẻ đẹp m&ecirc; l&ograve;ng người v&agrave;o m&ugrave;a l&uacute;a ch&iacute;n m&agrave; Ruộng Bậc Thang ở ba x&atilde; n&agrave;y đ&atilde; được xếp hạng Di t&iacute;ch Quốc Gia năm 2007. Đến thị trấn M&ugrave; Cang Chải, Qu&yacute; kh&aacute;ch ăn trưa, nghỉ ngơi. Chiều đo&agrave;n khởi h&agrave;nh đi Sa Pa, tr&ecirc;n đường đi Qu&yacute; kh&aacute;ch dừng ch&acirc;n ngắm to&agrave;n cảnh đồi ch&egrave; T&acirc;n Uy&ecirc;n thơ mộng v&agrave; tiếp tục sẽ được chi&ecirc;m ngưỡng phong cảnh n&uacute;i rừng T&acirc;y Bắc h&ugrave;ng vĩ tr&ecirc;n Đ&egrave;o &Ocirc; Quy Hồ - Ranh giới giữa 2 tỉnh L&agrave;o Cai v&agrave; Lai Ch&acirc;u uốn lượn quanh d&atilde;y Ho&agrave;ng Li&ecirc;n c&ograve;n gọi l&agrave; khu vực Cổng Trời. Đến Sa Pa, nhận ph&ograve;ng kh&aacute;ch sạn nghỉ ngơi. Buổi tối, Qu&yacute; kh&aacute;ch tự do tham quan phố n&uacute;i v&agrave; thưởng thức những m&oacute;n ăn đặc sản tại nơi đ&acirc;y. Nghỉ đ&ecirc;m tại Sa Pa</p>\n\n<p style=\"text-align:justify\"><strong>Ng&agrave;y 3 : SAPA - LAI CH&Acirc;U (Số bữa ăn: 3 bữa)</strong></p>\n\n<p style=\"text-align:center\"><strong><img alt=\"\" src=\"https://travel.com.vn/Images/tour/tfd_141103_sapa%20trong%20suong%201.jpg\" style=\"border:0px; box-sizing:border-box; height:436px; vertical-align:middle; width:650px\" /></strong></p>\n\n<p style=\"text-align:justify\">Qu&yacute; kh&aacute;ch tham quan v&agrave; chinh phục N&uacute;i H&agrave;m Rồng, thăm Vườn Lan khoe sắc, Vườn Hoa Trung T&acirc;m, ngắm N&uacute;i Phanxipăng h&ugrave;ng vĩ, Cổng Trời, Đầu Rồng Thạch L&acirc;m, S&acirc;n M&acirc;y. Đo&agrave;n tự do ngắm cảnh v&agrave; chụp ảnh thị trấn Sapa trong sương. Trả ph&ograve;ng kh&aacute;ch sạn, ăn trưa. Chiều Qu&yacute; kh&aacute;ch tham quan Th&aacute;c Bạc - D&ograve;ng nước trắng x&oacute;a chảy từ độ cao tr&ecirc;n 200m v&agrave;o d&ograve;ng suối dưới thung lũng &Ocirc; Quy Hồ, tạo n&ecirc;n &acirc;m thanh n&uacute;i rừng đầy ấn tượng, tiếp tục tham quan Lao Chải, Tả Van hoặc Tả Ph&igrave;n (t&ugrave;y điều kiện thực tế). Về đến Lai Ch&acirc;u, Qu&yacute; kh&aacute;ch nhận ph&ograve;ng kh&aacute;ch sạn. Nghỉ đ&ecirc;m tại Lai Ch&acirc;u.</p>\n\n<p style=\"text-align:justify\"><strong>Ng&agrave;y 4 : LAI CH&Acirc;U - PHONG THỔ - MƯỜNG LAY - ĐIỆN BI&Ecirc;N (Số bữa ăn: 3 bữa)</strong></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://travel.com.vn/Images/tour/tfd_140929_du-lich-tay-bac.jpg\" style=\"border:0px; box-sizing:border-box; height:432px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">Đo&agrave;n trả ph&ograve;ng ăn s&aacute;ng, khởi h&agrave;nh đi Điện Bi&ecirc;n, tr&ecirc;n đường ngắm cảnh rừng n&uacute;i T&acirc;y Bắc dọc theo d&ograve;ng s&ocirc;ng Nậm Na v&agrave; v&ugrave;ng ngập nước do đập nh&agrave; m&aacute;y Thủy điện Sơn La d&acirc;ng l&ecirc;n tại ng&atilde; ba s&ocirc;ng: s&ocirc;ng Đ&agrave;, s&ocirc;ng Nậm Na v&agrave; s&ocirc;ng Nậm Rốm. Đến Mường L&acirc;y ăn trưa. Đo&agrave;n tiếp tục khởi h&agrave;nh đến Điện Bi&ecirc;n, Qu&yacute; kh&aacute;ch tham quan Bảo t&agrave;ng Điện Bi&ecirc;n Phủ - Được x&acirc;y dựng v&agrave;o năm 1984 nh&acirc;n dịp kỷ niệm 30 năm chiến thắng lịch sử Điện Bi&ecirc;n Phủ, viếng Nghĩa trang liệt sĩ đồi A1, thăm Đồi A1, Hầm sở chỉ huy qu&acirc;n đội Ph&aacute;p - Tướng Đờ C&aacute;t (De Castries). Nghỉ đ&ecirc;m tại Điện Bi&ecirc;n. Nhận ph&ograve;ng kh&aacute;ch sạn, ăn tối v&agrave; nghỉ đ&ecirc;m tại Điện Bi&ecirc;n</p>\n\n<p style=\"text-align:justify\"><strong>Ng&agrave;y 5 : ĐIỆN BI&Ecirc;N - SƠN LA - MỘC CH&Acirc;U (Số bữa ăn: 3 bữa)</strong></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://travel.com.vn/Images/tour/tfd_140905_Doi%20che%20Moc%20Chau.jpg\" style=\"border:0px; box-sizing:border-box; height:424px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">Trả ph&ograve;ng kh&aacute;ch sạn, đo&agrave;n khởi h&agrave;nh về Sơn La. Tr&ecirc;n đường đi, Qu&yacute; kh&aacute;ch sẽ được chi&ecirc;m ngưỡng phong cảnh n&uacute;i rừng T&acirc;y Bắc h&ugrave;ng vĩ tr&ecirc;n đỉnh Đ&egrave;o Pha Đin - Một trong &quot;tứ đại đ&egrave;o&quot; v&ugrave;ng T&acirc;y Bắc v&agrave; được xếp c&ugrave;ng nh&oacute;m 6 con đ&egrave;o g&acirc;y ấn tượng nhất Việt Nam. Đến Sơn La, Qu&yacute; kh&aacute;ch ăn trưa. Sau đ&oacute;, Qu&yacute; kh&aacute;ch khởi h&agrave;nh về Mộc Ch&acirc;u. Đo&agrave;n khởi h&agrave;nh tham quan Th&aacute;c Dải Yếm - C&ograve;n c&oacute; t&ecirc;n gọi l&agrave; Th&aacute;c N&agrave;ng, nhằm v&iacute; vẻ đẹp mềm mại, h&igrave;nh ảnh quyến rũ của th&aacute;c nước như xu&acirc;n sắc của người con g&aacute;i tuổi trăng tr&ograve;n. Sau đ&oacute; tham quan Đồi Ch&egrave; Mộc Ch&acirc;u - Đứng tr&ecirc;n đồi ch&egrave; du kh&aacute;ch sẽ cảm nhận được l&agrave;n kh&ocirc;ng kh&iacute; m&aacute;t lạnh trong l&agrave;nh, tận mắt thấy những l&agrave;n sương bồng bềnh tr&ocirc;i, những đường ch&egrave; chạy v&ograve;ng quanh đồi được sắp đặt th&agrave;nh h&agrave;ng như những thửa ruộng bậc thang xanh ngắt cứ trải d&agrave;i bất tận. Qu&yacute; kh&aacute;ch dừng mua sắm đặc sản nổi tiếng được chế biến từ sữa b&ograve; tươi nổi tiếng của Mộc Ch&acirc;u về l&agrave;m qu&agrave;. Đo&agrave;n về kh&aacute;ch sạn nhận ph&ograve;ng, nghỉ ngơi. Nghỉ đ&ecirc;m tại Mộc Ch&acirc;u.</p>\n\n<p style=\"text-align:justify\"><strong>Ng&agrave;y 6 : MỘC CH&Acirc;U - MAI CH&Acirc;U - H&Ograve;A B&Igrave;NH - S&Acirc;N BAY NỘI B&Agrave;I (H&Agrave; NỘI) (Số bữa ăn: 2 bữa (s&aacute;ng, trưa))</strong></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://travel.com.vn/Images/tour/tfd_141103_moc%20chau%20-%20hoa%20cai.jpg\" style=\"border:0px; box-sizing:border-box; height:346px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">Ăn s&aacute;ng tại kh&aacute;ch sạn, trả ph&ograve;ng. Đo&agrave;n khởi h&agrave;nh đi Mai Ch&acirc;u - H&ograve;a B&igrave;nh, tham quan Bản L&aacute;c Mai Ch&acirc;u - T&igrave;m hiểu nh&agrave; s&agrave;n, phong tục tập qu&aacute;n, c&aacute;ch kinh doanh du lịch loại h&igrave;nh home stay của b&agrave; con người Th&aacute;i nơi đ&acirc;y. Đo&agrave;n khởi h&agrave;nh về H&ograve;a B&igrave;nh ăn trưa. Đo&agrave;n khởi h&agrave;nh về H&ograve;a B&igrave;nh ăn trưa. Sau đ&oacute;, khởi h&agrave;nh về H&agrave; Nội, xe đưa Qu&yacute; kh&aacute;ch ra s&acirc;n bay Nội B&agrave;i đ&aacute;p chuyến bay về Tp.HCM. Chia tay Qu&yacute; kh&aacute;ch v&agrave; kết th&uacute;c chương tr&igrave;nh du lịch tại s&acirc;n bay T&acirc;n Sơn Nhất</p>\n</div>\n', 'ruc-ro-mua-hoa-tay-bac', '0', '0', '1446786194', '22', '0', '0', '', '', '');
INSERT INTO `inuser` VALUES ('5', 'Giấc mộng hoa phương Bắc', 'Đất trời đã vào xuân, non cao miền Bắc bừng sáng trong vẻ đẹp mê đắm của rừng hoa thắm sắc ẩn hiện trong sương khói vấn vương. Những bước chân phiêu du trên núi ngàn cũng rộn rã hơn, chan hòa cùng nét tươi mới giữa đất trời nở hoa. Tour Tết, Trong nước', '1', 'upload/img/mua-hoa-xuan-tay-bac_1.jpg', '<div>&nbsp;</div>\n\n<div>\n<p style=\"text-align: center;\"><img alt=\"\" src=\"http://www.vietravel.com.vn/Images/inuserPicture/mua-hoa-xuan-tay-bac_1.jpg\" style=\"border:0px; box-sizing:border-box; height:441px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">nhiều lần lỡ hẹn, t&ocirc;i cũng đặt ch&acirc;n đến miền rẻo cao phương Bắc với thật nhiều h&aacute;o hức. Qu&atilde;ng đường đi qua&nbsp; Sapa, Điện Bi&ecirc;n, Sơn La, Cao Bằng, Lạng Sơn&hellip; dường như ngắn lại bởi ai cũng say sưa ngắm những cung đường bạt ng&agrave;n hoa đ&agrave;o, hoa mận, hoa mơ. Hoa nở tr&agrave;n tr&ecirc;n triền đồi, lấp l&oacute; ven đường, hồn nhi&ecirc;n thả bức r&egrave;m trước s&acirc;n nh&agrave;&hellip; đẹp đến nỗi kh&ocirc;ng một m&aacute;y ảnh &ldquo;khủng&rdquo; n&agrave;o c&oacute; thể ghi lại trọn vẹn.</p>\n\n<p style=\"text-align: center;\"><img alt=\"\" src=\"http://www.vietravel.com.vn/Images/inuserPicture/mua-hoa-xuan-tay-bac_6.jpg\" style=\"border:0px; box-sizing:border-box; height:433px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">C&oacute; l&uacute;c hoa phủ hồng cả sườn n&uacute;i, khiến kh&aacute;ch l&atilde;ng du ngất ng&acirc;y chẳng muốn dời ch&acirc;n. Một cơn gi&oacute; thoảng qua, khung cảnh bỗng h&oacute;a th&agrave;nh cơn mưa hoa lất phất. Chắt chiu nhựa sống qua năm d&agrave;i th&aacute;ng rộng, hội tụ đủ tinh t&uacute;y của đất trời để mỗi độ xu&acirc;n về th&acirc;n c&acirc;y x&ugrave; x&igrave; ấy lại nảy lộc đơm hoa sưởi ấm cả n&uacute;i rừng. Những c&aacute;nh đ&agrave;o phai T&acirc;y Bắc hồng phớt, mỏng manh m&agrave; l&agrave;n hương lại dịu d&agrave;ng, thanh tao đến lạ. Đ&ocirc;ng Bắc lại tự h&agrave;o với n&eacute;t ki&ecirc;u sa rực rỡ của rừng hoa đ&agrave;o b&iacute;ch lộng lẫy c&oacute; c&aacute;nh d&agrave;y, to, đủ sắc đỏ, hồng, trắng&hellip;</p>\n\n<p style=\"text-align: center;\"><img alt=\"\" src=\"http://www.vietravel.com.vn/Images/inuserPicture/mua-hoa-xuan-tay-bac_4.jpg\" style=\"border:0px; box-sizing:border-box; height:472px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">Ven đường đi, h&ograve;a c&ugrave;ng mu&ocirc;n sắc hoa đ&agrave;o b&iacute;ch, đ&agrave;o phai l&agrave; n&eacute;t đẹp hoang d&atilde; của những lo&agrave;i hoa dại t&iacute;m ng&aacute;t, v&agrave;ng rực cả khoảng trời. Đến n&uacute;i N&agrave;ng T&ocirc; Thị, động Tam Thanh, cảm x&uacute;c của t&ocirc;i gần như vỡ &ograve;a khi được chi&ecirc;m ngưỡng những đ&oacute;a hoa đ&agrave;o trắng muốt như tuyết, c&acirc;y đ&agrave;o gh&eacute;p hội tụ đủ ba m&agrave;u trắng - hồng - đỏ rất ấn tượng.</p>\n\n<p style=\"text-align: center;\"><img alt=\"\" src=\"http://www.vietravel.com.vn/Images/inuserPicture/mua-hoa-xuan-tay-bac_3_1.jpg\" style=\"border:0px; box-sizing:border-box; height:975px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">Hoa kh&ocirc;ng chỉ t&ocirc; điểm cho n&uacute;i rừng m&agrave; c&ograve;n mang cả kh&ocirc;ng gian văn h&oacute;a v&ugrave;ng cao đến với mọi người. T&ocirc;i cứ nhớ m&atilde;i nhịp ch&acirc;n vui của ch&agrave;ng trai bản xuống chợ ng&agrave;y xu&acirc;n m&agrave; tr&ecirc;n vai lắc lư một c&agrave;nh đ&agrave;o thắm. Những c&ocirc; g&aacute;i Dao, M&ocirc;ng v&aacute;y xanh v&aacute;y đỏ tỏa s&aacute;ng dưới hoa xu&acirc;n v&agrave; bọn trẻ con mắt trong veo, n&ocirc; đ&ugrave;a hồn nhi&ecirc;n tr&ecirc;n c&acirc;y mận thật đ&aacute;ng y&ecirc;u l&agrave;m sao!</p>\n\n<p style=\"text-align: center;\"><img alt=\"\" src=\"http://www.vietravel.com.vn/Images/inuserPicture/mua-hoa-xuan-tay-bac_2_1.jpg\" style=\"border:0px; box-sizing:border-box; height:894px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">Chỉ cần như thế cũng b&otilde; c&ocirc;ng cho một chuyến ngao du sơn thủy, s&aacute; g&igrave; n&uacute;i cao hay đ&egrave;o vắng, chỉ cần v&aacute;c ba l&ocirc; l&ecirc;n đường, ta lại sở hữu m&ugrave;a xu&acirc;n thi vị cho ri&ecirc;ng m&igrave;nh. Hoa nở khắp đất trời, hoa nở trong l&ograve;ng người để t&ocirc;i m&atilde;i nhung nhớ về miền rẻo cao phương Bắc. Đ&oacute; ch&iacute;nh l&agrave; những x&uacute;c cảm đầu năm thi&ecirc;ng li&ecirc;ng v&agrave; rất đỗi tự h&agrave;o về qu&ecirc; hương m&agrave; kh&ocirc;ng h&agrave;nh tr&igrave;nh n&agrave;o c&oacute; được.</p>\n</div>\n', 'giac-mong-hoa-phuong-bac', '0', '0', '1446792582', '22', '0', '0', '', '', '');
INSERT INTO `inuser` VALUES ('6', 'Train Ticket', 'Operated by national carrier Vietnam Railways.Travelling in an air-con sleeping berth and of course, there’s some spectacular scenery to lap up too. There are four main ticket classes: hard seat, soft seat, hard sleeper and soft sleeper. These are also split into air-con and non air-con options. Presently, air-con is only available on the faster express trains. Hard-seat class is usually packed and tolerable for day travel, but expect plenty of cigarette smoke. Ticket prices vary depending on the train; the fastest trains are more expensive. Aside from the main HCMC–Hanoi run, three rail-spur lines link Hanoi with the other parts of northern Vietnam. A third runs northwest to Lao Cai (Sapa).', '0', 'upload/img/ticket.jpg', '', 'train-ticket', '0', '0', '1447426430', '23', '0', '0', '', '', '');
INSERT INTO `inuser` VALUES ('7', 'Train North to South', 'Everyday departure with trains number: Trains SE1-SE6: Soft sleepers (4-berth), hard sleepers (6-berth), soft class seats (all air-con). TN3-TN10: Soft sleepers (air-con), hard sleepers (air-con & non-air-con), soft seats (a/c & non-a/c), hard seats (non-air-con).', '0', 'upload/img/tk1.jpg', '<span style=\"color:rgb(85, 85, 85); font-family:arial\">Unit Price: US Dollar (US$); A/C: Air-conditioning.</span><br />\n<span style=\"color:rgb(85, 85, 85); font-family:arial\">Child&#39;s fare: under 5 years: free of charge if sharing bed with parent; 5 years/up: adult rate.</span><br />\n<span style=\"color:rgb(85, 85, 85); font-family:arial\">Please note: 20% of the amount will be charged in case of cancellation for any ticket.</span><br />\n&nbsp;\n<div>&nbsp;</div>\n\n<div>\n<table style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(223, 223, 223); color:rgb(96, 96, 96); font-family:arial; font-size:17.6px; height:105px; line-height:normal; margin:0px auto; padding:0px; vertical-align:baseline; width:800px\">\n	<tbody>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">DEP FROM HANOI</td>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">SE NO. 1/ TIME TABLE</td>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">SE NO. 3/&nbsp;TIME TABLE</td>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">SE NO. 5/&nbsp;TIME TABLE</td>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">&nbsp;PRICE</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\">HA NOI</td>\n			<td style=\"text-align:center; vertical-align:baseline\">19.35</td>\n			<td style=\"text-align:center; vertical-align:baseline\">22.00</td>\n			<td style=\"text-align:center; vertical-align:baseline\">6.00</td>\n			<td style=\"text-align:center; vertical-align:baseline\">&nbsp;55 USD</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">HUE</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">8.48</td>\n			<td style=\"text-align:center; vertical-align:baseline\">10.27</td>\n			<td style=\"text-align:center; vertical-align:baseline\">19.55</td>\n			<td style=\"text-align:center; vertical-align:baseline\">&nbsp;55 USD</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">DA NANG&nbsp;</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">11.26</td>\n			<td style=\"text-align:center; vertical-align:baseline\">13.00</td>\n			<td style=\"text-align:center; vertical-align:baseline\">22.47</td>\n			<td style=\"text-align:center; vertical-align:baseline\">60 USD</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">&nbsp;NHA TRANG</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">21.14</td>\n			<td style=\"text-align:center; vertical-align:baseline\">22.04</td>\n			<td style=\"text-align:center; vertical-align:baseline\">8.35</td>\n			<td style=\"text-align:center; vertical-align:baseline\">80 USD</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">BINH THUAN&nbsp;</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">1.12</td>\n			<td style=\"text-align:center; vertical-align:baseline\">2.14</td>\n			<td style=\"text-align:center; vertical-align:baseline\">16.14</td>\n			<td style=\"text-align:center; vertical-align:baseline\">85 USD</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">&nbsp;SAI GON</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">4.39</td>\n			<td style=\"text-align:center; vertical-align:baseline\">5.20</td>\n			<td style=\"text-align:center; vertical-align:baseline\">16.05</td>\n			<td style=\"text-align:center; vertical-align:baseline\">100 USD<br />\n			&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n', 'train-north-to-south', '0', '0', '1447426503', '23', '0', '0', '', '', '');
INSERT INTO `inuser` VALUES ('8', 'Train to Sapa', 'The Ha Noi-Lao Cai trains runs every evening, departing from Ha Noi Train Station at Tran Quy Cap Street. Three run at night, and one makes a day trip. The following are the trains from Ha Noi to Lao Cai (PM: SP1, SP3 , SP7 ) and vice versa (PM: SP2, SP4 , SP8) daily. The daytime route offers only hard seats, whereas travelers can enjoy soft-sleepers, air-conditioned, four-berth cabins on the night trains. In the SP3 & SP4, there are 2 Victoria Carriages. In SP1 & SP2, there are Orient Express, Tulico Carriages, Friendly Carriages, Ratraco Carriages, and TSC Carriages, King Express Carriages, Royal Carriages. All of these are alternatives for tourists to Sapa from Hanoi.', '0', 'upload/img/tk2.jpg', '<p>Deluxe Train: Fansipan Express (SP1-SP2), Livitrans Express (SP1-SP2), Sapaly Expres (SP3-SP4)</p>\n\n<p>First Class Train: Orient Express (SP1-SP2), TSC Express ( SP1-SP2), Pumpkin Express train (SP1-SP2), VN Express Train ( SP3-SP4)</p>\n\n<p>&nbsp;</p>\n\n<table style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(223, 223, 223); color:rgb(96, 96, 96); font-family:arial; font-size:17.6px; height:105px; line-height:normal; margin:0px auto; padding:0px; vertical-align:baseline; width:800px\">\n	<tbody>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">HANOI - LAO CAI</td>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">DELUXE CABIN 4 BERTHS</td>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">\n			<p>FIRST CLASS 4 BERTHS</p>\n			</td>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">VIP CLASS 2 BERTHS</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">SP1: 21H40 - 5H30</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">30 USD</td>\n			<td style=\"text-align:center; vertical-align:baseline\">35 USD</td>\n			<td style=\"text-align:center; vertical-align:baseline\">70 USD</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">SP1: 20H00 - &nbsp;6H10</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">30 USD</td>\n			<td style=\"text-align:center; vertical-align:baseline\">35 USD</td>\n			<td style=\"text-align:center; vertical-align:baseline\">70 USD</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">SP1: 20H17 - &nbsp;4H35</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">30 USD</td>\n			<td style=\"text-align:center; vertical-align:baseline\">35 USD</td>\n			<td style=\"text-align:center; vertical-align:baseline\">70 USD</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p>The prices may change due to exchange rate or season; therefore, please confirm exact price when you make the final booking with payment. Please contact by email to have more information. Email:&nbsp;<a href=\"mailto:info@vietnampremiertravel.com\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: Arial; color: rgb(34, 34, 34);\">info@vietnampremiertravel.com</a>&nbsp;/ Tel: (+84 4) 3926 2866</p>\n', 'train-to-sapa', '0', '0', '1447426437', '23', '0', '0', '', '', '');
INSERT INTO `inuser` VALUES ('9', 'Tàu Bắc - Nam', 'Khởi hành hàng ngày với tàu số : Xe lửa SE1 - SE6 : tà vẹt mềm ( 4 bến ) , tà vẹt cứng ( 6 bến ) , ghế hạng mềm ( tất cả các máy con) . TN3 - TN10 : tà vẹt mềm ( máy lạnh ) , tà vẹt cứng ( máy lạnh & không khí -con) , ghế ngồi mềm (a / c và phi - a / c ) , ghế ngồi cứng ( không máy lạnh ) .', '0', 'upload/img/tk11.jpg', '<pre>\n<span style=\"font-size:14px\">Đơn gi&aacute; : Dollar Mỹ (US $ ) ; A / C : Điều h&ograve;a kh&ocirc;ng kh&iacute; .\nGi&aacute; v&eacute; cho trẻ em: dưới 5 tuổi: miễn ph&iacute; nếu ngủ chung giường với bố mẹ ; 5 năm / up : tỷ lệ người lớn .\nXin lưu &yacute; : 20 % của số tiền sẽ được t&iacute;nh trong trường hợp hủy cho bất kỳ v&eacute; .</span></pre>\n', 'tau-bac-nam', '0', '0', '1446800384', '22', '0', '0', '', '', '');
INSERT INTO `inuser` VALUES ('10', 'teafdsagd', 'gdasgdsg', '0', null, 'sagdsagdsagd', 'teafdsagd', 'en', '0', '1453861931', '0', '0', '0', '', '', '');
INSERT INTO `inuser` VALUES ('11', 'Dàn xe đời mới - Đa dạng chủng loại', 'Chúng tôi cho thuê xe từ những dòng xe giá rẻ đến những dòng xe cao cấp, từ 4 chỗ đến xe 12 chỗ Dàn xe của chúng tôi luôn có bộ phận theo dõi, quản lý và bảo hành. Để đảm bảo trước khi đến đón khách, Xe luôn trong tình trạng sạch, đẹp và an toàn.', '0', 'upload/img/icon3.png', '', 'dan-xe-doi-moi-da-dang-chung-loai', 'vi', '0', '1453863158', '20', '0', '1', '', '', '');
INSERT INTO `inuser` VALUES ('12', 'Tài xế thân thiện và chuyên nghiệp', 'Các tài xế của chúng tôi được tuyển chọn khắt khe theo các tiêu chí. Lái xe an toàn, có kinh nghiệm, thông thạo tuyến đường và được công tu Training các kỹ năng phục vụ khách hàng. Tùy theo mục đích thuê xe và loại xe cũng như yêu cầu của quí khách', '0', 'upload/img/icon2.png', '', 'tai-xe-than-thien-va-chuyen-nghiep', 'vi', '0', '1453863170', '20', '0', '1', '', '', '');
INSERT INTO `inuser` VALUES ('13', 'Giá cho thuê xe tốt nhất trên thị trường', 'Qui trình và cách tính giá cũng như báo giá của chúng tôi luôn là mức giá tốt nhất trên thị trường. Chính vì vậy khi quí khách thuê xe của chúng tôi cũng có nghĩa quí khách đã có được mức giá tốt nhât trong những nhà cung cấp.', '0', 'upload/img/icon1.png', '', 'gia-cho-thue-xe-tot-nhat-tren-thi-truong', 'vi', '0', '1453863176', '20', '0', '1', '', '', '');
INSERT INTO `inuser` VALUES ('14', 'Hướng dẫn lái xe ô tô an toàn trên đường cao tốc', 'Trên đường cao tốc, người điều khiển phương tiện giao thông được phép lái xe với vận tốc tối đa cao hơn so với lái trên đường phố, đường làng và do đó tiết kiệm thời gian di chuyển hơn nhưng cũng tiềm ẩn nhiều rủi ro xảy ra tai nạn đáng tiếc nếu không tuân thủ đúng luật.', '0', 'upload/img/new1.jpg', '<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit; font-size:inherit\">Th&oacute;i quen h&agrave;ng ng&agrave;y khi l&aacute;i xe đ&ocirc;i khi đ&atilde; trở th&agrave;nh nguy&ecirc;n nh&acirc;n của những trường hợp tai nạn đ&aacute;ng tiếc khi tham gia giao th&ocirc;ng tr&ecirc;n đường cao tốc: chạy xe dưới tốc độ tối thiểu, kh&ocirc;ng giữ khoảng c&aacute;ch an to&agrave;n với xe ph&iacute;a trước, dừng/đỗ t&ugrave;y tiện, quay đầu xe&hellip; Nhưng lưu &yacute; sau sẽ gi&uacute;p bạn c&oacute; những chuyến đi an to&agrave;n c&ugrave;ng bạn b&egrave;, người th&acirc;n.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit; font-size:inherit\">&ndash; Ngo&agrave;i c&aacute;c vấn đề kỹ thuật đảm bảo an to&agrave;n cho xe &ocirc; t&ocirc;, đặc biệt phải lưu &yacute; đến lốp xe bởi khi chạy với tốc độ cao, nhiệt độ ngo&agrave;i trời cao, h&agrave;ng h&oacute;a chở nhiều&hellip;; do đ&oacute;, với những bộ lốp &ldquo;tuổi đời&rdquo; cao, m&ograve;n nhiều cần đặc biệt cẩn trọng (nổ lốp xe khi đang đi tốc độ cao l&agrave; một trong những nguy&ecirc;n nh&acirc;n phổ biến dẫn đến tai nạn).</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit; font-size:inherit\">&ndash; Đảm bảo tốc độ theo hệ thống biển b&aacute;o tr&ecirc;n đường, giảm tốc độ ph&ugrave; hợp ở những đoạn đường cong, c&oacute; nhiều phương tiện (cho d&ugrave; ở l&agrave;n đường kh&aacute;c) hoặc chướng ngại vật&hellip; Tr&aacute;nh nh&igrave;n tập trung v&agrave;o một điểm qu&aacute; l&acirc;u, đặc biệt c&aacute;c đoạn đường cong hay l&ecirc;n/xuống dốc (dễ dẫn đến trường hợp &ldquo;kh&oacute;a mục ti&ecirc;u&rdquo; khiến xe đi thẳng đến điểm đ&oacute;).</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit; font-size:inherit\">&nbsp;&ndash; Giữ khoảng c&aacute;ch an to&agrave;n với quy tắc 3 gi&acirc;y (Bạn nh&igrave;n xe ph&iacute;a trước chạy qua một vật cố định n&agrave;o đ&oacute; ở b&ecirc;n đường: cột đ&egrave;n, biển b&aacute;o&hellip; v&agrave; bắt đầu đếm&nbsp;ước lượng từ 1 đến 3, khoảng thời gian tưởng ứng đủ 3 gi&acirc;y). Nếu trời mưa hoặc tầm quan s&aacute;t bị ảnh hưởng, th&igrave; n&ecirc;n tăng l&ecirc;n 4-5 gi&acirc;y. H&atilde;y ch&uacute; &yacute; c&aacute;c biển chỉ dẫn lưu &yacute; khoảng c&aacute;ch 50 &ndash; 100 &ndash; 200m.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit; font-size:inherit\">&ndash;<span style=\"font-family:inherit; font-size:inherit\">&nbsp;</span><span style=\"font-family:inherit; font-size:inherit\">Kh&ocirc;ng bao giờ l&ugrave;i xe, quay đầu xe, đi ngược chiều tr&ecirc;n đường cao tốc</span>.<span style=\"font-family:inherit; font-size:inherit\">&nbsp;</span><span style=\"font-family:inherit; font-size:inherit\">Kh&ocirc;ng được cho xe &ocirc; t&ocirc; chạy ở l&agrave;n dừng xe khẩn cấp v&agrave; phần lề đường</span>.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit; font-size:inherit\">&ndash;<span style=\"font-family:inherit; font-size:inherit\">&nbsp;</span><span style=\"font-family:inherit; font-size:inherit\">Khi v&agrave;o hoặc ra khỏi đường cao tốc phải giảm tốc độ</span><span style=\"font-family:inherit; font-size:inherit\">&nbsp;</span>v&agrave;<span style=\"font-family:inherit; font-size:inherit\"><span style=\"font-family:inherit; font-size:inherit\">&nbsp;</span></span><span style=\"font-family:inherit; font-size:inherit\">nhường đường cho xe đi tr&ecirc;n l&agrave;n đường ch&iacute;nh</span>.<span style=\"font-family:inherit; font-size:inherit\"><span style=\"font-family:inherit; font-size:inherit\">&nbsp;</span></span><span style=\"font-family:inherit; font-size:inherit\">Chỉ được chuyển l&agrave;n đường ở những nơi cho ph&eacute;p</span>,<span style=\"font-family:inherit; font-size:inherit\">&nbsp;</span>khi chuyển l&agrave;n lu&ocirc;n ch&uacute; &yacute; ph&iacute;a sau v&agrave; lu&ocirc;n xi-nhan. Kh&ocirc;ng chuyển l&agrave;n kiểu cắt đầu xe kh&aacute;c v&agrave; chuyển nhiều l&agrave;n đường c&ugrave;ng một thời điểm.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit; font-size:inherit\">&ndash; Người điều khiển v&agrave; người ngồi trong xe &ocirc;t&ocirc; đều phải thắt d&acirc;y an to&agrave;n. Bởi khi lưu th&ocirc;ng với tốc độ cao (100km/h), th&igrave; thắt d&acirc;y an to&agrave;n cho mọi người tr&ecirc;n xe &ocirc; t&ocirc; l&agrave; việc cần thiết hơn bao giờ hết.</span></p>\r\n', 'huong-dan-lai-xe-o-to-an-toan-tren-duong-cao-toc', 'vi', '0', '1453864782', '22', '1', '0', '', '', '');
INSERT INTO `inuser` VALUES ('15', 'Gợi y 8 lộ trình về quê ăn tết tránh kẹt xe ở hà nội', '', '0', 'upload/img/new4.jpg', '', 'goi-y-8-lo-trinh-ve-que-an-tet-tranh-ket-xe-o-ha-noi', 'vi', '0', '1453864774', '22', '1', '0', '', '', '');
INSERT INTO `inuser` VALUES ('16', 'Hơn 2000 người tham gia hưởng ứng \"Năm an toàn giao thông\" 2016', '', '0', 'upload/img/new31.jpg', '', 'hon-2000-nguoi-tham-gia-huong-ung-nam-an-toan-giao-thong-2016', 'vi', '0', '1453864761', '22', '1', '0', '', '', '');
INSERT INTO `inuser` VALUES ('17', 'Tăng phí trả vé tàu để hạn chế \"cò\" vé chợ đen.', '', '0', 'upload/img/new2.jpg', '', 'tang-phi-tra-ve-tau-de-han-che-co-ve-cho-den', 'vi', '0', '1453864807', '22', '1', '0', '', '', '');

-- ----------------------------
-- Table structure for `inuser_category`
-- ----------------------------
DROP TABLE IF EXISTS `inuser_category`;
CREATE TABLE `inuser_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `focus` int(11) DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `tour` int(11) DEFAULT NULL,
  `sort` int(5) DEFAULT '1',
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of inuser_category
-- ----------------------------
INSERT INTO `inuser_category` VALUES ('27', 'Nguyễn công hoan', 'nguyen-cong-hoan', '<p><em>Seaside Resort g&acirc;y ấn tượng với t&ocirc;i nhất nhờ dịch vụ rất ho&agrave;n hảo v&agrave; chuy&ecirc;n nghiệp. Seaside Resort l&agrave; một kh&aacute;ch sạn với đội ngũ nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiệp, năng động, s&aacute;ng tạo, phong c&aacute;ch phục vụ v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng tốt. Hơn nữa ch&iacute;nh s&aacute;ch chăm s&oacute;c kh&aacute;ch h&agrave;ng nhiệt t&igrave;nh, chu đ&aacute;o ngay cả khi đ&atilde; ho&agrave;n th&agrave;nh hợp đồng.</em></p>\r\n', 'upload/img/inuser/avt.png', '0', '1', null, null, null, '9', 'vi', 'Big Boss');
INSERT INTO `inuser_category` VALUES ('28', 'Mrs bin', 'doctor', 'Seaside Resort impresses me most with its excellent service and professionalism. Seaside Resort is a hotel with professional staffs', 'upload/img/traveler_story111.png', '0', '1', '0', '0', '0', '1', 'en', 'doctor');
INSERT INTO `inuser_category` VALUES ('29', 'Nguyễn thành đạt', 'nguyen-thanh-dat', '<p>Thật tuyệt khi sử dụng dịch vụ tại Thăng Long, t&ocirc;i cảm thấy m&igrave;nh được phục vụ v&ocirc; c&ugrave;ng chu đ&aacute;o v&agrave; tận t&igrave;nh.Chắc chắn t&ocirc;i sẽ quay lại mua h&agrave;ng tại Thăng Long lần nữa.Ch&uacute;c Thăng Long ph&aacute;t triển mạnh mẽ hơn nữa, t&ocirc;i tin chắc điều đ&oacute;.</p>\r\n', 'upload/img/inuser/avt.png', '0', '1', null, null, null, '5', 'vi', 'VNPT Technology ');
INSERT INTO `inuser_category` VALUES ('30', 'Trưởng phòng HLC Group', 'truong-phong-hlc-group', '<p>&nbsp;</p>\r\n\r\n<p>Y&ecirc;u cầu của ch&uacute;ng t&ocirc;i l&agrave; mỗi ph&ograve;ng h&aacute;t phải l&agrave; một kh&ocirc;ng gian đẹp, một phong c&aacute;ch kh&aacute;ch nhau để những kh&aacute;ch h&agrave;ng muốn kh&aacute;m ph&aacute; khi đến với ch&uacute;ng t&ocirc;i họ lu&ocirc;n lu&ocirc;n thấy thoải m&aacute;i.</p>\r\n', 'upload/img/inuser/avt1.png', '0', '1', null, null, null, '10', 'vi', 'Phạm Minh Quân');

-- ----------------------------
-- Table structure for `inuser_to_category`
-- ----------------------------
DROP TABLE IF EXISTS `inuser_to_category`;
CREATE TABLE `inuser_to_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_inuser` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of inuser_to_category
-- ----------------------------
INSERT INTO `inuser_to_category` VALUES ('25', '1', '20');
INSERT INTO `inuser_to_category` VALUES ('29', '3', '22');
INSERT INTO `inuser_to_category` VALUES ('30', '2', '22');
INSERT INTO `inuser_to_category` VALUES ('32', '4', '22');
INSERT INTO `inuser_to_category` VALUES ('34', '5', '22');
INSERT INTO `inuser_to_category` VALUES ('38', '9', '22');
INSERT INTO `inuser_to_category` VALUES ('39', '6', '23');
INSERT INTO `inuser_to_category` VALUES ('40', '8', '23');
INSERT INTO `inuser_to_category` VALUES ('41', '7', '23');
INSERT INTO `inuser_to_category` VALUES ('50', '11', '20');
INSERT INTO `inuser_to_category` VALUES ('51', '12', '20');
INSERT INTO `inuser_to_category` VALUES ('52', '13', '20');
INSERT INTO `inuser_to_category` VALUES ('53', '16', '22');
INSERT INTO `inuser_to_category` VALUES ('54', '15', '22');
INSERT INTO `inuser_to_category` VALUES ('55', '14', '22');
INSERT INTO `inuser_to_category` VALUES ('56', '17', '22');

-- ----------------------------
-- Table structure for `invoices`
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datetime` int(11) DEFAULT NULL,
  `timeupdate` int(11) DEFAULT NULL,
  `customer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ward` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_birthday` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_create` int(11) DEFAULT NULL,
  `user_sale` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `total_price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `customer_pay` int(11) DEFAULT NULL,
  `customer_payted` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `time_buy` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of invoices
-- ----------------------------
INSERT INTO `invoices` VALUES ('40', 'HD40', '17/05/2018', '17:12', '1526490000', '1526551961', null, '18', null, null, null, null, null, null, null, '2', null, '', '358000', null, '450840', '0', '1', '1526551961', '0', '2', '2', '100000');

-- ----------------------------
-- Table structure for `invoices_detail`
-- ----------------------------
DROP TABLE IF EXISTS `invoices_detail`;
CREATE TABLE `invoices_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `price_imp` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `inv_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of invoices_detail
-- ----------------------------
INSERT INTO `invoices_detail` VALUES ('116', 'Tinh Chất Dưỡng Da 3 Trong 1 Chống Lão Hoá Innisfree Jeju Bamboo All-In-One Fluid 100ml', null, '1', '229000', '229000', null, null, '40', '95', null);
INSERT INTO `invoices_detail` VALUES ('115', 'Bộ Dưỡng Da Dùng Thử Innisfree Trà Xanh Green Tea Special Kit Set', null, '1', '129000', '129000', null, null, '40', '97', null);

-- ----------------------------
-- Table structure for `language`
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES ('1', 'vi', 'Tiếng Việt');
INSERT INTO `language` VALUES ('2', 'en', 'English');

-- ----------------------------
-- Table structure for `map_shopping`
-- ----------------------------
DROP TABLE IF EXISTS `map_shopping`;
CREATE TABLE `map_shopping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `tim_kiem` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `toa_domap` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `toa_dohienthi` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `diachi_shop` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` char(150) CHARACTER SET utf8 DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of map_shopping
-- ----------------------------
INSERT INTO `map_shopping` VALUES ('2', 'Chi nhánh camera siêu net tại Hà Nội', '168 Nguyễn Tuân - Thanh Xuân Hà Nội', '(20.998863, 105.80291809999994)', '20.998863, 105.80291809999994', '168 Nguyễn Tuân - Thanh Xuân Hà Nội', '0918.041616 - 0987.041616', 'vi');
INSERT INTO `map_shopping` VALUES ('5', 'Chi nhánh camera siêu net tại Hải Phòng', '52 Lê Quang Đạo - Nam Từ Liêm - Hà Nội', '', '', 'Số 66, Trường Chinh, Kiến An, Hải Phòng', '031 3603208', 'vi');
INSERT INTO `map_shopping` VALUES ('6', 'Chi nhánh camera siêu net tại TP. HCM', 'Tp HCM', '(10.7764745, 106.70088310000006)', '10.7764745, 106.70088310000006', '212/58 Thoại Ngọc Hầu, P. Phú Thạnh, Q. Tân Phú, TP. HCM', '08 39722693', 'vi');
INSERT INTO `map_shopping` VALUES ('7', 'Chi nhánh camera siêu net tại Yên Bái', 'Yên Bái', '(21.6837923, 104.4551361)', '21.6837923, 104.4551361', '168 Nguyễn Tuân - Yên Bái', '0918.041616 - 0987.041616', 'vi');
INSERT INTO `map_shopping` VALUES ('11', 'cừa hàng thời trang', 'cua hang so 23 ngo 229 cầu giấy hà nội', '(21.0477839, 105.79456129999994)', '21.0477839, 105.79456129999994', 'cua hang so 23 ngo 229 cầu giấy hà nội', '0988787654', 'vi');

-- ----------------------------
-- Table structure for `media`
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8,
  `title_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keyword_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `image` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of media
-- ----------------------------
INSERT INTO `media` VALUES ('1', 'album hè cắm trại 2018', '<p>nội dung m&ocirc; tả</p>\r\n', '<p>nội dung chi tiết</p>\r\n', 'Không gian nhà hàng', 'Không gian nhà hàng', 'Không gian nhà hàng', 'vi', '11', '1', null, null, '1', '0', 'upload/img/media/dia-diem-du-lich-54.jpg', '1', 'album-he-cam-trai-2018', '');
INSERT INTO `media` VALUES ('10', 'album anh  cam trại hè', '', '', '', '', '', 'vi', '11', '1', null, null, '2', '0', 'upload/img/media/dia-diem-du-lich-4.jpg', '1', 'album-anh-cam-trai-he', '');
INSERT INTO `media` VALUES ('11', 'up anh jpeg cha le khong duoc-12', '<p>m&ocirc;i tả</p>\r\n', '', '', '', '', 'vi', '1', null, null, '1', '3', '0', 'upload/img/media/1233.JPEG', '1', 'up-anh-jpeg-cha-le-khong-duoc-12', 't0WFOnwp3MM');

-- ----------------------------
-- Table structure for `media_category`
-- ----------------------------
DROP TABLE IF EXISTS `media_category`;
CREATE TABLE `media_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `coupon` tinyint(1) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description_seo` text CHARACTER SET utf8,
  `keyword_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `parent_id` int(11) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `left_right` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of media_category
-- ----------------------------
INSERT INTO `media_category` VALUES ('1', 'Hình ảnh', 'hinh-anh', '2', null, null, null, 'upload/img/media/anh1.jpg', 'Hình ảnh', 'gdsagds', null, 'vi', '<p>noi dung m&ocirc; tả</p>\r\n', '0', null, '1');
INSERT INTO `media_category` VALUES ('11', 'album anh nam 2019', 'album-anh-nam-2019', '5', '1', null, null, 'upload/img/media/dia-diem-du-lich-5.jpg', '', '', null, 'vi', '<p>m&ocirc; tả</p>\r\n', '1', null, '1');
INSERT INTO `media_category` VALUES ('10', 'album nam 2018', 'album-nam-2018', '4', '1', null, null, 'upload/img/media/anh.jpg', '', '', null, 'vi', '<p>noi dung m&ocirc; tả cho album</p>\r\n', '1', null, '1');
INSERT INTO `media_category` VALUES ('12', 'Hình ảnh hội nghị', 'hinh-anh-hoi-nghi', '6', '1', null, null, 'upload/img/media/dia-diem-du-lich-3.jpg', '', '', null, 'vi', '', '1', null, '1');

-- ----------------------------
-- Table structure for `media_images`
-- ----------------------------
DROP TABLE IF EXISTS `media_images`;
CREATE TABLE `media_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url` char(200) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of media_images
-- ----------------------------
INSERT INTO `media_images` VALUES ('1', 'anh so 1', '1', 'upload/img/media_multi/ae20248dc61407525e7a96a1b002c72b.jpg', null, null);
INSERT INTO `media_images` VALUES ('2', 'anh so 2', '1', 'upload/img/media_multi/67594498cb19b94e98cc1c2095c83c51.jpg', null, null);
INSERT INTO `media_images` VALUES ('4', 'anh so 4', '1', 'upload/img/media_multi/44bb59baff034000b0f46258088bf8b8.jpg', null, null);
INSERT INTO `media_images` VALUES ('5', 'anh so 5', '1', 'upload/img/media_multi/036d5e089f887f4687e3379500c8256d.jpg', null, null);
INSERT INTO `media_images` VALUES ('6', 'anh so 6', '1', 'upload/img/media_multi/fa02a841c335c7566a42548fe1c0083d.jpg', null, null);

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seturl` tinyint(2) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `module` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `home` tinyint(1) DEFAULT '0',
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1',
  `view_type` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'Giới thiệu', 'page/gioi-thieu.html', null, 'gioi-thieu', 'main', '', null, '0', '<p>introduction</p>\r\n', 'pages', '0', '0', '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('7', 'Liên hệ', 'contact', null, 'lien-he', 'main', '', null, '0', '', '0', '0', '5', '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('39', 'Trang chủ', 'trang-chu', 'upload/img/menus/img_top1.png', 'trang-chu', 'bottom_2', '', null, '0', '', '0', '0', null, '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('40', 'Giới thiệu', 'gioi-thieu', 'upload/img/menus/img_top2.png', 'gioi-thieu', 'bottom_2', '', null, '0', '', '0', '0', null, '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('41', 'Thông báo', 'thong-bao', 'upload/img/menus/img_top3.png', 'thong-bao', 'bottom_2', '', null, '0', '', '0', '0', null, '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('42', 'Thanh toán mua hàng', 'thanh-toan-mua-hang', 'upload/img/menus/img_top4.png', 'thanh-toan-mua-hang', 'bottom_2', '', null, '0', '', '0', '0', null, '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('43', 'Khuyến mãi', 'khuyen-mai', null, 'khuyen-mai', 'bottom_2', '', null, '0', '', '0', '0', null, '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('44', 'Góp ý', 'gop-y', null, 'gop-y', 'bottom_2', '', null, '0', '', '0', '0', null, '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('45', 'Liên hệ', 'lien-he', null, 'lien-he', 'bottom_2', '', null, '0', '', '0', '0', null, '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('46', 'Đặt hàng online', '#', 'upload/img/menus/a4.png', 'dat-hang-online', 'top', '', null, '0', '', '0', '0', '0', '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('47', 'Giao hàng tận nơi', '#', 'upload/img/menus/a3.png', 'giao-hang-tan-noi', 'top', '', null, '0', '', '0', '0', '1', '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('48', 'Hỗ trợ online', '#', 'upload/img/menus/a5.png', 'ho-tro-online', 'top', '', null, '0', '', '0', '0', '2', '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('55', 'Sản phẩm', 'danh-muc/noi-that-phong-ngu.html', null, 'san-pham', 'main', '', null, '0', '', 'products', '2', '1', '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('63', 'Tin tức', 'danh-muc-tin/tin-tuc.html', null, 'tin-tuc', 'main', '', null, '0', '', 'news', '1', '2', '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('71', 'home', 'home', null, 'home', 'main', '', null, '0', '', '0', '0', '0', '0', 'en', null, null);
INSERT INTO `menu` VALUES ('72', 'home 2', 'home-2', null, 'home-2', 'main', '', null, '0', '', '0', '0', '1', '0', 'en', null, null);
INSERT INTO `menu` VALUES ('84', 'Chính sách bảo mật', 'chinh-sach-bao-mat', null, 'chinh-sach-bao-mat', 'bottom', '', null, '0', '', '0', '0', '1', '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('85', 'Chính sách bảo hành', 'chinh-sach-bao-hanh', null, 'chinh-sach-bao-hanh', 'bottom', '', null, '0', '', '0', '0', '0', '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('81', 'Dịch vụ', 'dich-vu', null, 'dich-vu', 'main', '', null, '0', '', '0', '0', '3', '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('82', 'Tuyển dụng', 'tuyen-dung', null, 'tuyen-dung', 'main', '', null, '0', '', '0', '0', '4', '0', 'vi', null, null);
INSERT INTO `menu` VALUES ('83', 'Tin tức 1', 'tin-tuc-1', null, 'tin-tuc-1', 'main', '', null, '63', '', '0', '0', '0', '0', 'vi', null, null);

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `hot` int(11) DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `alias` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1',
  `tag` text COLLATE utf8_unicode_ci,
  `time_update` int(8) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `focus` int(11) DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` text COLLATE utf8_unicode_ci,
  `video` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `button_1` int(11) NOT NULL,
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'Xu hướng thiết kế nội thât biệt thự hiện đại cao cấp', '<p>Ng&agrave;y nay với sự ph&aacute;t triển x&atilde; hội &nbsp;lớn mạnh, nhu cầu về vật chất cũng dần được n&acirc;ng cao. V&igrave; vậy m&agrave;, nhu cầu về nh&agrave; ở của mọi người cũng trở n&ecirc;n hiện đại. Đặc biệt hơn, với xu hướng x&acirc;y dựng c&aacute;c kiến tr&uacute;c hiện nay độc đ&aacute;o thiết kế biệt thự đang được xem &nbsp;l&agrave; xu hướng x&acirc;y dựng của rất nhiều người.&nbsp;</p>\r\n', null, 'upload/img/news/a9.jpg', '<p style=\"text-align:justify\"><span style=\"font-size:14px\">Ng&agrave;y nay với sự ph&aacute;t triển x&atilde; hội &nbsp;lớn mạnh, nhu cầu về vật chất cũng dần được n&acirc;ng cao. V&igrave; vậy m&agrave;, nhu cầu về nh&agrave; ở của mọi người cũng trở n&ecirc;n hiện đại. Đặc biệt hơn, với xu hướng x&acirc;y dựng c&aacute;c kiến tr&uacute;c hiện nay độc đ&aacute;o thiết kế biệt thự đang được xem &nbsp;l&agrave; xu hướng x&acirc;y dựng của rất nhiều người.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Với kinh nghiệm l&acirc;u năm trong lĩnh vực thiết kế nội thất biệt thự, Morehome lu&ocirc;n t&igrave;m kiếm v&agrave; đưa ra &yacute; tưởng xu hướng trong &nbsp;thiết kế biệt thự phong c&aacute;ch hiện đại. Thiết kế biệt thự hiện đại thể hiện được sự đẳng cấp của gia chủ c&oacute; n&eacute;t độc đ&aacute;o trong kiến tr&uacute;c kh&ocirc;ng thể thấy ở những mẫu thiết kế kh&aacute;c.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Kh&ocirc;ng những với c&oacute; diện t&iacute;ch kh&ocirc;ng gian rộng lớn, m&agrave; thiết kế biệt thự hiện đại c&ograve;n mang một phong c&aacute;ch thiết kế rất tinh tế độc đ&aacute;o, trong đ&oacute; c&oacute; sự kết hợp rất h&agrave;i h&ograve;a c&aacute;c giữa đường n&eacute;t, họa tiết nội thất rất tinh tế, từ trang nghi&ecirc;m đến lộng lẫy sang trọng. Gia chủ &nbsp;sẽ kh&ocirc;ng c&ograve;n kh&oacute; khăn g&igrave; trong việc chọn cho mẫu thiết kế biệt thự.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Thiết kế biệt thự hiện đại 2 tầng.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Xu hướng thiết kế biệt thự 2 tầng đang được xem l&agrave; xu hướng được lựa chọn nhiều hiện nay. Thiết kế biệt thự 2 tầng tuy kh&ocirc;ng lộng lẫy nhưng &nbsp;thiết kế n&agrave;y lại &nbsp;to&aacute;t l&ecirc;n một vẻ đẹp phương Đ&ocirc;ng. Song song đ&oacute; ch&iacute;nh l&agrave; sự &nbsp;mới lạ nhưng vẫn giữ được n&eacute;t truyền thống, vừa l&agrave; sự kết hợp n&eacute;t mới mẻ k&egrave;m với phong c&aacute;ch kiến tr&uacute;c hiện đại l&agrave;m n&ecirc;n &nbsp;một ng&ocirc;i biệt thự đẹp tinh tế. B&ecirc;n cạnh đ&oacute;, thiết kế biệt thự thể hiện sự th&acirc;n thiện gần gũi.</span></p>\r\n', 'xu-huong-thiet-ke-noi-that-biet-thu-hien-dai-cao-cap', 'vi', null, null, '1529477037', '1', null, null, '', '', '', '', null, '1', '0', '0');
INSERT INTO `news` VALUES ('2', 'Trang trí không gian nội thất biệt thự nhà phố', '<p>Thiết kế nội thất nh&agrave; phố đang l&agrave; chọn lựa cua nhiều gia đ&igrave;nh sinh sống tại c&aacute;c th&agrave;nh phố, vậy l&agrave;m sao c&oacute; thể trang tr&iacute; nội thất nh&agrave; phố một c&aacute;ch ph&ugrave; hợp v&agrave; h&agrave;i h&ograve;a nhất. Bạn h&atilde;y tham khảo b&agrave;i viết sau để c&oacute; thể chọn lựa &yacute; tưởng cho thiết kế nội thất nh&agrave; phố nh&eacute;!.</p>\r\n', null, 'upload/img/news/a10.jpg', '<p style=\"text-align:justify\"><span style=\"font-size:14px\">Thiết kế nội thất nh&agrave; phố đang l&agrave; chọn lựa cua nhiều gia đ&igrave;nh sinh sống tại c&aacute;c th&agrave;nh phố, vậy l&agrave;m sao c&oacute; thể trang tr&iacute; nội thất nh&agrave; phố một c&aacute;ch ph&ugrave; hợp v&agrave; h&agrave;i h&ograve;a nhất. Bạn h&atilde;y tham khảo b&agrave;i viết sau để c&oacute; thể chọn lựa &yacute; tưởng cho thiết kế nội thất nh&agrave; phố nh&eacute;!.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Thiết kế nội thất nh&agrave; phố phong c&aacute;ch hiện đại<br />\r\nKhi x&acirc;y dựng một thiết kế biệt thự nh&agrave; phố th&igrave; cần phải tu&acirc;n thủ theo một số quy chuẩn v&igrave; t&iacute;nh chất đặc trưng ri&ecirc;ng biệt của phong c&aacute;ch thiết kế n&agrave;y do c&oacute; diện t&iacute;ch hạn chế v&agrave; &iacute;t mặt tho&aacute;ng hơn.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Trang tr&iacute; kh&ocirc;ng gian nội thất biệt thự nh&agrave; phố</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch hiện đại cao cấp.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Trong kh&ocirc;ng gian của ph&ograve;ng kh&aacute;ch<br />\r\nPh&ograve;ng kh&aacute;ch sẽ thật ho&agrave;n hảo nếu bạn biết c&aacute;ch chọn nội thất cũng như m&agrave;u sắc cho kh&ocirc;ng gian tạo hiệu ứng mở rộng, d&ugrave;ng gam m&agrave;u trắng v&agrave; m&agrave;u n&acirc;u nhẹ nh&agrave;ng sẽ l&agrave;m hiệu ứng mở rộng kh&ocirc;ng gian.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Bạn c&oacute; thể chọn một bộ ghế sofa c&oacute; m&agrave;u đen kết hợp h&agrave;i h&ograve;a với những mảng tường mộc tuy đơn giản nhưng vẫn to&aacute;t l&ecirc;n vẻ đẹp hiện đại cho ph&ograve;ng kh&aacute;ch m&agrave; kh&ocirc;ng cần phải cầu kỳ. B&ecirc;n cạnh đ&oacute; bạn c&oacute; thể d&ugrave;ng chậu c&acirc;y, bức tranh nghệ thuật hoặc gương trang tr&iacute; cho kh&ocirc;ng gian th&ecirc;m phần sinh động hơn.</span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<span style=\"font-size:14px\">Kh&ocirc;ng gian của nh&agrave; bếp<br />\r\nĐược x&acirc;y dựng &nbsp;với gam m&agrave;u trắng chủ đạo bộ b&agrave;n ghế với chất liệu gỗ tự nhi&ecirc;n đ&atilde; l&agrave;m một điểm nhấn độc đ&aacute;o cho kh&ocirc;ng gian, ph&ograve;ng bếp h&igrave;nh chữ L kh&aacute; đơn giản l&agrave;m s&aacute;ng kh&ocirc;ng gian, thiết kế nội thất ph&ograve;ng bếp rất tiện dụng với c&aacute;c vật dụng được b&agrave;i tr&iacute; rất tiện nghi.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Trang tr&iacute; kh&ocirc;ng gian nội thất biệt thự nh&agrave; phố</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Ph&ograve;ng bếp với thiết kế hiện đại.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Điểm nhấn đẹp mắt cho kh&ocirc;ng gian đ&oacute; ch&iacute;nh l&agrave; b&oacute;ng đ&egrave;n m&agrave;u v&agrave;ng trang tr&iacute; trong ph&ograve;ng ăn tạo n&ecirc;n một sự ấm &aacute;p cho kh&ocirc;ng gian th&ecirc;m đẹp mắt hơn.</span></p>\r\n', 'trang-tri-khong-gian-noi-that-biet-thu-nha-pho', 'vi', null, null, '1529477034', '1', null, null, '', '', '', '', null, '1', '0', '0');
INSERT INTO `news` VALUES ('3', 'Trang trí nội thất cho không gian nhà ấn tượng', '<p>Cho d&ugrave; kh&ocirc;ng gian nh&agrave; bạn được thiết kế nội thất theo phong c&aacute;ch n&agrave;o th&igrave; cũng cần tạo n&ecirc;n sự ấn tượng để c&oacute; thể thu h&uacute;t c&aacute;c vị kh&aacute;ch khi bước v&agrave;o kh&ocirc;ng gian nh&agrave;. &nbsp;Để tạo được điểm nhấn cho kh&ocirc;ng gian th&igrave; bạn cần phải t&igrave;m hiểu tham khảo thật kỹ c&agrave;ng, khẳng định n&eacute;t độc đ&aacute;o ri&ecirc;ng biệt của kh&ocirc;ng gian nh&agrave; bạn so với những kh&ocirc;ng gian kh&aacute;c. H&atilde;y tham khảo những &yacute; tưởng sau đ&acirc;y về thiết kế nội thất cho kh&ocirc;ng gian thật sự độc đ&aacute;o v&agrave; đẳng cấp.</p>\r\n', null, 'upload/img/news/trang-tri-noi-that-cho-khong-gian-nha-an-tuong-3.jpeg', '<p style=\"text-align:justify\"><span style=\"font-size:14px\">Cho d&ugrave; kh&ocirc;ng gian nh&agrave; bạn được thiết kế nội thất theo phong c&aacute;ch n&agrave;o th&igrave; cũng cần tạo n&ecirc;n sự ấn tượng để c&oacute; thể thu h&uacute;t c&aacute;c vị kh&aacute;ch khi bước v&agrave;o kh&ocirc;ng gian nh&agrave;. &nbsp;Để tạo được điểm nhấn cho kh&ocirc;ng gian th&igrave; bạn cần phải t&igrave;m hiểu tham khảo thật kỹ c&agrave;ng, khẳng định n&eacute;t độc đ&aacute;o ri&ecirc;ng biệt của kh&ocirc;ng gian nh&agrave; bạn so với những kh&ocirc;ng gian kh&aacute;c. H&atilde;y tham khảo những &yacute; tưởng sau đ&acirc;y về thiết kế nội thất cho kh&ocirc;ng gian thật sự độc đ&aacute;o v&agrave; đẳng cấp.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Thiết kế nội thất ph&ograve;ng kh&aacute;ch<br />\r\nNếu l&agrave; kh&ocirc;ng gian của ph&ograve;ng kh&aacute;ch th&igrave; kh&aacute; l&agrave; thuận lợi trong việc tạo điểm nhấn, để thể hiện đẳng cấp của bạn trong thiết kế nội thất ph&ograve;ng kh&aacute;ch th&ecirc;m sang trọng thấy được gu thẩm mỹ cũng như t&iacute;nh ri&ecirc;ng biệt của gia chủ trong kh&ocirc;ng gian n&agrave;y, bằng những nội thất th&acirc;n thuộc như bộ ghế sofa, điểm v&agrave;o những chiếc gối c&oacute; họa tiết độc đ&aacute;o hoặc gắn v&agrave;o một bức tranh treo tường để tăng sự thu h&uacute;t cho nơi n&agrave;y, kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch l&agrave; một nơi kh&aacute; quan trọng, trong việc thiết kế nội thất cần phải chọn lựa thật cẩn thận c&aacute;c chi tiết, nội thất phải được kết hợp h&agrave;i h&ograve;a. Ngo&agrave;i ra c&ograve;n phải được x&acirc;y dựng tạo n&ecirc;n bầu kh&ocirc;ng kh&iacute; thật tho&aacute;ng m&aacute;t.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Trang tr&iacute; nội thất cho kh&ocirc;ng gian nh&agrave; ấn tượng</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Ph&ograve;ng kh&aacute;ch nổi bật với bộ ghế đầy ấn tượng.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Kh&ocirc;ng gian của ph&ograve;ng ngủ<br />\r\nĐối với kh&ocirc;ng gian n&agrave;y th&igrave; việc trang tr&iacute; nội thất cũng trở n&ecirc;n đơn giản với c&aacute;ch b&agrave;y tr&iacute; gọn g&agrave;ng v&agrave; &iacute;t đồ. Ch&iacute;nh v&igrave; thế m&agrave; tạo điểm nhấn hiệu quả cho kh&ocirc;ng gian n&agrave;y bạn c&oacute; thể b&agrave;y tr&iacute; v&agrave;o một g&oacute;c nhỏ của giường ngủ v&agrave; m&agrave;u sắc bạn h&atilde;y chọn đ&uacute;ng h&igrave;nh d&aacute;ng v&agrave; cũng như chất liệu của chiếc giường v&agrave; kh&ocirc;ng qu&ecirc;n chọn lựa m&agrave;u sắc cho bộ chăn ga trải giường thật ấn tượng. B&ecirc;n cạnh đ&oacute;, h&atilde;y chọn một bức tranh đặt tr&ecirc;n đ&acirc;u giường với họa tiết bắt mắt v&agrave; độc đ&aacute;o.</span></p>\r\n', 'trang-tri-noi-that-cho-khong-gian-nha-an-tuong', 'vi', null, null, '1529477031', '1', null, '1', '', '', '', '', null, '1', '0', '0');
INSERT INTO `news` VALUES ('4', 'Thiết kế nội thất biệt thự Hà Đô phong cách tân cổ điển', '<p>Mẫu thiết kế nội thất biệt thự t&acirc;n cổ điển nhấn mạnh v&agrave;o sự sang trọng v&agrave; cao cấp của kh&ocirc;ng gian nội thất nhằm mang đến một kh&ocirc;ng gian sống đẹp, trang nh&atilde; v&agrave; h&agrave;i h&ograve;a.</p>\r\n\r\n<p>M&agrave;u sắc trang nh&atilde; trong thiết kế nội thất<br />\r\nNhững gam m&agrave;u tang nh&atilde; được lựa chọn v&agrave; sử dụng trong mẫu thiết kế biệt thự cao cấp n&agrave;y. M&agrave;u trung t&iacute;nh như trắng, x&aacute;m nhạt, n&acirc;u v&agrave; v&agrave;ng được sử dụng trong kh&ocirc;ng gian thiết kế nhằm nhắn mạnh sự sang trọng v&agrave; cổ điển cua kh&ocirc;ng gian nội thất. M&agrave;u trắng được chọn l&agrave;m m&agrave;u nền, được sử dụng để trang tr&iacute; cho những bức tường, trần v&agrave; tủ kệ trong ph&ograve;ng kh&aacute;ch. M&agrave;u v&agrave;ng &nbsp;v&agrave; n&acirc;u chủ yếu được sử dụng để tạo điểm nhấn như d&ugrave;ng l&agrave;m m&agrave;u cho vật dụng nội thất hay l&agrave; m&agrave;u viền trang tr&iacute; cho gạch ốp s&agrave;n.</p>\r\n', null, 'upload/img/news/a11.jpg', '', 'thiet-ke-noi-that-biet-thu-ha-do-phong-cach-tan-co-dien', 'vi', null, null, '1529477027', '1', null, '1', '', '', '', '', null, '1', '0', '0');
INSERT INTO `news` VALUES ('5', 'Mẫu thiết kế biệt thự đẹp 2018 phong cách hiện đại sang trọng', '<p>Phong c&aacute;ch hiện đại l&agrave; xu hướng thiết kế hiện nay, được ứng dụng v&agrave;o những mẫu thiết kế biệt thự đẹp 2018 nhằm mang đến cho gia chủ một kh&ocirc;ng gian sống hiện đại v&agrave; sang trọng. Phong c&aacute;ch hiện đại nổi l&ecirc;n như l&agrave; một trong những lựa chọn h&agrave;ng đầu để thiết kế biệt thự đẹp. Kh&ocirc;ng giống với biệt thự cổ điển, những mẫu thiết kế biệt thự đẹp 2018 phong c&aacute;ch hiện đại c&oacute; chi tiết, dường n&eacute;t thiết kế nội thất kh&aacute; đơn giản, tinh tế v&agrave; kh&ocirc;ng k&eacute;m phần thu h&uacute;t, sang trọng. Đ&acirc;y l&agrave; phong c&aacute;ch thiết kế nhằm mang đến cho kh&ocirc;ng gian nội thất sự tinh tế v&agrave; thanh lịch.</p>\r\n', null, 'upload/img/news/mau-thiet-ke-biet-thu-dep-2018-phong-cach-hien-dai-sang-trong-1.jpeg', '<p style=\"text-align:justify\"><span style=\"font-size:14px\">Phong c&aacute;ch hiện đại l&agrave; xu hướng thiết kế hiện nay, được ứng dụng v&agrave;o những mẫu thiết kế biệt thự đẹp 2018 nhằm mang đến cho gia chủ một kh&ocirc;ng gian sống hiện đại v&agrave; sang trọng. Phong c&aacute;ch hiện đại nổi l&ecirc;n như l&agrave; một trong những lựa chọn h&agrave;ng đầu để thiết kế biệt thự đẹp. Kh&ocirc;ng giống với biệt thự cổ điển, những mẫu thiết kế biệt thự đẹp 2018 phong c&aacute;ch hiện đại c&oacute; chi tiết, dường n&eacute;t thiết kế nội thất kh&aacute; đơn giản, tinh tế v&agrave; kh&ocirc;ng k&eacute;m phần thu h&uacute;t, sang trọng. Đ&acirc;y l&agrave; phong c&aacute;ch thiết kế nhằm mang đến cho kh&ocirc;ng gian nội thất sự tinh tế v&agrave; thanh lịch.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Đường n&eacute;t đơn giản nhưng sang trọng<br />\r\nMẫu biệt thự đẹp 2018 phong c&aacute;ch hiện đại kh&ocirc;ng qu&aacute; cầu k&igrave;, phức tạp nhưng lại v&ocirc; c&ugrave;ng tinh tế, sang trọng. đ&oacute; l&agrave; những đường n&eacute;t, những mảng, những h&igrave;nh khối được sắp xếp h&agrave;i h&ograve;a, ấn tượng trong kh&ocirc;ng gian sống. Đ&oacute; cũng l&agrave; sự tương phản độc đ&aacute;o tạo ấn tượng mạnh mẽ cho kh&ocirc;ng gian như đường thẳng sắc cạnh được đặt b&ecirc;n đường cong mềm mại, vật dụng lớn đặt cạnh vật dụng b&eacute;. Ch&uacute;ng tạo n&ecirc;n một kh&ocirc;ng gian vừa h&agrave;i h&ograve;a, vừa th&uacute; vị.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Mẫu thiết kế biệt thự đẹp 2018 phong c&aacute;ch hiện đại sang trọng</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Kh&ocirc;ng gian sang trọng m&agrave;u sắc nổi bật.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">M&agrave;u sắc thanh lịch</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Thay v&igrave; sử dụng những m&agrave;u trầm như biệt thự cổ điển mẫu biệt thự đẹp 2018 phong c&aacute;ch hiện đại n&agrave;y ứng dụng những m&agrave;u sắc tran g nh&atilde; v&agrave; tinh tế. m&agrave;u trắng ng&agrave; được sử dụng để trang tr&iacute; bức tường. M&agrave;u trắng mang đến cảm gi&aacute;c sang trọng, tinh tế v&agrave; cũng khiến cho kh&ocirc;ng gian nội thất trở n&ecirc;n s&aacute;ng sủa hơn. Tr&ecirc;n những bức tường l&agrave; họa tiết, h&igrave;nh ảnh hoa l&aacute; c&agrave;nh sang trọng, hiện đại mang đến điểm nhấn độc đ&aacute;o cho thiết kế.</span></p>\r\n', 'mau-thiet-ke-biet-thu-dep-2018-phong-cach-hien-dai-sang-trong', 'vi', null, null, '1529477022', '1', null, '1', '', '', '', '', '1', '1', '0', '0');
INSERT INTO `news` VALUES ('6', 'Trang trí nội thất cho không gian nhà ấn tượng', '<p>Cho d&ugrave; kh&ocirc;ng gian nh&agrave; bạn được thiết kế nội thất theo phong c&aacute;ch n&agrave;o th&igrave; cũng cần tạo n&ecirc;n sự ấn tượng để c&oacute; thể thu h&uacute;t c&aacute;c vị kh&aacute;ch khi bước v&agrave;o kh&ocirc;ng gian nh&agrave;. &nbsp;Để tạo được điểm nhấn cho kh&ocirc;ng gian th&igrave; bạn cần phải t&igrave;m hiểu tham khảo thật kỹ c&agrave;ng, khẳng định n&eacute;t độc đ&aacute;o ri&ecirc;ng biệt của kh&ocirc;ng gian nh&agrave; bạn so với những kh&ocirc;ng gian kh&aacute;c. H&atilde;y tham khảo những &yacute; tưởng sau đ&acirc;y về thiết kế nội thất cho kh&ocirc;ng gian thật sự độc đ&aacute;o v&agrave; đẳng cấp.</p>\r\n', null, 'upload/img/news/trang-tri-noi-that-cho-khong-gian-nha-an-tuong-1.jpeg', '<p style=\"text-align:justify\"><span style=\"font-size:14px\">Thiết kế nội thất ph&ograve;ng kh&aacute;ch<br />\r\nNếu l&agrave; kh&ocirc;ng gian của ph&ograve;ng kh&aacute;ch th&igrave; kh&aacute; l&agrave; thuận lợi trong việc tạo điểm nhấn, để thể hiện đẳng cấp của bạn trong thiết kế nội thất ph&ograve;ng kh&aacute;ch th&ecirc;m sang trọng thấy được gu thẩm mỹ cũng như t&iacute;nh ri&ecirc;ng biệt của gia chủ trong kh&ocirc;ng gian n&agrave;y, bằng những nội thất th&acirc;n thuộc như bộ ghế sofa, điểm v&agrave;o những chiếc gối c&oacute; họa tiết độc đ&aacute;o hoặc gắn v&agrave;o một bức tranh treo tường để tăng sự thu h&uacute;t cho nơi n&agrave;y, kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch l&agrave; một nơi kh&aacute; quan trọng, trong việc thiết kế nội thất cần phải chọn lựa thật cẩn thận c&aacute;c chi tiết, nội thất phải được kết hợp h&agrave;i h&ograve;a. Ngo&agrave;i ra c&ograve;n phải được x&acirc;y dựng tạo n&ecirc;n bầu kh&ocirc;ng kh&iacute; thật tho&aacute;ng m&aacute;t.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"\" src=\"/upload/images/trang-tri-noi-that-cho-khong-gian-nha-an-tuong-1.jpeg\" style=\"height:500px; width:800px\" /></span></p>\r\n', 'trang-tri-noi-that-cho-khong-gian-nha-an-tuong1', 'vi', null, null, '1529476695', '1', null, '1', '', '', '', '', '1', '1', '0', '0');

-- ----------------------------
-- Table structure for `news_category`
-- ----------------------------
DROP TABLE IF EXISTS `news_category`;
CREATE TABLE `news_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `focus` int(11) DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `coupon` int(11) DEFAULT NULL,
  `time_update` int(11) DEFAULT NULL,
  `time_start` int(8) DEFAULT NULL,
  `sort` int(5) DEFAULT '1',
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1',
  `title_seo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `description_seo` text COLLATE utf8_unicode_ci,
  `button_view_left` int(11) NOT NULL,
  `button_view_right` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news_category
-- ----------------------------
INSERT INTO `news_category` VALUES ('1', 'tin tức', 'tin-tuc', '', null, '0', null, null, null, null, null, null, '1', 'vi', '', null, '', '0', '0');

-- ----------------------------
-- Table structure for `news_to_category`
-- ----------------------------
DROP TABLE IF EXISTS `news_to_category`;
CREATE TABLE `news_to_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_news` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news_to_category
-- ----------------------------
INSERT INTO `news_to_category` VALUES ('13', '1', '1');
INSERT INTO `news_to_category` VALUES ('12', '2', '1');
INSERT INTO `news_to_category` VALUES ('11', '3', '1');
INSERT INTO `news_to_category` VALUES ('10', '4', '1');
INSERT INTO `news_to_category` VALUES ('9', '5', '1');
INSERT INTO `news_to_category` VALUES ('8', '6', '1');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` text CHARACTER SET utf8,
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `note` text CHARACTER SET utf8,
  `item_order` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `show` tinyint(1) DEFAULT '0',
  `mark` tinyint(1) DEFAULT '0',
  `admin_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `province` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `district` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `ward` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` decimal(21,0) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `view` tinyint(1) DEFAULT '1',
  `code` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `address2` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `startplaces` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `finishplace` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `fax` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `startime` char(30) CHARACTER SET utf8 DEFAULT NULL,
  `endtime` char(30) CHARACTER SET utf8 DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `other_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `code_sale` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `price_sale` int(10) DEFAULT NULL,
  `approved` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `price_ship` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', 'dang tran manh', 'đội 7 thôn trung', '0977160509', 'dangtranmanh051187@gmail.com', 'ghi chú giao hàng', null, '1505376785', '0', '0', null, null, null, null, null, '0', '1', null, 'dia chi giao hàng khác', 'Thanh toán tiền mặt khi nhận hàng.', null, null, null, null, null, null, null, null, '10', null, null, '246912', '30000');

-- ----------------------------
-- Table structure for `order_item`
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(50) DEFAULT NULL,
  `price` int(100) DEFAULT NULL,
  `t_option` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `initierary` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_start` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotel` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tour_type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `person` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_end` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `pro_dir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `alias` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of order_item
-- ----------------------------

-- ----------------------------
-- Table structure for `p_images`
-- ----------------------------
DROP TABLE IF EXISTS `p_images`;
CREATE TABLE `p_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url` char(200) CHARACTER SET utf8 DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of p_images
-- ----------------------------
INSERT INTO `p_images` VALUES ('7', null, '31', 'upload/img/products_multi/141.jpg', null, null, null);
INSERT INTO `p_images` VALUES ('8', null, '31', 'upload/img/products_multi/14.jpg', null, null, null);
INSERT INTO `p_images` VALUES ('9', '', '43', 'upload/img/products_multi/21.jpg', null, '', null);
INSERT INTO `p_images` VALUES ('10', '', '43', 'upload/img/products_multi/22.jpg', null, '', null);
INSERT INTO `p_images` VALUES ('11', 'anh so 1', '93', 'upload/img/products_multi/web.png', null, '', null);
INSERT INTO `p_images` VALUES ('13', 'anh 2', '92', 'upload/img/products_multi/logo1.png', null, '', null);
INSERT INTO `p_images` VALUES ('14', '', '92', 'upload/img/products_multi/logo-thep.jpg', null, '', null);
INSERT INTO `p_images` VALUES ('16', 'anh so 2', null, 'upload/img/products_multi/logo-thep1.jpg', null, '', null);
INSERT INTO `p_images` VALUES ('17', 'anh so 2', null, null, null, '', null);
INSERT INTO `p_images` VALUES ('18', 'anh so 123', null, 'upload/img/products_multi/logo.png', null, '', null);
INSERT INTO `p_images` VALUES ('19', 'anh cho 91', null, null, null, '', null);
INSERT INTO `p_images` VALUES ('20', 'anh cho 91', null, 'upload/img/products_multi/logo1.png', null, '', null);
INSERT INTO `p_images` VALUES ('22', 'anh so 1', '15', 'upload/img/products_multi/golf.png', null, '', null);

-- ----------------------------
-- Table structure for `places`
-- ----------------------------
DROP TABLE IF EXISTS `places`;
CREATE TABLE `places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of places
-- ----------------------------
INSERT INTO `places` VALUES ('3', 'Osaka', '', null);
INSERT INTO `places` VALUES ('2', 'Tokyo', '', null);
INSERT INTO `places` VALUES ('4', 'Kanazawa', '', null);
INSERT INTO `places` VALUES ('5', 'Shirakawa-go', '', null);
INSERT INTO `places` VALUES ('6', 'Nagano', '', null);
INSERT INTO `places` VALUES ('7', 'Kobe', '', null);
INSERT INTO `places` VALUES ('8', 'Hakuba', '', null);

-- ----------------------------
-- Table structure for `pro_size`
-- ----------------------------
DROP TABLE IF EXISTS `pro_size`;
CREATE TABLE `pro_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pro_size
-- ----------------------------

-- ----------------------------
-- Table structure for `pro_values`
-- ----------------------------
DROP TABLE IF EXISTS `pro_values`;
CREATE TABLE `pro_values` (
  `pro_id` int(11) DEFAULT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pro_values
-- ----------------------------

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `style` int(11) DEFAULT NULL,
  `id_value` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `coupon` tinyint(1) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `description_seo` text COLLATE utf8_unicode_ci,
  `location` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `like` int(11) DEFAULT '0',
  `order` decimal(21,0) DEFAULT '0',
  `category_id` int(11) DEFAULT NULL,
  `caption_1` text COLLATE utf8_unicode_ci,
  `caption_2` text COLLATE utf8_unicode_ci,
  `locale` int(11) DEFAULT NULL,
  `bought` int(11) DEFAULT '0',
  `dksudung` text COLLATE utf8_unicode_ci,
  `sort` int(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `counter` int(11) DEFAULT '0',
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `destination` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(8) DEFAULT NULL,
  `tags` text COLLATE utf8_unicode_ci,
  `pro_dir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multi_image` text COLLATE utf8_unicode_ci,
  `img_dir` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `quaranty` tinyint(3) DEFAULT NULL,
  `tinhtrang` tinyint(1) DEFAULT NULL,
  `group_attribute_id` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `button_color1` int(11) NOT NULL,
  `config_pro` text COLLATE utf8_unicode_ci NOT NULL,
  `config_pro_content` text COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `price_imp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', null, null, null, 'sản phẩm mới', null, 'san-pham-moi', 'tc-4.png', null, null, null, null, null, '1', null, '200000', '', null, null, null, null, null, null, '0', '0', '1', null, null, null, '0', null, null, '0', '0', 'en', null, null, null, '03022018', null, null, '1', null, null, null, null, null, '1', null, '0', 'null', '', null, null);
INSERT INTO `product` VALUES ('2', null, null, null, 'BỘ SOFA A1305 VỚI KỆ ĐỂ ĐỒ TIỆN DỤNG', null, 'bo-sofa-a1305-voi-ke-de-do-tien-dung', 'sofa-3-bang-goc-phai-a1305-268x201.jpg', null, null, null, null, null, '1', null, '6774354', '<p>Chi tiết sản phẩm Bộ sofa A1305 với kệ để đồ tiện dụng<br />\r\nT&acirc;m điểm cho nội thất ph&ograve;ng kh&aacute;ch l&agrave; bộ Sofa. Đ&oacute; l&agrave; nơi thể hiện t&iacute;nh c&aacute;ch, gu thẩm mỹ của gia chủ , l&agrave; nơi để tiếp đ&oacute;n c&aacute;c vị kh&aacute;ch qu&yacute; vậy n&ecirc;n khi mua n&ecirc;n lựa chọn tham khảo kỹ c&agrave;ng rồi h&atilde;y mua.</p>\r\n', null, null, null, null, null, null, '0', '0', '1', null, null, null, '0', null, null, '0', '0', 'vi', null, null, null, '17032018', null, null, '1', null, null, null, null, null, '2', null, '0', '[{\"content\":\"<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m B\\u1ed9 sofa A1305 v\\u1edbi k\\u1ec7 \\u0111\\u1ec3 \\u0111\\u1ed3 ti\\u1ec7n d\\u1ee5ng<br \\/>\\r\\nT&acirc;m \\u0111i\\u1ec3m cho n\\u1ed9i th\\u1ea5t ph&ograve;ng kh&aacute;ch l&agrave; b\\u1ed9 Sofa. \\u0110&oacute; l&agrave; n\\u01a1i th\\u1ec3 hi\\u1ec7n t&iacute;nh c&aacute;ch, gu th\\u1ea9m m\\u1ef9 c\\u1ee7a gia ch\\u1ee7 , l&agrave; n\\u01a1i \\u0111\\u1ec3 ti\\u1ebfp \\u0111&oacute;n c&aacute;c v\\u1ecb kh&aacute;ch qu&yacute; v\\u1eady n&ecirc;n khi mua n&ecirc;n l\\u1ef1a ch\\u1ecdn tham kh\\u1ea3o k\\u1ef9 c&agrave;ng r\\u1ed3i h&atilde;y mua.<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">N\\u1ed9i th\\u1ea5t Gia Kh&aacute;nh gi\\u1edbi thi\\u1ec7u \\u0111\\u1ebfn b\\u1ea1n b\\u1ed9 sofa v\\u1ea3i A1305 v\\u1edbi k\\u1ec7 \\u0111\\u1ec3 \\u0111\\u1ed3 ngay b&ecirc;n d\\u01b0\\u1edbi &nbsp;th&agrave;nh sofa \\u0111em \\u0111\\u1ebfn s\\u1ef1 ti\\u1ec7n d\\u1ee5ng cho b\\u1ea1n v&agrave; nh\\u1eefng v\\u1ecb kh&aacute;ch mang c&aacute;c \\u0111\\u1eb7c t&iacute;nh v\\u01b0\\u1ee3t tr\\u1ed9i:<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">Sofa \\u0111\\u01b0\\u1ee3c nh\\u1eadp kh\\u1ea9u 100% c\\u1ee7a c&aacute;c h&atilde;ng s\\u1ea3n xu\\u1ea5t uy t&iacute;n.<br \\/>\\r\\nCh\\u1ea5t li\\u1ec7u v\\u1ea3i n\\u1ec9, n\\u1ec9 th&ocirc; c&oacute; \\u0111\\u1ed9 b\\u1ec1n t\\u1ed1t, t&iacute;nh th\\u1ea9m m\\u1ef9 cao.<br \\/>\\r\\nKhung g\\u1ed7 ch\\u1eafc ch\\u1eafn \\u0111\\u01b0\\u1ee3c l&agrave;m b\\u1eb1ng g\\u1ed7 t\\u1ef1 nhi&ecirc;n \\u0111&atilde; qua x\\u1eed l&yacute; ch\\u1ed1ng cong v&ecirc;nh m\\u1ed1i m\\u1ecdt.<br \\/>\\r\\nH\\u1ec7 th\\u1ed1ng l&ograve; xo u\\u1ed1n cong v\\u1edbi c&ocirc;ng ngh\\u1ec7 u\\u1ed1n ti&ecirc;n ti\\u1ebfn c\\u1ee7a \\u0110&agrave;i Loan t\\u1ea1o \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i b\\u1ec1 m\\u1eb7t v&agrave; n&acirc;ng cao kh\\u1ea3 n\\u0103ng ch\\u1ecbu l\\u1ef1c cho s\\u1ea3n ph\\u1ea9m.<br \\/>\\r\\nS\\u1eed d\\u1ee5ng c&aacute;c v\\u1eadt li\\u1ec7u b\\u1ecdc m&uacute;t ti&ecirc;u chu\\u1ea9n, b&ocirc;ng nhi\\u1ec7t, b&ocirc;ng t&aacute;n l\\u1ef1c gi&uacute;p cho s\\u1ea3n ph\\u1ea9m c&oacute; \\u0111\\u1ed9 &ecirc;m &aacute;i v&agrave; c&oacute; s\\u1ee9c \\u0111&agrave;n h\\u1ed3i cao.<br \\/>\\r\\nS\\u1ea3n ph\\u1ea9m \\u0111\\u01b0\\u1ee3c b\\u1ea3o h&agrave;nh 5 n\\u0103m v\\u1ec1 khung x\\u01b0\\u01a1ng v&agrave; 2 n\\u0103m v\\u1ec1 ch\\u1ea5t li\\u1ec7u b\\u1ec1 m\\u1eb7t v\\u1ea3i n\\u1ec9.<br \\/>\\r\\nSofa 3 b\\u0103ng A1305 g&oacute;c tr&aacute;i:<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">3 b\\u0103ng g&oacute;c ph\\u1ea3i:<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">data:image\\/gif;base64,R0lGODdhAQABAPAAAP\\/\\/\\/<br \\/>\\r\\nSofa 3 b\\u0103ng g&oacute;c ph\\u1ea3i A1305<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">\\u0110\\u1eb7c bi\\u1ec7t: To&agrave;n b\\u1ed9 sofa n\\u1ec9 c&oacute; th\\u1ec3 th&aacute;o ra to&agrave;n b\\u1ed9 t\\u1eeb ph\\u1ea7n l\\u01b0ng, ph\\u1ea7n l\\u1eadt, ph\\u1ea7n s\\u01b0\\u1eddn, ph\\u1ea7n tay t\\u1ee9c l&agrave; c&oacute; th\\u1ec3 th&aacute;o r\\u1eddi to&agrave;n b\\u1ed9 ph\\u1ea7n v\\u1ecf v\\u1ea3i n\\u1ec9 c\\u1ee7a sofa nh\\u01b0 m\\u1ed9t c&aacute;i &aacute;o \\u0111\\u1ec3 d\\u1ec5 d&agrave;ng v\\u1ec7 sinh s\\u1ea3n ph\\u1ea9m. Qu&yacute; kh&aacute;ch c&oacute; th\\u1ec3 mua nhi\\u1ec1u v\\u1ecf &aacute;o v\\u1edbi nhi\\u1ec1u m&agrave;u kh&aacute;c nhau \\u0111\\u1ec3 thay \\u0111\\u1ed5i phong c&aacute;ch trong t&iacute;ch t\\u1eafc (\\u01afu \\u0111i\\u1ec3m tuy\\u1ec7t \\u0111\\u1ed1i ch\\u1ec9 c&oacute; sofa n\\u1ec9 nh\\u1eadp kh\\u1ea9u m\\u1edbi c&oacute;).<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">C&aacute;c m\\u1eabu sofa v\\u1ea3i c\\u1ee7a ch&uacute;ng t&ocirc;i \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf ch\\u1ecdn l\\u1ecdc, tinh x\\u1ea3o v\\u1ec1 \\u0111\\u01b0\\u1eddng may v&agrave; \\u0111\\u01b0\\u1eddng n&eacute;t \\u0111\\u01b0\\u1ee3c t\\u1ea1o ra b\\u1edfi c&aacute;c th\\u1ee3 l&agrave;nh ngh\\u1ec1, ph&ugrave; h\\u1ee3p v\\u1edbi c&aacute;c kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch hi\\u1ec7n \\u0111\\u1ea1i mang \\u0111\\u1ebfn kh&ocirc;ng gian sang tr\\u1ecdng, hi\\u1ec7n \\u0111\\u1ea1i cho ng&ocirc;i nh&agrave; kh&aacute;ch h&agrave;ng.<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">L\\u01b0u &yacute;:<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">C&aacute;c m\\u1eabu sofa v\\u1ea3i c&oacute; th\\u1ec3 \\u0111\\u1eb7t s\\u1ea3n xu\\u1ea5t \\u0111\\u1ec3 thay \\u0111\\u1ed5i m&agrave;u s\\u1eafc v\\u1ea3i, chi\\u1ec1u g&oacute;c theo y&ecirc;u c\\u1ea7u \\u0111\\u1ec3 \\u0111&aacute;p \\u1ee9ng t\\u1ed1i \\u0111a nhu c\\u1ea7u c\\u1ee7a kh&aacute;ch h&agrave;ng.<br \\/>\\r\\nS\\u1ea3n ph\\u1ea9m \\u0111&atilde; bao g\\u1ed3m to&agrave;n b\\u1ed9 g\\u1ed1i trang tr&iacute; \\u0111i k&egrave;m.<br \\/>\\r\\nN\\u1ed9i th\\u1ea5t Gia Kh&aacute;nh l&agrave; \\u0111\\u01a1n v\\u1ecb h&agrave;ng \\u0111\\u1ea7u v\\u1ec1 n\\u1ed9i th\\u1ea5t ngo\\u1ea1i nh\\u1eadp cao c\\u1ea5p, v\\u1edbi \\u0111a d\\u1ea1ng ki\\u1ec3u d&aacute;ng, ch\\u1ee7ng lo\\u1ea1i, m&agrave;u s\\u1eafc v&agrave; phong c&aacute;ch kh&aacute;c nhau. V\\u1edbi ph\\u01b0\\u01a1ng ch&acirc;m &ldquo;Uy t&iacute;n l&agrave;m \\u0111\\u1ea7u&rdquo; N\\u1ed9i Th\\u1ea5t Gia Kh&aacute;nh \\u0111&atilde; c&oacute; \\u0111\\u01b0\\u1ee3c l&ograve;ng tin v&agrave; s\\u1ef1 t&iacute;n nhi\\u1ec7m c\\u1ee7a kh&aacute;ch h&agrave;ng, tr\\u1edf th&agrave;nh m\\u1ed9t trong nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u n\\u1ed9i th\\u1ea5t n\\u1ed5i ti\\u1ebfng t\\u1ea1i Vi\\u1ec7t Nam v\\u1edbi c&aacute;c s\\u1ea3n ph\\u1ea9m nh\\u01b0: b&agrave;n tr&agrave;, b\\u1ed9 b&agrave;n \\u0103n, sofa da, sofa v\\u1ea3i, gi\\u01b0\\u1eddng tr\\u1ebb em, ph&ograve;ng ng\\u1ee7 \\u0111\\u1ed3ng b\\u1ed9&hellip;<\\/span><\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('3', null, null, null, 'SOFA VẢI PHÒNG KHÁCH GÓC TRÁI 2 BĂNG 8916', null, 'sofa-vai-phong-khach-goc-trai-2-bang-8916', 'sofa-vai-phong-khach-goc-trai-2-bang-8916.png', null, null, null, null, null, '1', null, '7000000', '', null, null, null, null, null, null, '0', '0', '1', null, null, null, '0', null, null, '0', '0', 'vi', null, null, null, '17032018', null, null, '1', null, null, null, null, null, '2', null, '0', '[{\"content\":\"<p style=\\\"text-align:center\\\"><img alt=\\\"\\\" src=\\\"\\/upload\\/images\\/Sofa-vai-phong-khach-goc-trai-2-bang-8916-.png\\\" style=\\\"height:525px; width:700px\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:center\\\">&nbsp;<\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('4', null, null, null, 'SOFA DA THẬT 3 BĂNG GÓC PHẢI 9192B', null, 'sofa-da-that-3-bang-goc-phai-9192b', 'sofa-da-that-9192b-co-3-bang-goc-phai.jpg', null, null, null, null, null, '1', null, '306557', '', null, null, null, null, null, null, '0', '0', '1', null, null, null, '0', null, null, '0', '0', 'vi', null, null, null, '17032018', null, null, '1', null, null, null, null, null, '2', null, '0', '[{\"content\":\"<p style=\\\"text-align:center\\\"><img alt=\\\"\\\" src=\\\"\\/upload\\/images\\/Sofa-da-that-9192B-co-3-bang-goc-phai.jpg\\\" style=\\\"height:525px; width:700px\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:center\\\">&nbsp;<\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('5', null, null, null, 'BÀN TRÀ & KỆ TIVI ĐỒNG BỘ HC81-1 + HY23-1', null, 'ban-tra-ke-tivi-dong-bo-hc81-1-hy23-1', 'ban-tra-ke-tivi-dong-bo-hc81-1-hy23-1.jpg', null, null, null, null, null, '1', null, '65000000', '', null, null, null, null, null, null, '0', '0', '1', null, null, null, '0', null, null, '0', '0', 'vi', null, null, null, '17032018', null, null, '1', null, null, null, null, null, '2', null, '0', '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('6', null, null, null, 'BÀN TRÀ 1M4 CAO CẤP PHONG CÁCH PHÁP 88012', null, 'ban-tra-1m4-cao-cap-phong-cach-phap-88012', 'a1.jpg', null, null, null, null, null, '1', '0', '1200000', '', '', null, '', '', null, null, '0', '0', '4', null, null, null, null, null, null, '0', null, 'vi', null, '1529469039', null, '17032018', null, null, '1', null, null, null, null, null, '1', null, '0', '[{\"content\":\"<p style=\\\"text-align:center\\\"><img alt=\\\"\\\" src=\\\"\\/upload\\/images\\/a1.jpg\\\" style=\\\"height:600px; width:800px\\\" \\/><\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('7', null, null, null, 'BÀN TRÀ CHÂN THOÁNG ĐỘC ĐÁO 88011', null, 'ban-tra-chan-thoang-doc-dao-88011', 'a2.jpg', null, null, null, null, null, '1', null, '9000000', '', null, null, null, null, null, null, '0', '0', '1', null, null, null, '0', null, null, '0', '0', 'vi', null, null, null, '17032018', null, null, '1', null, null, null, null, null, '2', null, '0', '[{\"content\":\"<p><img alt=\\\"\\\" src=\\\"\\/upload\\/images\\/a2.jpg\\\" style=\\\"height:600px; width:800px\\\" \\/><\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('8', null, null, null, 'BÀN TRÀ 1M4 CAO CẤP PHONG CÁCH PHÁP 88012', null, 'ban-tra-1m4-cao-cap-phong-cach-phap-880122', 'a3.jpg', null, null, null, null, null, '1', null, '9000000', '', null, null, null, null, null, null, '0', '0', '1', null, null, null, '0', null, null, '0', '0', 'vi', null, null, null, '17032018', null, null, '1', null, null, null, null, null, '2', null, '0', '[{\"content\":\"<p style=\\\"text-align:center\\\"><img alt=\\\"\\\" src=\\\"\\/upload\\/images\\/a3.jpg\\\" style=\\\"height:600px; width:800px\\\" \\/><\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('9', null, null, null, 'BÀN TRÀ C160001 VÀ KỆ TI VI ĐỒNG BỘ D164001', null, 'ban-tra-c160001-va-ke-ti-vi-dong-bo-d164001', 'a4.jpg', null, null, null, null, null, '1', null, '6700000', '', null, null, null, null, null, null, '0', '0', '1', null, null, null, '0', null, null, '0', '0', 'vi', null, null, null, '17032018', null, null, '1', null, null, null, null, null, '2', null, '0', '[{\"content\":\"<p style=\\\"text-align:center\\\"><img alt=\\\"\\\" src=\\\"\\/upload\\/images\\/a4.jpg\\\" style=\\\"height:586px; width:878px\\\" \\/><\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('10', null, null, null, 'BỘ KỆ TI VI CAO CẤP A636BG', null, 'bo-ke-ti-vi-cao-cap-a636bg', 'a5.jpg', null, null, null, null, null, '1', null, '6700000', '', null, null, null, null, null, null, '0', '0', '1', null, null, null, '0', null, null, '0', '0', 'vi', null, null, null, '17032018', null, null, '1', null, null, null, null, null, '2', null, '0', '[{\"content\":\"<p style=\\\"text-align:center\\\"><img alt=\\\"\\\" src=\\\"\\/upload\\/images\\/a5.jpg\\\" style=\\\"height:537px; width:800px\\\" \\/><\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('11', null, null, null, 'GHẾ ĂN A656', null, 'ghe-an-a656', 'a6.jpg', null, null, null, null, null, '1', '0', '4300000', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '', null, '', '', null, null, '0', '0', '4', null, null, null, null, null, null, '0', null, 'vi', null, '1529469030', null, '17032018', null, null, '1', null, null, null, null, null, '1', null, '0', '[{\"content\":\"<p style=\\\"text-align:center\\\"><img alt=\\\"\\\" src=\\\"\\/upload\\/images\\/a6.jpg\\\" style=\\\"height:695px; width:785px\\\" \\/><\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('12', null, null, null, 'GHẾ ĂN BẰNG DA CAO CẤP Y148917', null, 'ghe-an-bang-da-cao-cap-y148917', 'a1.png', null, null, null, null, null, '1', '0', '4000000', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '', null, '', '', null, null, '0', '0', '4', null, null, null, null, null, null, '0', null, 'vi', null, '1529469016', null, '17032018', null, null, '1', null, null, null, null, null, '1', null, '0', '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('13', null, null, null, 'GHẾ NHỰA ĐÚC NGUYÊN KHỐI MÀU XANH CK6', null, 'ghe-nhua-duc-nguyen-khoi-mau-xanh-ck6', 'a21.jpg', null, null, null, null, null, '1', '0', '450000', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '', null, '', '', null, null, '0', '0', '4', null, null, null, null, null, null, '0', null, 'vi', null, '1529468677', null, '17032018', null, null, '1', null, null, null, null, null, '1', null, '0', '[{\"content\":\"<p style=\\\"text-align:center\\\"><img alt=\\\"\\\" src=\\\"\\/upload\\/images\\/a2(1).jpg\\\" style=\\\"height:548px; width:800px\\\" \\/><\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('14', null, null, null, 'BÀN ĂN 1M2 MẶT KÍNH VIỀN ĐEN T0509092-1', null, 'ban-an-1m2-mat-kinh-vien-den-t0509092-1', 'a31.jpg', null, null, null, null, null, '1', '0', '6000000', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '', null, '', '', null, null, '0', '0', '4', null, null, null, null, null, null, '0', null, 'vi', null, '1529468668', null, '17032018', null, null, '1', null, null, null, null, null, '1', null, '0', '[{\"content\":\"<p style=\\\"text-align:center\\\"><img alt=\\\"\\\" src=\\\"\\/upload\\/images\\/a3(1).jpg\\\" style=\\\"height:600px; width:800px\\\" \\/><\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('15', null, null, null, 'BÀN ĂN SANG TRỌNG T072', null, 'ban-an-sang-trong-t072', 'a41.jpg', null, '1', null, null, '11', '1', '0', '4000000', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '', null, '', '', null, null, '0', '0', '4', null, null, null, null, null, null, '0', null, 'vi', null, '1529468661', null, '17032018', null, null, '1', null, null, null, null, null, '1', null, '0', '[{\"content\":\"<p style=\\\"text-align:center\\\"><img alt=\\\"\\\" src=\\\"\\/upload\\/images\\/a4(1).jpg\\\" style=\\\"height:540px; width:800px\\\" \\/><\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('16', null, null, null, 'TỦ ÁO 2 CÁNH HIỆN ĐẠI PHONG CÁCH HÀN QUỐC A689D2', null, 'tu-ao-2-canh-hien-dai-phong-cach-han-quoc-a689d2', 'a51.jpg', null, '1', null, null, '11', '1', '0', '7000000', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '', null, '', '', null, null, '0', '0', '4', null, null, null, null, null, null, '0', null, 'vi', null, '1529468642', null, '17032018', null, null, '1', null, null, null, null, null, '1', null, '0', '[{\"content\":\"<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">TH&Ocirc;NG S\\u1ed0 K\\u1ef8 THU\\u1eacT C\\u01a0 B\\u1ea2N C\\u1ee6A S\\u1ea2N PH\\u1ea8M:<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">S\\u1ea3n ph\\u1ea9m thu\\u1ed9c d&ograve;ng h&agrave;ng JINDIAN, phong c&aacute;ch H&agrave;n Qu\\u1ed1c<br \\/>\\r\\nS\\u1ea3n ph\\u1ea9m \\u0111\\u01b0\\u1ee3c l&agrave;m t\\u1eeb g\\u1ed7 MFC \\u0111&atilde; qua x\\u1eed l&yacute; ch\\u1ed1ng cong v&ecirc;nh m\\u1ed1i m\\u1ecdt<br \\/>\\r\\nPh\\u1ee5 ki\\u1ec7n theo ti&ecirc;u chu\\u1ea9n Ch&acirc;u &Acirc;u.<br \\/>\\r\\nB\\u1ec1 m\\u1eb7t s\\u1ea3n ph\\u1ea9m \\u0111\\u01b0\\u1ee3c s\\u01a1n Lacker 7 l\\u1edbp (l\\u1edbp s\\u01a1n d&agrave;y, \\u0111\\u1eb9p, ch\\u1ed1ng tr\\u1ea7y x\\u01b0\\u1edbc nh\\u01b0 c&ocirc;ng ngh\\u1ec7 s\\u01a1n &ocirc;t&ocirc;, \\u0111\\u1eb7c tr\\u01b0ng c\\u1ee7a s\\u01a1n n\\u1ed9i th\\u1ea5t H&agrave;n Qu\\u1ed1c) \\u0111\\u1ea1t c&aacute;c ti&ecirc;u chu\\u1ea9n qu\\u1ed1c t\\u1ebf v\\u1ec1 an to&agrave;n v&agrave; th&acirc;n thi\\u1ec7n v\\u1edbi ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng.<br \\/>\\r\\nS\\u1ea3n ph\\u1ea9m mang t&iacute;nh th\\u1ea9m m\\u1ef9 cao, \\u0111\\u01b0\\u1ee3c \\u0111\\u1ea7u t\\u01b0 thi\\u1ebft k\\u1ebf tinh x\\u1ea3o, c&oacute; k\\u1ebft c\\u1ea5u ch\\u1eafc ch\\u1eafn.<br \\/>\\r\\nB\\u1ea3o h&agrave;nh 2 n\\u0103m, b\\u1ea3o tr&igrave; su\\u1ed1t qu&atilde;ng \\u0111\\u1eddi s\\u1ea3n ph\\u1ea9m<\\/span><\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('17', null, null, null, 'BỘ PHÒNG NGỦ HÀN QUỐC CÓ GHẾ HỌC XOAY A689BG15', null, 'bo-phong-ngu-han-quoc-co-ghe-hoc-xoay-a689bg15', 'a61.jpg', null, '1', null, null, '1', '1', '0', '26246900', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '', null, '', '', null, null, '0', '0', '4', null, null, null, null, null, null, '0', null, 'vi', null, '1529468648', null, '17032018', null, null, '1', null, null, null, null, null, '1', null, '0', '[{\"content\":\"<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m B\\u1ed9 ph&ograve;ng ng\\u1ee7 H&agrave;n Qu\\u1ed1c c&oacute; gh\\u1ebf h\\u1ecdc xoay A689BG15<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">B\\u1ed9 bao g\\u1ed3m: 01 gi\\u01b0\\u1eddng 1m5 + 01 Tab \\u0111\\u1ea7u gi\\u01b0\\u1eddng + 01 B&agrave;n h\\u1ecdc g&oacute;c + 01 Gh\\u1ebf h\\u1ecdc xoay + 01 t\\u1ee7 &aacute;o 3 c&aacute;nh<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">Th\\u01b0\\u01a1ng hi\\u1ec7u: Jindian<br \\/>\\r\\nPhong c&aacute;ch: H&agrave;n Qu\\u1ed1c<br \\/>\\r\\nCh\\u1ea5t li\\u1ec7u: G\\u1ed7 MFC \\u0111&atilde; qua x\\u1eed l&yacute; ch\\u1ed1ng cong v&ecirc;nh m\\u1ed1i m\\u1ecdt<br \\/>\\r\\nM&agrave;u s\\u1eafc: Kem<br \\/>\\r\\nB\\u1ea3o h&agrave;nh: 2 n\\u0103m, b\\u1ea3o tr&igrave; su\\u1ed1t qu&atilde;ng \\u0111\\u1eddi s\\u1ea3n ph\\u1ea9m<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">T\\u1ea5t c\\u1ea3 c&aacute;c m&atilde; h&agrave;ng trong d&ograve;ng s\\u1ea3n ph\\u1ea9m Jindian \\u0111\\u1ec1u l&agrave; s\\u1ea3n ph\\u1ea9m \\u0111\\u1ed3ng b\\u1ed9 v\\u1ec1 phong c&aacute;ch, n\\u01b0\\u1edbc s\\u01a1n. N&ecirc;n c&oacute; th\\u1ec3 d&ugrave;ng chung c&aacute;c m&atilde; h&agrave;ng \\u0111\\u01a1n l\\u1ebb \\u0111\\u1ec3 k\\u1ebft h\\u1ee3p th&agrave;nh \\u0111\\u1ed3ng b\\u1ed9 sao cho ph&ugrave; h\\u1ee3p v\\u1edbi kh&ocirc;ng gian n\\u1ed9i th\\u1ea5t<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M B\\u1ed8 PH&Ograve;NG NG\\u1ee6 JINDIAN A689BG15<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">Sau m\\u1ed9t ng&agrave;y h\\u1ecdc t\\u1eadp v&agrave; l&agrave;m vi\\u1ec7c m\\u1ec7t nh\\u1ecdc, gi\\u1ea5c ng\\u1ee7 \\u0111&oacute;ng vai tr&ograve; quan tr\\u1ecdng trong vi\\u1ec7c b\\u1ea3o v\\u1ec7 s\\u1ee9c kh\\u1ecfe cho b\\u1ea1n v&agrave; gia \\u0111&igrave;nh b\\u1ea1n. Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c \\u0111i\\u1ec1u \\u0111&oacute;, Noithatgiakhanh.com gi\\u1edbi thi\\u1ec7u \\u0111\\u1ebfn b\\u1ea1n B\\u1ed9 ph&ograve;ng ng\\u1ee7 Jindian, \\u0111\\u1eb9p, sang tr\\u1ecdng mang \\u0111\\u1ebfn cho b\\u1ea1n m\\u1ed9t kh&ocirc;ng gian &ecirc;m \\u0111\\u1ec1m v&agrave; m\\u1ed9t gi\\u1ea5c ng\\u1ee7 &ecirc;m &aacute;i, nh\\u1eb9 nh&agrave;ng.<\\/span><\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);
INSERT INTO `product` VALUES ('18', null, null, null, ' TAB ĐẦU GIƯỜNG GỖ GÕ ĐỎ CAO CẤP 926B', null, 'tab-dau-giuong-go-go-do-cao-cap-926b', 'a7.jpg', null, '1', null, null, '1', '1', '0', '8000000', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', null, '', '', null, null, '0', '0', '4', null, null, null, null, null, null, '0', null, 'vi', null, '1529468698', null, '17032018', null, null, '1', null, null, null, null, null, '1', null, '0', '[{\"content\":\"<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m Tab \\u0111\\u1ea7u gi\\u01b0\\u1eddng g\\u1ed7 G&otilde; \\u0110\\u1ecf cao c\\u1ea5p 926B<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">M&agrave;u s\\u1eafc: N&acirc;u g\\u1ed7<br \\/>\\r\\nTh\\u01b0\\u01a1ng hi\\u1ec7u: French William<br \\/>\\r\\nPhong c&aacute;ch: C\\u1ed5 \\u0111i\\u1ec3n, t&acirc;n c\\u1ed5 \\u0111i\\u1ec3n<br \\/>\\r\\nCh\\u1ea5t li\\u1ec7u: G\\u1ed7 G&otilde; \\u0110\\u1ecf cao c\\u1ea5p, qu&yacute; hi\\u1ebfm, s\\u01a1n b&oacute;ng.<br \\/>\\r\\nB\\u1ea3o h&agrave;nh: 2 n\\u0103m, b\\u1ea3o tr&igrave; su\\u1ed1t qu&atilde;ng \\u0111\\u1eddi s\\u1ea3n ph\\u1ea9m<br \\/>\\r\\nXu\\u1ea5t x\\u1ee9: Nh\\u1eadp kh\\u1ea9u<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">T\\u1ea5t c\\u1ea3 c&aacute;c s\\u1ea3n ph\\u1ea9m trong d&ograve;ng h&agrave;ng French William \\u0111\\u1ec1u \\u0111\\u1ed3ng b\\u1ed9 v\\u1ec1 phong c&aacute;ch, n\\u01b0\\u1edbc s\\u01a1n. N&ecirc;n c&oacute; th\\u1ec3 d&ugrave;ng chung c&aacute;c m&atilde; h&agrave;ng \\u0111\\u01a1n l\\u1ebb \\u0111\\u1ec3 k\\u1ebft h\\u1ee3p th&agrave;nh \\u0111\\u1ed3ng b\\u1ed9 sao cho ph&ugrave; h\\u1ee3p v\\u1edbi kh&ocirc;ng gian n\\u1ed9i th\\u1ea5t.<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\"><span style=\\\"font-size:14px\\\">TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M:<\\/span><\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '', null, null);

-- ----------------------------
-- Table structure for `product_brand`
-- ----------------------------
DROP TABLE IF EXISTS `product_brand`;
CREATE TABLE `product_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `women` tinyint(1) DEFAULT NULL,
  `men` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `title_seo` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `description_seo` text CHARACTER SET latin1,
  `keyword` text CHARACTER SET latin1,
  `sort` int(11) DEFAULT NULL,
  `lang` char(10) CHARACTER SET latin1 DEFAULT NULL,
  `gender` tinyint(1) DEFAULT '1',
  `view` tinyint(1) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_brand
-- ----------------------------
INSERT INTO `product_brand` VALUES ('10', null, 'Chanel', 'upload/img/tải_xuống_(1).png', 'chanel', '', '0', '1', '0', null, null, null, '1', 'vi', '1', null, null, null);
INSERT INTO `product_brand` VALUES ('11', null, 'puma', 'upload/img/images_(13).jpg', 'puma', '', null, null, '1', null, null, null, '16', 'vi', '1', null, null, null);
INSERT INTO `product_brand` VALUES ('13', null, 'Lanvin', 'upload/img/th17.png', 'lanvin', '', '0', '0', '0', null, null, null, '4', 'vi', '1', null, null, null);
INSERT INTO `product_brand` VALUES ('14', null, 'H&M', 'upload/img/tải_xuống_(2).png', 'hm', '', '0', '1', '0', null, null, null, '5', 'vi', '1', null, null, null);
INSERT INTO `product_brand` VALUES ('15', null, 'Nike', 'upload/img/tải_xuống_(1).jpg', 'nike', '', '0', '0', '1', null, null, null, '6', 'vi', '1', null, null, null);
INSERT INTO `product_brand` VALUES ('20', null, 'Valentino', 'upload/img/tải_xuống_(6).png', 'valentino', '', '0', '0', '0', null, null, null, '7', 'vi', '1', null, null, null);
INSERT INTO `product_brand` VALUES ('21', null, 'Zaza', 'upload/img/tải_xuống_(4).png', 'zaza', '', '0', '0', '0', null, null, null, '8', 'vi', '1', null, null, null);
INSERT INTO `product_brand` VALUES ('22', null, 'Gucci', 'upload/img/images_(4).jpg', 'gucci', '', null, null, null, null, null, null, '15', 'vi', '1', null, null, null);
INSERT INTO `product_brand` VALUES ('23', null, 'Armani', 'upload/img/th4.png', 'armani', '', '0', '0', '0', null, null, null, '1', 'vi', '1', null, null, null);
INSERT INTO `product_brand` VALUES ('24', null, 'Bebe', 'upload/img/8307969_orig.jpg', 'bebe', '', '0', '0', '0', null, null, null, '11', 'vi', '1', null, null, null);
INSERT INTO `product_brand` VALUES ('32', null, 'Dior', 'upload/img/images_(14).jpg', 'dior', '', '0', '0', '0', null, null, null, '12', 'vi', '1', null, null, null);
INSERT INTO `product_brand` VALUES ('33', null, 'Mango', 'upload/img/th7.png', 'mango', '', null, null, null, null, null, null, '14', 'vi', '1', null, null, null);

-- ----------------------------
-- Table structure for `product_category`
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keyword_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description_seo` text CHARACTER SET utf8,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `home` tinyint(1) DEFAULT NULL,
  `sort` int(3) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `coupon` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT '1',
  `gender` tinyint(1) DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES ('1', null, 'danh mục 1', null, null, null, null, 'danh-muc-1', '0', '', null, '16', null, null, null, 'en', null, null);
INSERT INTO `product_category` VALUES ('2', null, 'nội thất phòng ngủ', '', null, '', 'upload/img/category/phong-ngu.jpg', 'noi-that-phong-ngu', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', null, '19', null, null, null, 'vi', null, null);
INSERT INTO `product_category` VALUES ('3', null, 'nội thất phòng ăn', '', null, '', 'upload/img/category/phong-an.jpg', 'noi-that-phong-an', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', null, '20', null, null, null, 'vi', null, null);
INSERT INTO `product_category` VALUES ('4', null, 'nội thất phòng khách', '', null, '', 'upload/img/category/khach.jpg', 'noi-that-phong-khach', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', null, '21', null, null, null, 'vi', null, null);
INSERT INTO `product_category` VALUES ('5', null, 'sofa ', null, null, null, null, 'sofa', '31', '', null, '22', null, null, null, 'vi', null, null);
INSERT INTO `product_category` VALUES ('6', null, 'bàn trà', null, null, null, null, 'ban-tra', '31', '', null, '23', null, null, null, 'vi', null, null);
INSERT INTO `product_category` VALUES ('7', null, 'Kệ Tivi', null, null, null, null, 'ke-tivi', '31', '', null, '24', null, null, null, 'vi', null, null);
INSERT INTO `product_category` VALUES ('8', null, 'bàn ăn', null, null, null, null, 'ban-an', '30', '', null, '26', null, null, null, 'vi', null, null);
INSERT INTO `product_category` VALUES ('9', null, 'Ghế ăn', null, null, null, null, 'ghe-an', '30', '', null, '27', null, null, null, 'vi', null, null);
INSERT INTO `product_category` VALUES ('10', null, 'Tủ đầu giường', null, null, null, null, 'tu-dau-giuong', '29', '', null, '29', null, null, null, 'vi', null, null);
INSERT INTO `product_category` VALUES ('11', null, 'Tủ quần áo', null, null, null, null, 'tu-quan-ao', '29', '', null, '30', null, null, null, 'vi', null, null);

-- ----------------------------
-- Table structure for `product_color`
-- ----------------------------
DROP TABLE IF EXISTS `product_color`;
CREATE TABLE `product_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `lang` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_color
-- ----------------------------
INSERT INTO `product_color` VALUES ('2', '#31859b', 'Màu xanh lam', 'màu xanh lam', 'vi', null, '3', null);
INSERT INTO `product_color` VALUES ('3', '#000000', 'Màu đen', 'màu đen', 'vi', null, '4', null);
INSERT INTO `product_color` VALUES ('4', '#ff0000', 'Màu đỏ', 'màu đỏ', 'vi', null, '5', null);
INSERT INTO `product_color` VALUES ('5', '#7030a0', 'Màu tím', 'màu tím', 'vi', null, '6', null);
INSERT INTO `product_color` VALUES ('6', '#f79646', 'Màu cam', 'màu cam', 'vi', null, '7', null);
INSERT INTO `product_color` VALUES ('7', '#ffffff', 'Màu Trắng', 'màu trắng', 'vi', null, '8', null);
INSERT INTO `product_color` VALUES ('8', '#d99694', 'màu hồng', '', 'vi', null, '9', null);
INSERT INTO `product_color` VALUES ('9', '#7f7f7f', 'màu ghi', 'màu ghi', 'vi', null, '10', null);
INSERT INTO `product_color` VALUES ('10', '#ffc000', 'màu ánh vàng', 'màu ánh vàng', 'vi', null, '11', null);
INSERT INTO `product_color` VALUES ('11', '#974806', 'màu nâu', 'màu nâu', 'vi', null, '12', null);
INSERT INTO `product_color` VALUES ('12', '#4f6128', 'màu xanh xám', 'màu xanh xám', 'vi', null, '13', null);
INSERT INTO `product_color` VALUES ('13', '#d8d8d8', 'Màu ánh bạc', 'màu ánh bạc', 'vi', null, '14', null);
INSERT INTO `product_color` VALUES ('16', '#5f497a', 'tím', '', 'vi', null, '15', null);
INSERT INTO `product_color` VALUES ('17', '#fdeada', 'Màu nude', '<p>m&agrave;u nude</p>\r\n', 'vi', null, '2', null);

-- ----------------------------
-- Table structure for `product_img`
-- ----------------------------
DROP TABLE IF EXISTS `product_img`;
CREATE TABLE `product_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `multi_image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `img_dir` varchar(255) CHARACTER SET latin1 NOT NULL,
  `id_color` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_img
-- ----------------------------

-- ----------------------------
-- Table structure for `product_locale`
-- ----------------------------
DROP TABLE IF EXISTS `product_locale`;
CREATE TABLE `product_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(70) CHARACTER SET latin1 DEFAULT NULL,
  `sort` tinyint(1) DEFAULT NULL,
  `description` text CHARACTER SET latin1,
  `lang` char(10) CHARACTER SET latin1 DEFAULT NULL,
  `alias` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_locale
-- ----------------------------
INSERT INTO `product_locale` VALUES ('4', 'Ấn Độ', null, '2', '', 'vi', 'an-do', null, null, null, null);
INSERT INTO `product_locale` VALUES ('5', 'Thái Lan', null, '3', '', 'vi', 'thai-lan', null, null, null, null);
INSERT INTO `product_locale` VALUES ('6', 'Đài Loan', null, '4', '', 'vi', 'dai-loan', null, null, null, null);
INSERT INTO `product_locale` VALUES ('7', 'Trung Quốc', null, '5', '', 'vi', 'trung-quoc', null, null, null, null);
INSERT INTO `product_locale` VALUES ('8', 'Anh', null, '6', '', 'vi', 'anh', null, null, null, null);
INSERT INTO `product_locale` VALUES ('9', 'Pháp', null, '7', '', 'vi', 'phap', null, null, null, null);
INSERT INTO `product_locale` VALUES ('10', 'Mỹ', null, '8', '', 'vi', 'my', null, null, null, null);
INSERT INTO `product_locale` VALUES ('11', 'Nhật', null, '10', '', 'vi', 'nhat', null, null, null, null);

-- ----------------------------
-- Table structure for `product_old`
-- ----------------------------
DROP TABLE IF EXISTS `product_old`;
CREATE TABLE `product_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hot` tinyint(1) NOT NULL,
  `home` tinyint(1) NOT NULL,
  `focus` tinyint(1) NOT NULL,
  `coupon` tinyint(1) NOT NULL,
  `mostview` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `description_seo` text COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `like` int(11) NOT NULL DEFAULT '0',
  `origin` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `color` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `size` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `caption_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caption_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caption_3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caption_4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_old
-- ----------------------------

-- ----------------------------
-- Table structure for `product_price`
-- ----------------------------
DROP TABLE IF EXISTS `product_price`;
CREATE TABLE `product_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `from_price` int(11) DEFAULT NULL,
  `to_price` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `lang` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_price
-- ----------------------------
INSERT INTO `product_price` VALUES ('1', 'Dưới 100.000 đ', '0', '100000', '1', 'vi');
INSERT INTO `product_price` VALUES ('3', '200.000 - 400.000 đ', '200000', '400000', '2', 'vi');
INSERT INTO `product_price` VALUES ('4', '400.000 - 500.000 đ', '400000', '500000', '3', 'vi');
INSERT INTO `product_price` VALUES ('5', '500.000 - 1000.000 đ', '500000', '1000000', '4', 'vi');
INSERT INTO `product_price` VALUES ('6', '1000000 - 2000000đ', '1000000', '2000000', '5', 'vi');
INSERT INTO `product_price` VALUES ('9', 'Trên 2000000đ', '2000000', '3000000', '6', 'vi');

-- ----------------------------
-- Table structure for `product_size`
-- ----------------------------
DROP TABLE IF EXISTS `product_size`;
CREATE TABLE `product_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sort` int(11) NOT NULL,
  `lang` varchar(100) CHARACTER SET latin1 NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_size
-- ----------------------------
INSERT INTO `product_size` VALUES ('1', 'XL', '', '15', 'vi', null);
INSERT INTO `product_size` VALUES ('2', 'M', '', '13', 'vi', null);
INSERT INTO `product_size` VALUES ('3', 'XS', '', '12', 'vi', null);
INSERT INTO `product_size` VALUES ('4', 'L', '', '14', 'vi', null);
INSERT INTO `product_size` VALUES ('5', 'S', '', '11', 'vi', null);
INSERT INTO `product_size` VALUES ('6', 'XXL', '', '16', 'vi', null);
INSERT INTO `product_size` VALUES ('7', '34', '', '1', 'vi', null);
INSERT INTO `product_size` VALUES ('8', '35', '', '2', 'vi', null);
INSERT INTO `product_size` VALUES ('9', '36', '', '3', 'vi', null);
INSERT INTO `product_size` VALUES ('10', '37', '', '4', 'vi', null);
INSERT INTO `product_size` VALUES ('11', '38', '', '5', 'vi', null);
INSERT INTO `product_size` VALUES ('12', '39', '', '6', 'vi', null);

-- ----------------------------
-- Table structure for `product_tag`
-- ----------------------------
DROP TABLE IF EXISTS `product_tag`;
CREATE TABLE `product_tag` (
  `product_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tag` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `alias` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`product_tag_id`),
  KEY `product_id` (`product_id`),
  KEY `language_id` (`lang`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `product_to_brand`
-- ----------------------------
DROP TABLE IF EXISTS `product_to_brand`;
CREATE TABLE `product_to_brand` (
  `brand_id` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_to_brand
-- ----------------------------

-- ----------------------------
-- Table structure for `product_to_category`
-- ----------------------------
DROP TABLE IF EXISTS `product_to_category`;
CREATE TABLE `product_to_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_to_category
-- ----------------------------
INSERT INTO `product_to_category` VALUES ('46', '18', '4');
INSERT INTO `product_to_category` VALUES ('45', '18', '3');
INSERT INTO `product_to_category` VALUES ('44', '18', '2');
INSERT INTO `product_to_category` VALUES ('28', '16', '4');
INSERT INTO `product_to_category` VALUES ('27', '16', '3');
INSERT INTO `product_to_category` VALUES ('26', '16', '2');
INSERT INTO `product_to_category` VALUES ('29', '17', '2');
INSERT INTO `product_to_category` VALUES ('30', '17', '3');
INSERT INTO `product_to_category` VALUES ('31', '17', '4');
INSERT INTO `product_to_category` VALUES ('37', '15', '4');
INSERT INTO `product_to_category` VALUES ('36', '15', '3');
INSERT INTO `product_to_category` VALUES ('35', '15', '2');
INSERT INTO `product_to_category` VALUES ('38', '14', '2');
INSERT INTO `product_to_category` VALUES ('39', '14', '3');
INSERT INTO `product_to_category` VALUES ('40', '14', '4');
INSERT INTO `product_to_category` VALUES ('41', '13', '2');
INSERT INTO `product_to_category` VALUES ('42', '13', '3');
INSERT INTO `product_to_category` VALUES ('43', '13', '4');
INSERT INTO `product_to_category` VALUES ('47', '12', '2');
INSERT INTO `product_to_category` VALUES ('48', '12', '3');
INSERT INTO `product_to_category` VALUES ('49', '12', '4');
INSERT INTO `product_to_category` VALUES ('55', '11', '4');
INSERT INTO `product_to_category` VALUES ('54', '11', '3');
INSERT INTO `product_to_category` VALUES ('53', '11', '2');
INSERT INTO `product_to_category` VALUES ('56', '6', '2');
INSERT INTO `product_to_category` VALUES ('57', '6', '3');
INSERT INTO `product_to_category` VALUES ('58', '6', '4');

-- ----------------------------
-- Table structure for `product_to_color`
-- ----------------------------
DROP TABLE IF EXISTS `product_to_color`;
CREATE TABLE `product_to_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_to_color
-- ----------------------------
INSERT INTO `product_to_color` VALUES ('67', '5', '2');
INSERT INTO `product_to_color` VALUES ('68', '5', '3');
INSERT INTO `product_to_color` VALUES ('69', '5', '4');
INSERT INTO `product_to_color` VALUES ('70', '5', '5');
INSERT INTO `product_to_color` VALUES ('71', '5', '6');
INSERT INTO `product_to_color` VALUES ('72', '5', '7');
INSERT INTO `product_to_color` VALUES ('75', '3', '2');
INSERT INTO `product_to_color` VALUES ('76', '3', '3');
INSERT INTO `product_to_color` VALUES ('82', '4', '2');
INSERT INTO `product_to_color` VALUES ('81', '8', '3');

-- ----------------------------
-- Table structure for `product_to_option`
-- ----------------------------
DROP TABLE IF EXISTS `product_to_option`;
CREATE TABLE `product_to_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_to_option
-- ----------------------------

-- ----------------------------
-- Table structure for `product_to_season`
-- ----------------------------
DROP TABLE IF EXISTS `product_to_season`;
CREATE TABLE `product_to_season` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) DEFAULT NULL,
  `id_season` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_to_season
-- ----------------------------

-- ----------------------------
-- Table structure for `product_to_size`
-- ----------------------------
DROP TABLE IF EXISTS `product_to_size`;
CREATE TABLE `product_to_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `id_size` int(11) NOT NULL,
  `note` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_to_size
-- ----------------------------
INSERT INTO `product_to_size` VALUES ('1', '120', '1', '');
INSERT INTO `product_to_size` VALUES ('5', '101', '1', '');
INSERT INTO `product_to_size` VALUES ('6', '100', '1', '');
INSERT INTO `product_to_size` VALUES ('7', '99', '1', '');
INSERT INTO `product_to_size` VALUES ('8', '98', '1', '');
INSERT INTO `product_to_size` VALUES ('9', '97', '1', '');
INSERT INTO `product_to_size` VALUES ('10', '96', '1', '');
INSERT INTO `product_to_size` VALUES ('11', '95', '1', '');
INSERT INTO `product_to_size` VALUES ('12', '93', '1', '');
INSERT INTO `product_to_size` VALUES ('13', '94', '1', '');
INSERT INTO `product_to_size` VALUES ('14', '16', '1', '');
INSERT INTO `product_to_size` VALUES ('16', '2', '1', '');
INSERT INTO `product_to_size` VALUES ('17', '3', '1', '');
INSERT INTO `product_to_size` VALUES ('19', '4', '1', '');

-- ----------------------------
-- Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `lat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `lng` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `districtid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('1', '13B Conic Phong Phú', '10.71240234375', '106.64177703857', '1');
INSERT INTO `project` VALUES ('2', '13D Asia Phú Mỹ', '10.705533027649', '106.64806365967', '1');

-- ----------------------------
-- Table structure for `province`
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', 'Hồ Chí Minh', 'SG', '20000', null);
INSERT INTO `province` VALUES ('2', 'Hà Nội', 'HN', '30000', null);
INSERT INTO `province` VALUES ('3', 'Đà Nẵng', 'DDN', '0', null);
INSERT INTO `province` VALUES ('4', 'Bình Dương', 'BD', '0', null);
INSERT INTO `province` VALUES ('5', 'Đồng Nai', 'DNA', '0', null);
INSERT INTO `province` VALUES ('6', 'Khánh Hòa', 'KH', '0', null);
INSERT INTO `province` VALUES ('7', 'Hải Phòng', 'HP', '0', null);
INSERT INTO `province` VALUES ('8', 'Long An', 'LA', '0', null);
INSERT INTO `province` VALUES ('9', 'Quảng Nam', 'QNA', '0', null);
INSERT INTO `province` VALUES ('10', 'Bà Rịa Vũng Tàu', 'VT', '0', null);
INSERT INTO `province` VALUES ('11', 'Đắk Lắk', 'DDL', '0', null);
INSERT INTO `province` VALUES ('12', 'Cần Thơ', 'CT', '0', null);
INSERT INTO `province` VALUES ('13', 'Bình Thuận  ', 'BTH', '0', null);
INSERT INTO `province` VALUES ('14', 'Lâm Đồng', 'LDD', '0', null);
INSERT INTO `province` VALUES ('15', 'Thừa Thiên Huế', 'TTH', '0', null);
INSERT INTO `province` VALUES ('16', 'Kiên Giang', 'KG', '0', null);
INSERT INTO `province` VALUES ('17', 'Bắc Ninh', 'BN', '0', null);
INSERT INTO `province` VALUES ('18', 'Quảng Ninh', 'QNI', '0', null);
INSERT INTO `province` VALUES ('19', 'Thanh Hóa', 'TH', '0', null);
INSERT INTO `province` VALUES ('20', 'Nghệ An', 'NA', '0', null);
INSERT INTO `province` VALUES ('21', 'Hải Dương', 'HD', '0', null);
INSERT INTO `province` VALUES ('22', 'Gia Lai', 'GL', '0', null);
INSERT INTO `province` VALUES ('23', 'Bình Phước', 'BP', '0', null);
INSERT INTO `province` VALUES ('24', 'Hưng Yên', 'HY', '0', null);
INSERT INTO `province` VALUES ('25', 'Bình Định', 'BDD', '0', null);
INSERT INTO `province` VALUES ('26', 'Tiền Giang', 'TG', '0', null);
INSERT INTO `province` VALUES ('27', 'Thái Bình', 'TB', '0', null);
INSERT INTO `province` VALUES ('28', 'Bắc Giang', 'BG', '0', null);
INSERT INTO `province` VALUES ('29', 'Hòa Bình', 'HB', '0', null);
INSERT INTO `province` VALUES ('30', 'An Giang', 'AG', '0', null);
INSERT INTO `province` VALUES ('31', 'Vĩnh Phúc', 'VP', '0', null);
INSERT INTO `province` VALUES ('32', 'Tây Ninh', 'TNI', '0', null);
INSERT INTO `province` VALUES ('33', 'Thái Nguyên', 'TN', '0', null);
INSERT INTO `province` VALUES ('34', 'Lào Cai', 'LCA', '0', null);
INSERT INTO `province` VALUES ('35', 'Nam Định', 'NDD', '0', null);
INSERT INTO `province` VALUES ('36', 'Quảng Ngãi', 'QNG', '0', null);
INSERT INTO `province` VALUES ('37', 'Bến Tre', 'BTR', '0', null);
INSERT INTO `province` VALUES ('38', 'Đắk Nông', 'DNO', '0', null);
INSERT INTO `province` VALUES ('39', 'Cà Mau', 'CM', '120000', null);
INSERT INTO `province` VALUES ('40', 'Vĩnh Long', 'VL', '3', null);
INSERT INTO `province` VALUES ('41', 'Ninh Bình', 'NB', '320', null);
INSERT INTO `province` VALUES ('42', 'Phú Thọ', 'PT', '25', null);
INSERT INTO `province` VALUES ('43', 'Ninh Thuận', 'NT', '120000', null);
INSERT INTO `province` VALUES ('44', 'Phú Yên', 'PY', '123456', null);
INSERT INTO `province` VALUES ('45', 'Hà Nam', 'HNA', '40000', null);
INSERT INTO `province` VALUES ('46', 'Hà Tĩnh', 'HT', '12000', null);
INSERT INTO `province` VALUES ('47', 'Đồng Tháp', 'DDT', '0', null);
INSERT INTO `province` VALUES ('48', 'Sóc Trăng', 'ST', '0', null);
INSERT INTO `province` VALUES ('49', 'Kon Tum', 'KT', '0', null);
INSERT INTO `province` VALUES ('50', 'Quảng Bình', 'QB', '0', null);
INSERT INTO `province` VALUES ('51', 'Quảng Trị', 'QT', '0', null);
INSERT INTO `province` VALUES ('52', 'Trà Vinh', 'TV', '0', null);
INSERT INTO `province` VALUES ('53', 'Hậu Giang', 'HGI', '0', null);
INSERT INTO `province` VALUES ('54', 'Sơn La', 'SL', '0', null);
INSERT INTO `province` VALUES ('55', 'Bạc Liêu', 'BL', '0', null);
INSERT INTO `province` VALUES ('56', 'Yên Bái', 'YB', '0', null);
INSERT INTO `province` VALUES ('57', 'Tuyên Quang', 'TQ', '0', null);
INSERT INTO `province` VALUES ('58', 'Điện Biên', 'DDB', '0', null);
INSERT INTO `province` VALUES ('59', 'Lai Châu', 'LCH', '0', null);
INSERT INTO `province` VALUES ('60', 'Lạng Sơn', 'LS', '0', null);
INSERT INTO `province` VALUES ('61', 'Hà Giang', 'HG', '0', null);
INSERT INTO `province` VALUES ('62', 'Bắc Kạn', 'BK', '0', null);
INSERT INTO `province` VALUES ('63', 'Cao Bằng', 'CB', '0', null);

-- ----------------------------
-- Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sanpham` int(11) DEFAULT NULL,
  `comment` text CHARACTER SET utf8,
  `flg` int(11) DEFAULT NULL,
  `reply` int(11) DEFAULT NULL,
  `review` tinyint(1) DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('13', '5', 'hhhhggg', null, '0', null, 'sieuwebqt', 'dangtranmanh@gmail.com', '1505724581', null);
INSERT INTO `questions` VALUES ('14', '5', 'hhhhggg', null, '0', null, 'sieuwebqt', 'dangtranmanh@gmail.com', '1505724675', null);
INSERT INTO `questions` VALUES ('15', '5', 'noi dung', null, '0', null, 'nguyen đát', 'dat@gmail.com', '1505725003', null);
INSERT INTO `questions` VALUES ('16', '5', 'noi dung câu hỏi', null, '0', null, 'tran manh', 'tranmanh@gmail.com', '1505725440', null);
INSERT INTO `questions` VALUES ('17', '5', 'noi dung cua toi', null, '0', null, 'khowebqts', 'tranmanh@gmail.com', '1505725631', null);
INSERT INTO `questions` VALUES ('18', '5', 'noi dung', null, '0', '1', 'tranmanh', 'tranmanh@gmail.com', '1505725689', null);
INSERT INTO `questions` VALUES ('19', '5', 'noi dung', null, '0', '1', 'sieuwebqt', 'tranmanh@gmail.com', '1505725843', null);
INSERT INTO `questions` VALUES ('20', '5', 'noi dung', null, '0', '1', 'sieuwebqt', 'tranmanh@gmail.com', '1505725878', null);
INSERT INTO `questions` VALUES ('21', '5', 'noi dung', null, '0', '1', 'sieuwebqt', 'tranmanh@gmail.com', '1505725928', null);
INSERT INTO `questions` VALUES ('22', '5', 'noi dung câu hỏi', null, '0', '1', 'tranmanh', 'dangtranmanh@gmail.com', '1505726276', null);
INSERT INTO `questions` VALUES ('23', '5', 'noi dung cau tra loi', null, '21', '1', 'van đạt', 'dat@gmail.com', '1505726568', null);
INSERT INTO `questions` VALUES ('24', '4', 'sâssa', null, '0', '1', 'Vân', 'buivananh.th@gmail.com', '1505981779', null);

-- ----------------------------
-- Table structure for `raovat`
-- ----------------------------
DROP TABLE IF EXISTS `raovat`;
CREATE TABLE `raovat` (
  `home` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `description_seo` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  `caption_1` text COLLATE utf8_unicode_ci,
  `caption_2` text COLLATE utf8_unicode_ci,
  `locale` int(11) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `caption_3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(8) DEFAULT NULL,
  `tags` text COLLATE utf8_unicode_ci,
  `raovat_dir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multi_image` text COLLATE utf8_unicode_ci,
  `img_dir` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tinhtrang` tinyint(1) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `style` int(11) DEFAULT NULL,
  `id_value` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of raovat
-- ----------------------------
INSERT INTO `raovat` VALUES ('1', null, '0', '1', '0', '0', '<p>n&ocirc;i dung m&ocirc; ta</p>\r\n', '', '', '', '<p>noi dung chi tiet</p>\r\n', null, null, null, '<p>noi dung phu</p>\r\n', '0', '1', '0', 'vi', null, '1504065201', null, null, null, null, '0', null, '620', '1', null, null, '0', 'bán nhà tai hà nội', '', 'ban-nha-tai-ha-noi', null, null);
INSERT INTO `raovat` VALUES ('1', null, '0', '1', '12424334', '12332342', '<p>n&ocirc;i dung m&ocirc; ta</p>\r\n', '', '', '', '<p>noi dung chi tiet</p>\r\n', null, '29', null, '<p>noi dung phu</p>\r\n', '6', '2', '0', 'vi', null, '1504068779', null, '30082017', null, null, '0', null, '620', '2', null, null, '14', 'bán nhà tai hà nội đường số 237', '', 'ban-nha-tai-ha-noi-duong-so-237', 'db652781fa07e94e75c9023c9de373cf.jpg', null);
INSERT INTO `raovat` VALUES ('1', '1', '12', '1', '1234566', '1234333', '<p>n&ocirc;i dung m&ocirc; ta</p>\r\n', '', '', '', '<p>noi dung chi tiet</p>\r\n', null, '28', null, '<p>noi dung phu</p>\r\n', '5', '3', '0', 'vi', null, '1516353599', null, '30082017', null, null, '0', null, null, '3', null, null, '10', 'bán nhà tai hà nội viet nam', '', 'ban-nha-tai-ha-noi-viet-nam', '766564be313697c3bdae612b28a89d0a.jpg', '1');

-- ----------------------------
-- Table structure for `raovat_category`
-- ----------------------------
DROP TABLE IF EXISTS `raovat_category`;
CREATE TABLE `raovat_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `home` tinyint(1) DEFAULT '0',
  `sort` int(3) DEFAULT '0',
  `hot` tinyint(1) DEFAULT '0',
  `focus` tinyint(1) DEFAULT '0',
  `lang` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keyword_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description_seo` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of raovat_category
-- ----------------------------
INSERT INTO `raovat_category` VALUES ('20', 'Điện thoại, viễn thông ', 'upload/img/phone.png', 'dien-thoai-vien-thong', '0', '                                                                                                                                                                                                            ', '0', '1', '0', '0', 'vi', null, null, null);
INSERT INTO `raovat_category` VALUES ('27', 'Ô tô, xe máy, xe đạp', 'upload/img/oto.png', 'o-to-xe-may-xe-dap', '0', '', '0', '0', '0', '0', 'vi', null, null, null);
INSERT INTO `raovat_category` VALUES ('28', 'Xây dựng, công nghiệp', 'upload/img/connghiep.png', 'xay-dung-cong-nghiep', '0', '                                                                                                                                        ', '0', '0', '0', '0', 'vi', null, null, null);
INSERT INTO `raovat_category` VALUES ('29', 'Thời trang, phụ kiện', 'upload/img/thoitrang.png', 'thoi-trang-phu-kien', '0', '', '0', '0', '0', '0', 'vi', null, null, null);
INSERT INTO `raovat_category` VALUES ('30', 'Mẹ & Bé', 'upload/img/me_be.png', 'me-be', '0', '', '0', '0', '0', '0', 'vi', null, null, null);
INSERT INTO `raovat_category` VALUES ('31', 'Sức khỏe, sắc đẹp', 'upload/img/suckhoe.png', 'suc-khoe-sac-dep', '0', '', '0', '0', '0', '0', 'vi', null, null, null);
INSERT INTO `raovat_category` VALUES ('33', 'Nội thất, ngoại thất', 'upload/img/noithat.png', 'noi-that-ngoai-that', '0', '', '0', '0', '0', '0', 'vi', null, null, null);
INSERT INTO `raovat_category` VALUES ('34', 'Sách, đồ văn phòng', 'upload/img/sach.png', 'sach-do-van-phong', '0', '', '0', '0', '0', '0', 'vi', null, null, null);
INSERT INTO `raovat_category` VALUES ('35', 'Hoa, quà tặng, đồ chơi', 'upload/img/qua_tang.png', 'hoa-qua-tang-do-choi', '0', '', '0', '0', '0', '0', 'vi', null, null, null);
INSERT INTO `raovat_category` VALUES ('42', 'Khác', '', 'khac', '0', '', '0', '2', '1', '1', 'vi', '', null, '');

-- ----------------------------
-- Table structure for `raovat_images`
-- ----------------------------
DROP TABLE IF EXISTS `raovat_images`;
CREATE TABLE `raovat_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url` char(200) CHARACTER SET utf8 DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of raovat_images
-- ----------------------------
INSERT INTO `raovat_images` VALUES ('1', null, '3', 'upload/img/raovats_multi/f46482c87ab814e5d5ea59819e568564.jpg', null, null, null);
INSERT INTO `raovat_images` VALUES ('2', null, '3', 'upload/img/raovats_multi/f4b467b6d383eb5d6062b2fa9c9c0708.jpg', null, null, null);
INSERT INTO `raovat_images` VALUES ('3', null, '3', 'upload/img/raovats_multi/e86f742e7d986de26413443600fa8535.jpg', null, null, null);
INSERT INTO `raovat_images` VALUES ('4', null, '3', 'upload/img/raovats_multi/d640c2db815fbba330306bdbdc9e9326.jpg', null, null, null);
INSERT INTO `raovat_images` VALUES ('5', null, '2', 'upload/img/raovats_multi/3915f302b19fa28fc4001d6a66238681.jpg', null, null, null);
INSERT INTO `raovat_images` VALUES ('6', null, '2', 'upload/img/raovats_multi/866917b6bab0b8c3eeb0f52f45efd867.jpg', null, null, null);
INSERT INTO `raovat_images` VALUES ('7', null, '2', 'upload/img/raovats_multi/a8f9dbaa6c627b3a47a0f442cbe0c1ab.jpg', null, null, null);

-- ----------------------------
-- Table structure for `raovat_tag`
-- ----------------------------
DROP TABLE IF EXISTS `raovat_tag`;
CREATE TABLE `raovat_tag` (
  `raovat_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `raovat_id` int(11) NOT NULL,
  `lang` varchar(11) CHARACTER SET utf8 NOT NULL,
  `tag` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `alias` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`raovat_tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of raovat_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `raovat_to_category`
-- ----------------------------
DROP TABLE IF EXISTS `raovat_to_category`;
CREATE TABLE `raovat_to_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_raovat` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of raovat_to_category
-- ----------------------------
INSERT INTO `raovat_to_category` VALUES ('18', '3', '27');
INSERT INTO `raovat_to_category` VALUES ('19', '3', '28');
INSERT INTO `raovat_to_category` VALUES ('26', '2', '27');
INSERT INTO `raovat_to_category` VALUES ('27', '2', '28');
INSERT INTO `raovat_to_category` VALUES ('28', '2', '29');

-- ----------------------------
-- Table structure for `resources`
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `resource` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `active` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES ('10', '0', 'product', 'Quản lý sản phẩm', null, '3', 'fa-bars', '', '1');
INSERT INTO `resources` VALUES ('11', '10', 'products', 'Danh sách sản phẩm', null, '1', 'fa-files-o', 'vnadmin/product/products', '1');
INSERT INTO `resources` VALUES ('13', '116', 'listColor', 'Màu sắc', null, '3', 'fa-circle-o', 'vnadmin/attribute/listColor', '0');
INSERT INTO `resources` VALUES ('14', '116', 'listprice', 'Khoảng giá', null, '4', 'fa-circle-o', 'vnadmin/attribute/listprice', '0');
INSERT INTO `resources` VALUES ('15', '116', 'listOption', 'Kích thước', null, '5', 'fa-circle-o', 'vnadmin/attribute/listOption', '0');
INSERT INTO `resources` VALUES ('17', '0', 'menu', 'Quản lý menu', null, '7', 'fa-bars', 'vnadmin/menu/menulist', '1');
INSERT INTO `resources` VALUES ('18', '10', 'category_pro', 'Danh mục sản phẩm', null, '2', 'fa-files-o', 'vnadmin/product/categories', '1');
INSERT INTO `resources` VALUES ('19', '173', 'comments', 'Đánh giá bình luận', null, '3', 'fa-comments-o', 'vnadmin/comment/comments', '0');
INSERT INTO `resources` VALUES ('20', '173', 'questions', 'Danh sách hỏi đáp', null, '4', 'fa-question-circle', 'vnadmin/comment/questions', '0');
INSERT INTO `resources` VALUES ('22', '174', 'tag', 'Thẻ tags sản phẩm', null, '5', 'fa-tag', 'vnadmin/tag/listtagpro', '0');
INSERT INTO `resources` VALUES ('25', '0', 'news', 'Quản lý tin bài', null, '6', 'fa-newspaper-o', '', '1');
INSERT INTO `resources` VALUES ('26', '25', 'newslist', 'Danh sách tin', null, '1', 'fa-file-text-o', 'vnadmin/news/newslist', '1');
INSERT INTO `resources` VALUES ('28', '25', 'tagsnews', 'Tags tin tức', null, '3', 'fa fa-tag', '', '0');
INSERT INTO `resources` VALUES ('29', '0', 'media', 'Quản lý media', null, '1', 'fa-picture-o', '', '0');
INSERT INTO `resources` VALUES ('30', '29', 'listAll', 'Danh sách media', null, '1', 'fa-file-image-o', 'vnadmin/media/listAll', '0');
INSERT INTO `resources` VALUES ('31', '25', 'categories', 'Danh mục tin', null, '2', 'fa-newspaper-o', 'vnadmin/news/categories', '1');
INSERT INTO `resources` VALUES ('32', '29', 'categories', 'Danh mục media', null, '2', 'fa-file-image-o', 'vnadmin/media/categories', '0');
INSERT INTO `resources` VALUES ('33', '0', 'users', 'Quản lý thành viên', null, '16', 'fa-users', '', '0');
INSERT INTO `resources` VALUES ('34', '33', 'smslist', 'Tin Nhắn SMS', null, '6', 'fa-commenting-o', 'vnadmin/users/smslist', '0');
INSERT INTO `resources` VALUES ('39', '0', 'pages', 'Quản lý nội dung', null, '9', 'fa-file-o', 'vnadmin/pages/pagelist', '1');
INSERT INTO `resources` VALUES ('40', '0', 'video', 'Quản Lý Video', null, '2', 'fa-video-camera', '', '0');
INSERT INTO `resources` VALUES ('42', '40', 'listAll', 'Danh sách video', null, '1', 'fa-file-video-o', 'vnadmin/video/listAll', '0');
INSERT INTO `resources` VALUES ('43', '40', 'category_video', 'Danh mục video', null, '2', 'fa-video-camera', 'vnadmin/video/categories', '0');
INSERT INTO `resources` VALUES ('44', '107', 'listraovat', 'Danh sách rao vặt', null, '1', 'fa-files-o', 'vnadmin/raovat/listraovat', '0');
INSERT INTO `resources` VALUES ('49', '107', 'categories', 'Danh mục rao vặt', null, '2', 'fa-files-o', 'vnadmin/raovat/categories', '0');
INSERT INTO `resources` VALUES ('53', '0', 'imageupload', 'Quản lý banner', null, '8', 'fa-file-image-o', 'vnadmin/imageupload/banners', '1');
INSERT INTO `resources` VALUES ('54', '162', 'listWard', 'Quản lý phường xã', null, '3', 'fa-map-signs', 'vnadmin/province/listWard', '0');
INSERT INTO `resources` VALUES ('56', '162', 'listDistric', 'Quản lý quận huyện', null, '2', 'fa-map-marker', 'vnadmin/province/listDistric', '0');
INSERT INTO `resources` VALUES ('57', '162', 'street', 'Quản lý đường phố', null, '4', 'fa-road', 'vnadmin/province/listStreet', '0');
INSERT INTO `resources` VALUES ('58', '97', 'soldout', 'danh sách hết hàng', null, '1', 'fa-circle-o', 'admin/report/soldout', '0');
INSERT INTO `resources` VALUES ('63', '10', 'cat_add', 'Thêm - Sửa danh mục sp', null, '9', '', '', '0');
INSERT INTO `resources` VALUES ('64', '95', 'maps', 'Cấu hình bản đồ Maps', null, '1', ' fa-map-o', 'vnadmin/admin/bando_map', '1');
INSERT INTO `resources` VALUES ('65', '10', 'add', 'Thêm -Sửa sản phẩm', null, '7', '', '', '0');
INSERT INTO `resources` VALUES ('66', '17', 'delete', 'Xóa menu', null, '2', '', '', '0');
INSERT INTO `resources` VALUES ('67', '10', 'delete_once', 'Xóa sản phẩm', null, '8', '', '', '0');
INSERT INTO `resources` VALUES ('95', '0', 'admin', 'Hệ thống', null, '17', 'fa-gears text-red', '', '1');
INSERT INTO `resources` VALUES ('96', '95', 'site_option', 'Cấu hình hệ thống', null, '0', 'fa-circle-o text-red', 'vnadmin/admin/site_option', '1');
INSERT INTO `resources` VALUES ('97', '0', 'report', 'Báo cáo-Thống kê', null, '19', '', '', '0');
INSERT INTO `resources` VALUES ('98', '104', 'listProvince', 'Phí vận chuyển', null, '3', 'fa-truck', 'vnadmin/order/listProvince', '0');
INSERT INTO `resources` VALUES ('99', '90', 'categories', 'Danh mục share', null, '0', null, null, null);
INSERT INTO `resources` VALUES ('100', '90', 'cat_add', 'Thêm danh mục share', null, '0', null, null, null);
INSERT INTO `resources` VALUES ('101', '90', 'cat_edit', 'Sửa danh mục share', null, '0', null, null, null);
INSERT INTO `resources` VALUES ('102', '90', 'delete_cat', 'Xóa danh mục share', null, '0', null, null, null);
INSERT INTO `resources` VALUES ('103', '97', 'bestsellers', 'Hàng bán chạy', null, '2', 'fa-circle-o', 'admin/report/bestsellers', '0');
INSERT INTO `resources` VALUES ('104', '0', 'order', 'Quản lý giỏ hàng', null, '4', 'fa-shopping-cart', '', '1');
INSERT INTO `resources` VALUES ('105', '104', 'orders', 'Danh sách đặt hàng', null, '1', 'fa-cart-arrow-down', 'vnadmin/order/orders', '1');
INSERT INTO `resources` VALUES ('106', '104', 'listSale', 'Mã giảm giá', null, '2', 'fa-files-o', 'vnadmin/order/listSale', '0');
INSERT INTO `resources` VALUES ('107', '0', 'raovat', 'Quản lý rao vặt', null, '13', 'fa-bars', '', '0');
INSERT INTO `resources` VALUES ('108', '0', 'inuser', 'Ý kiến khách hàng', null, '0', 'fa-user-plus', 'vnadmin/inuser/categories', '0');
INSERT INTO `resources` VALUES ('109', '107', 'tagtinrao', 'Tags tin rao', null, '3', 'fa-tag', '', '0');
INSERT INTO `resources` VALUES ('110', '0', 'email', 'Quản lý email', null, '14', ' fa-envelope-o ', 'vnadmin/email/emails', '0');
INSERT INTO `resources` VALUES ('111', '0', 'support', 'Hỗ trợ  trực tuyến', null, '15', 'fa-life-ring', 'vnadmin/support/listSuport', '0');
INSERT INTO `resources` VALUES ('112', '95', 'store_shopping', 'Chuỗi cửa hàng', null, '5', 'fa-files-o', 'vnadmin/store/Ds_shopping', '0');
INSERT INTO `resources` VALUES ('113', '116', 'listBrand', 'Thương hiệu', null, '1', 'fa-circle-o', 'vnadmin/attribute/listBrand', '0');
INSERT INTO `resources` VALUES ('114', '116', 'listLocale', 'Xuất sứ', null, '2', 'fa-circle-o', 'vnadmin/attribute/listLocale', '0');
INSERT INTO `resources` VALUES ('115', '0', 'contact', 'Quản lý liên hệ', null, '10', 'fa-bars', 'vnadmin/contact/contacts', '1');
INSERT INTO `resources` VALUES ('116', '0', 'attribute', 'Thuộc tính sản phẩm', null, '5', 'fa-bars', '', '0');
INSERT INTO `resources` VALUES ('117', '108', 'cate_add', 'Thêm và Sửa', null, '2', '', '', '0');
INSERT INTO `resources` VALUES ('118', '108', 'delete_cat_once', 'Xóa', null, '3', '', '', '0');
INSERT INTO `resources` VALUES ('119', '108', 'categories', 'ý kiến khách hàng', null, '1', 'fa-files-o', 'vnadmin/inuser/categories', '0');
INSERT INTO `resources` VALUES ('120', '17', 'addmenu', 'Thêm - Sửa menu', null, '0', '', '', '0');
INSERT INTO `resources` VALUES ('121', '10', 'del_cat_once', 'Xóa danh mục sp', null, '10', '', '', '0');
INSERT INTO `resources` VALUES ('122', '29', 'add', 'Thêm -Sửa media', null, '3', '', '', '0');
INSERT INTO `resources` VALUES ('123', '29', 'delete_once', 'Xóa media', null, '4', '', '', '0');
INSERT INTO `resources` VALUES ('124', '29', 'cat_add', 'Thêm - Sửa danh mục media', null, '5', '', '', '0');
INSERT INTO `resources` VALUES ('125', '29', 'del_cat_once', 'Xóa danh mục media', null, '6', '', '', '0');
INSERT INTO `resources` VALUES ('126', '40', 'add', 'Thêm sửa video', null, '3', '', '', '0');
INSERT INTO `resources` VALUES ('127', '40', 'delete_once', 'Xóa video', null, '4', '', '', '0');
INSERT INTO `resources` VALUES ('128', '40', 'cat_add', 'Thêm danh mục video', null, '5', '', '', '0');
INSERT INTO `resources` VALUES ('129', '40', 'del_cat_once', 'Xóa danh mục video', null, '6', '', '', '0');
INSERT INTO `resources` VALUES ('130', '10', 'delete_once_question', 'Xóa hỏi đáp', null, '12', '', '', '0');
INSERT INTO `resources` VALUES ('131', '10', 'delete_once_comment', 'Xóa bình luận', null, '11', '', '', '0');
INSERT INTO `resources` VALUES ('132', '104', 'delete_once_orders', 'Xóa đơn hàng', null, '4', '', '', '0');
INSERT INTO `resources` VALUES ('133', '104', 'addSale', 'Thêm - Sửa mã giảm giá', null, '5', '', '', '0');
INSERT INTO `resources` VALUES ('134', '104', 'del_once_sale', 'Xóa mã giảm giá', null, '6', '', '', '0');
INSERT INTO `resources` VALUES ('135', '116', 'addbrand', 'Thêm - Sửa thương hiệu', null, '6', '', '', '0');
INSERT INTO `resources` VALUES ('136', '116', 'delete_brand_once', 'Xóa thương hiệu', null, '7', '', '', '0');
INSERT INTO `resources` VALUES ('137', '116', 'addlocale', 'Thêm - Sửa xuất sứ', null, '7', '', '', '0');
INSERT INTO `resources` VALUES ('138', '116', 'delete_locale_once', 'Xóa xuất sứ', null, '8', '', '', '0');
INSERT INTO `resources` VALUES ('139', '116', 'addcolor', 'Thêm - Sửa màu sắc', null, '9', '', '', '0');
INSERT INTO `resources` VALUES ('140', '116', 'delete_color_once', 'Xóa màu sắc', null, '10', '', '', '0');
INSERT INTO `resources` VALUES ('141', '116', 'addprice', 'Thêm - Sửa khoản giá', null, '11', '', '', '0');
INSERT INTO `resources` VALUES ('142', '116', 'delete_price_once', 'Xóa khoảng giá', null, '12', '', '', '0');
INSERT INTO `resources` VALUES ('143', '116', 'addoption', 'Thêm - Sửa kích thước', null, '12', '', '', '0');
INSERT INTO `resources` VALUES ('144', '116', 'delete_option_once', 'Xóa kích thước', null, '13', '', '', '0');
INSERT INTO `resources` VALUES ('145', '25', 'addnews', 'Thêm - Sửa tin tức', null, '4', '', '', '0');
INSERT INTO `resources` VALUES ('146', '25', 'delete_once_news', 'Xóa tin tức', null, '5', '', '', '0');
INSERT INTO `resources` VALUES ('147', '25', 'cat_add_news', 'Thêm - Sửa danh mục tin', null, '6', '', '', '0');
INSERT INTO `resources` VALUES ('148', '25', 'del_catnews_once', 'Xóa danh mục tin', null, '7', '', '', '0');
INSERT INTO `resources` VALUES ('149', '53', 'addbanner', 'Thêm - Sửa banner', null, '1', '', '', '0');
INSERT INTO `resources` VALUES ('150', '53', 'delete_Banner_once', 'Xóa banner', null, '2', '', '', '0');
INSERT INTO `resources` VALUES ('151', '39', 'addpage', 'Thêm - Sửa nội dung', null, '1', '', '', '0');
INSERT INTO `resources` VALUES ('152', '39', 'delete_page_once', 'Xóa nội dung', null, '2', '', '', '0');
INSERT INTO `resources` VALUES ('153', '115', 'delete', 'Xóa liên hệ', null, '1', '', '', '0');
INSERT INTO `resources` VALUES ('154', '107', 'add', 'Thêm - Sửa rao vặt', null, '4', '', '', '0');
INSERT INTO `resources` VALUES ('155', '107', 'delete_raovat_once', 'Xóa tin rao', null, '5', '', '', '0');
INSERT INTO `resources` VALUES ('156', '107', 'cat_add', 'Thêm - Sửa danh mục tin rao', null, '6', '', '', '0');
INSERT INTO `resources` VALUES ('157', '107', 'del_cattinrao_once', 'Xóa danh mục tin rao', null, '7', '', '', '0');
INSERT INTO `resources` VALUES ('158', '110', 'delete', 'Xóa email', null, '1', '', '', '0');
INSERT INTO `resources` VALUES ('159', '111', 'add', 'Thêm - Sửa hỗ trợ trực tuyến', null, '1', '', '', '0');
INSERT INTO `resources` VALUES ('160', '111', 'delete_support_once', 'Xóa hỗ trợ trực tuyến', null, '2', '', '', '0');
INSERT INTO `resources` VALUES ('161', '33', 'delete_users_once', 'Xóa thành viên', null, '1', '', '', '0');
INSERT INTO `resources` VALUES ('162', '0', 'province', 'Danh sách quan huyện', null, '18', '', '', '0');
INSERT INTO `resources` VALUES ('163', '33', 'add_users', 'Thêm thành viên quan trị', null, '1', '', 'vnadmin/users/add_users', '0');
INSERT INTO `resources` VALUES ('164', '33', 'delete_users_once', 'Xóa thành viên quản trị', null, '10', '', '', '0');
INSERT INTO `resources` VALUES ('165', '33', 'listuser_admin', 'Danh sách tài khoản quản trị', null, '0', '', 'vnadmin/users/listuser_admin', '0');
INSERT INTO `resources` VALUES ('166', '33', 'listusers', 'Danh sách thành viên', null, '0', '', 'vnadmin/users/listusers', '0');
INSERT INTO `resources` VALUES ('167', '17', 'menulist', 'Danh sách menu', null, '1', '', 'vnadmin/menu/menulist', '0');
INSERT INTO `resources` VALUES ('168', '53', 'banners', 'Danh sách banner', null, '0', '', 'vnadmin/imageupload/banners', '0');
INSERT INTO `resources` VALUES ('169', '39', 'pagelist', 'Danh sách nội dung', null, '0', '', 'vnadmin/pages/pagelist', '0');
INSERT INTO `resources` VALUES ('170', '110', 'emails', 'Danh sách email', null, '0', '', 'vnadmin/email/emails', '0');
INSERT INTO `resources` VALUES ('171', '115', 'contacts', 'Danh sách liên hệ', null, '0', '', 'vnadmin/contact/contacts', '0');
INSERT INTO `resources` VALUES ('172', '111', 'listSuport', 'Danh sách support', null, '0', '', 'vnadmin/support/listSuport', '0');
INSERT INTO `resources` VALUES ('173', '0', 'comment', 'Quản lý bình luận', null, '7', 'fa-comments-o', '', '0');
INSERT INTO `resources` VALUES ('174', '0', 'tag', 'Quản lý thẻ tag', null, '6', 'fa-tags', '', '0');
INSERT INTO `resources` VALUES ('175', '174', 'tag', 'Thẻ tags tin tức', null, '2', 'fa-tag', 'vnadmin/tag/listnew', '0');
INSERT INTO `resources` VALUES ('177', '95', 'setup_product', ' Cấu hình sản phẩm', null, '20', 'fa-gears', 'vnadmin/admin/setup_product', '1');

-- ----------------------------
-- Table structure for `site_log`
-- ----------------------------
DROP TABLE IF EXISTS `site_log`;
CREATE TABLE `site_log` (
  `site_log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no_of_visits` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `requested_url` tinytext CHARACTER SET utf8,
  `referer_page` tinytext CHARACTER SET utf8,
  `page_name` tinytext CHARACTER SET utf8,
  `query_string` tinytext CHARACTER SET utf8,
  `user_agent` tinytext CHARACTER SET utf8,
  `is_unique` tinyint(1) DEFAULT '0',
  `access_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `visits_count` int(11) DEFAULT '0',
  PRIMARY KEY (`site_log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7938 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of site_log
-- ----------------------------
INSERT INTO `site_log` VALUES ('7570', '1', '118.70.74.179', '/pm_trung_2/pm/xuat-web', 'http://websiteqts.com/pm_trung_2//pm/header_footer', 'pm/xuat_web', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-19 08:34:24', '0');
INSERT INTO `site_log` VALUES ('7569', '1', '118.70.74.179', '/pm_trung_2/select-update-db', 'http://websiteqts.com/pm_trung_2//pm/header_footer', 'Pm/update_database', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-19 08:33:51', '0');
INSERT INTO `site_log` VALUES ('7567', '1', '118.70.74.179', '/pm_trung_2/pm/reset-code', 'http://websiteqts.com/pm_trung_2//pm/header_footer', 'pm/reset_code', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-19 08:33:16', '0');
INSERT INTO `site_log` VALUES ('7568', '1', '118.70.74.179', '/pm_trung_2/', 'http://websiteqts.com/pm_trung_2/', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-19 08:33:17', '0');
INSERT INTO `site_log` VALUES ('7565', '1', '118.70.74.179', '/pm_trung_2//pm/header_footer', '', 'Header_footer/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-19 08:33:12', '0');
INSERT INTO `site_log` VALUES ('7566', '1', '118.70.74.179', '/pm_trung_2/', 'http://websiteqts.com/pm_trung_2//pm/header_footer', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-19 08:33:13', '0');
INSERT INTO `site_log` VALUES ('7563', '1', '118.70.74.179', '/pm_trung_2/', 'http://websiteqts.com/pm_trung_2//pm/header_footer', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-18 13:35:11', '0');
INSERT INTO `site_log` VALUES ('7564', '1', '118.70.74.179', '/pm_trung_2//pm/header_footer', '', 'Header_footer/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-19 08:33:12', '0');
INSERT INTO `site_log` VALUES ('7562', '1', '118.70.74.179', '/pm_trung_2//pm/header_footer', 'http://websiteqts.com/pm_trung_2//pm/header_footer', 'Header_footer/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-18 13:35:11', '0');
INSERT INTO `site_log` VALUES ('7561', '1', '118.70.74.179', '/pm_trung_2/pm/xuat-web', 'http://websiteqts.com/pm_trung_2//pm/header_footer', 'pm/xuat_web', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-18 13:34:49', '0');
INSERT INTO `site_log` VALUES ('7558', '1', '118.70.74.179', '/pm_trung_2/', 'http://websiteqts.com/pm_trung_2//pm/header_footer', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-18 13:34:19', '0');
INSERT INTO `site_log` VALUES ('7559', '1', '118.70.74.179', '/pm_trung_2/pm/reset-code', 'http://websiteqts.com/pm_trung_2//pm/header_footer', 'pm/reset_code', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-18 13:34:22', '0');
INSERT INTO `site_log` VALUES ('7560', '1', '118.70.74.179', '/pm_trung_2/', 'http://websiteqts.com/pm_trung_2/', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-18 13:34:23', '0');
INSERT INTO `site_log` VALUES ('7556', null, '54.245.27.119', '/pm_trung_2/', '', 'home/index', '', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)', '0', '2018-06-18 12:01:02', '1');
INSERT INTO `site_log` VALUES ('7557', '1', '118.70.74.179', '/pm_trung_2//pm/header_footer', '', 'Header_footer/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-18 13:34:17', '0');
INSERT INTO `site_log` VALUES ('7554', '1', '118.70.74.179', '/pm_trung_2/', 'http://websiteqts.com/pm_trung_2/pm/header_footer', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-18 11:59:12', '0');
INSERT INTO `site_log` VALUES ('7555', null, '52.37.28.253', '/pm_trung_2/pm/header_footer', '', 'Header_footer/index', '', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)', '0', '2018-06-18 12:00:21', '1');
INSERT INTO `site_log` VALUES ('7553', '1', '118.70.74.179', '/pm_trung_2/pm/header_footer', '', 'Header_footer/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-18 11:59:10', '0');
INSERT INTO `site_log` VALUES ('7552', null, '66.102.7.212', '/pm_trung_2/pm/header_footer', 'http://www.google.com/search', 'Header_footer/index', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview) Chrome/41.0.2272.118 Safari/537.36', '0', '2018-06-18 11:59:08', '1');
INSERT INTO `site_log` VALUES ('7551', null, '66.102.6.150', '/pm_trung_2/pm/header_footer', 'http://www.google.com/search', 'Header_footer/index', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview) Chrome/41.0.2272.118 Safari/537.36', '0', '2018-06-18 10:00:05', '1');
INSERT INTO `site_log` VALUES ('7549', null, '66.102.6.151', '/pm_trung_2/pm/header_footer', '', 'Header_footer/index', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', '0', '2018-06-18 08:20:34', '1');
INSERT INTO `site_log` VALUES ('7550', null, '66.102.6.151', '/pm_trung_2/pm/header_footer', 'http://www.google.com/search', 'Header_footer/index', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview) Chrome/41.0.2272.118 Safari/537.36', '0', '2018-06-18 08:20:34', '1');
INSERT INTO `site_log` VALUES ('7937', '1', '::1', '/demo_hoachat/page/gioi-thieu.html', 'http://localhost/demo_hoachat/san-pham/bo-phong-ngu-han-quoc-co-ghe-hoc-xoay-a689bg15.html', 'pages/page_content', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:50:20', '0');
INSERT INTO `site_log` VALUES ('7936', '1', '::1', '/demo_hoachat/san-pham/bo-phong-ngu-han-quoc-co-ghe-hoc-xoay-a689bg15.html', 'http://localhost/demo_hoachat/', 'products/detail', 'g-ngu-han-quoc-co-ghe-hoc-xoay-a689bg15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:49:59', '0');
INSERT INTO `site_log` VALUES ('7935', '1', '::1', '/demo_hoachat/', 'http://localhost/demo_hoachat/contact', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:49:36', '0');
INSERT INTO `site_log` VALUES ('7934', '1', '::1', '/demo_hoachat/contact', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'contact/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:47:25', '0');
INSERT INTO `site_log` VALUES ('7933', '1', '::1', '/demo_hoachat/san-pham/tu-ao-2-canh-hien-dai-phong-cach-han-quoc-a689d2.html', 'http://localhost/demo_hoachat/', 'products/detail', '-canh-hien-dai-phong-cach-han-quoc-a689d2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:47:23', '0');
INSERT INTO `site_log` VALUES ('7932', '1', '::1', '/demo_hoachat/contact', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'contact/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:46:53', '0');
INSERT INTO `site_log` VALUES ('7931', '1', '::1', '/demo_hoachat/san-pham/tu-ao-2-canh-hien-dai-phong-cach-han-quoc-a689d2.html', 'http://localhost/demo_hoachat/', 'products/detail', '-canh-hien-dai-phong-cach-han-quoc-a689d2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:46:23', '0');
INSERT INTO `site_log` VALUES ('7930', '1', '::1', '/demo_hoachat/contact', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'contact/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:40:11', '0');
INSERT INTO `site_log` VALUES ('7929', '1', '::1', '/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'http://localhost/demo_hoachat/new/mau-thiet-ke-biet-thu-dep-2018-phong-cach-hien-dai-sang-trong.html', 'products/pro_bycategory', 'ngu', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:39:52', '0');
INSERT INTO `site_log` VALUES ('7928', '1', '::1', '/demo_hoachat/new/mau-thiet-ke-biet-thu-dep-2018-phong-cach-hien-dai-sang-trong.html', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'news/detail', 't-ke-biet-thu-dep-2018-phong-cach-hien-dai-sang-trong', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:39:38', '0');
INSERT INTO `site_log` VALUES ('7927', '1', '::1', '/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'products/pro_bycategory', 'ngu', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:38:04', '0');
INSERT INTO `site_log` VALUES ('7926', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:37:59', '0');
INSERT INTO `site_log` VALUES ('7925', '1', '::1', '/demo_hoachat/vnadmin/menu/menulist', 'http://localhost/demo_hoachat/vnadmin/menu/addmenu?p=bottom', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:37:59', '0');
INSERT INTO `site_log` VALUES ('7924', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:36:41', '0');
INSERT INTO `site_log` VALUES ('7923', '1', '::1', '/demo_hoachat/vnadmin/menu/menulist', 'http://localhost/demo_hoachat/vnadmin/menu/addmenu?p=bottom', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:36:41', '0');
INSERT INTO `site_log` VALUES ('7922', '1', '::1', '/demo_hoachat/vnadmin/menu/addmenu?p=bottom', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/addmenu', 'addmenu', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:36:21', '0');
INSERT INTO `site_log` VALUES ('7921', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:36:11', '0');
INSERT INTO `site_log` VALUES ('7920', '1', '::1', '/demo_hoachat/vnadmin/menu/menulist', 'http://localhost/demo_hoachat/vnadmin/menu/addmenu?p=bottom', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:36:11', '0');
INSERT INTO `site_log` VALUES ('7919', '1', '::1', '/demo_hoachat/vnadmin/menu/addmenu?p=bottom', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/addmenu', 'addmenu', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:36:04', '0');
INSERT INTO `site_log` VALUES ('7918', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:35:58', '0');
INSERT INTO `site_log` VALUES ('7917', '1', '::1', '/demo_hoachat/vnadmin/menu/menulist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:35:57', '0');
INSERT INTO `site_log` VALUES ('7916', '1', '::1', '/demo_hoachat/vnadmin/menu/delete/57', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/delete', '/delete/57', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:35:57', '0');
INSERT INTO `site_log` VALUES ('7915', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:35:54', '0');
INSERT INTO `site_log` VALUES ('7914', '1', '::1', '/demo_hoachat/vnadmin/menu/menulist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:35:54', '0');
INSERT INTO `site_log` VALUES ('7913', '1', '::1', '/demo_hoachat/vnadmin/menu/delete/58', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/delete', '/delete/58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:35:54', '0');
INSERT INTO `site_log` VALUES ('7912', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:35:49', '0');
INSERT INTO `site_log` VALUES ('7911', '1', '::1', '/demo_hoachat/vnadmin/menu/menulist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:35:49', '0');
INSERT INTO `site_log` VALUES ('7910', '1', '::1', '/demo_hoachat/vnadmin/menu/delete/68', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/delete', '/delete/68', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:35:49', '0');
INSERT INTO `site_log` VALUES ('7909', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:35:42', '0');
INSERT INTO `site_log` VALUES ('7908', '1', '::1', '/demo_hoachat/vnadmin/menu/menulist', 'http://localhost/demo_hoachat/vnadmin/product/categories', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:35:42', '0');
INSERT INTO `site_log` VALUES ('7907', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:34:22', '0');
INSERT INTO `site_log` VALUES ('7906', '1', '::1', '/demo_hoachat/vnadmin/menu/menulist', 'http://localhost/demo_hoachat/vnadmin/product/categories', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:34:22', '0');
INSERT INTO `site_log` VALUES ('7905', '1', '::1', '/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'products/pro_bycategory', 'ngu', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:33:50', '0');
INSERT INTO `site_log` VALUES ('7904', '1', '::1', '/demo_hoachat/', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:33:47', '0');
INSERT INTO `site_log` VALUES ('7903', '1', '::1', '/demo_hoachat/vnadmin/product/categories', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/2', 'product/categories', 'egories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:27:14', '0');
INSERT INTO `site_log` VALUES ('7902', '1', '::1', '/demo_hoachat/ajax/ajax/update_fill', 'http://localhost/demo_hoachat/vnadmin/group/listGroup', 'ajax/update_fill', 'fill', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/70.4.222 Chrome/64.4.3282.222 Safari/537.36', '0', '2018-06-20 14:27:09', '0');
INSERT INTO `site_log` VALUES ('7901', '1', '::1', '/demo_hoachat/vnadmin/group/listGroup', 'http://localhost/demo_hoachat/vnadmin/admin/setup_product', 'group/listGroup', 'stGroup', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/70.4.222 Chrome/64.4.3282.222 Safari/537.36', '0', '2018-06-20 14:23:17', '0');
INSERT INTO `site_log` VALUES ('7900', '1', '::1', '/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'products/pro_bycategory', 'ngu', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:14:56', '0');
INSERT INTO `site_log` VALUES ('7899', '1', '::1', '/demo_hoachat/san-pham/tab-dau-giuong-go-go-do-cao-cap-926b.html', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'products/detail', '-giuong-go-go-do-cao-cap-926b', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:14:45', '0');
INSERT INTO `site_log` VALUES ('7898', '1', '::1', '/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'http://localhost/demo_hoachat/404_override', 'products/pro_bycategory', 'ngu', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:04:42', '0');
INSERT INTO `site_log` VALUES ('7897', '1', '::1', '/demo_hoachat/vnadmin/product/categories', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/2', 'product/categories', 'egories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:04:09', '0');
INSERT INTO `site_log` VALUES ('7896', '1', '::1', '/demo_hoachat/vnadmin/product/cat_edit/2', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/2', 'product/cat_edit', 'at_edit/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:04:09', '0');
INSERT INTO `site_log` VALUES ('7895', '1', '::1', '/demo_hoachat/vnadmin/alias/checkCatEdit', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/2', 'alias/checkCatEdit', 'CatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:04:09', '0');
INSERT INTO `site_log` VALUES ('7894', '1', '::1', '/demo_hoachat/vnadmin/product/cat_edit/2', 'http://localhost/demo_hoachat/vnadmin/product/categories', 'product/cat_edit', 'at_edit/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:04:07', '0');
INSERT INTO `site_log` VALUES ('7893', '1', '::1', '/demo_hoachat/vnadmin/product/categories', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/3', 'product/categories', 'egories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:04:05', '0');
INSERT INTO `site_log` VALUES ('7892', '1', '::1', '/demo_hoachat/vnadmin/product/cat_edit/3', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/3', 'product/cat_edit', 'at_edit/3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:04:05', '0');
INSERT INTO `site_log` VALUES ('7891', '1', '::1', '/demo_hoachat/vnadmin/alias/checkCatEdit', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/3', 'alias/checkCatEdit', 'CatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:04:05', '0');
INSERT INTO `site_log` VALUES ('7890', '1', '::1', '/demo_hoachat/vnadmin/product/cat_edit/3', 'http://localhost/demo_hoachat/vnadmin/product/categories', 'product/cat_edit', 'at_edit/3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:04:03', '0');
INSERT INTO `site_log` VALUES ('7889', '1', '::1', '/demo_hoachat/vnadmin/product/categories', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/4', 'product/categories', 'egories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:04:02', '0');
INSERT INTO `site_log` VALUES ('7888', '1', '::1', '/demo_hoachat/vnadmin/product/cat_edit/4', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/4', 'product/cat_edit', 'at_edit/4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:04:01', '0');
INSERT INTO `site_log` VALUES ('7887', '1', '::1', '/demo_hoachat/vnadmin/alias/checkCatEdit', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/4', 'alias/checkCatEdit', 'CatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:04:01', '0');
INSERT INTO `site_log` VALUES ('7886', '1', '::1', '/demo_hoachat/vnadmin/product/cat_edit/4', 'http://localhost/demo_hoachat/vnadmin/product/categories', 'product/cat_edit', 'at_edit/4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:03:35', '0');
INSERT INTO `site_log` VALUES ('7885', '1', '::1', '/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'http://localhost/demo_hoachat/404_override', 'products/pro_bycategory', 'ngu', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:02:58', '0');
INSERT INTO `site_log` VALUES ('7884', '1', '::1', '/demo_hoachat/danh-muc/img/product9.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product9.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:51', '0');
INSERT INTO `site_log` VALUES ('7883', '1', '::1', '/demo_hoachat/danh-muc/img/product8.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product8.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:51', '0');
INSERT INTO `site_log` VALUES ('7882', '1', '::1', '/demo_hoachat/danh-muc/img/product7.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product7.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:51', '0');
INSERT INTO `site_log` VALUES ('7881', '1', '::1', '/demo_hoachat/danh-muc/img/product6.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product6.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:51', '0');
INSERT INTO `site_log` VALUES ('7880', '1', '::1', '/demo_hoachat/danh-muc/img/product3.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product3.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:51', '0');
INSERT INTO `site_log` VALUES ('7879', '1', '::1', '/demo_hoachat/danh-muc/img/product5.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product5.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:51', '0');
INSERT INTO `site_log` VALUES ('7878', '1', '::1', '/demo_hoachat/danh-muc/img/product4.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product4.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:51', '0');
INSERT INTO `site_log` VALUES ('7877', '1', '::1', '/demo_hoachat/danh-muc/img/product2.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product2.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:51', '0');
INSERT INTO `site_log` VALUES ('7876', '1', '::1', '/demo_hoachat/danh-muc/img/product1.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product1.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:51', '0');
INSERT INTO `site_log` VALUES ('7875', '1', '::1', '/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'http://localhost/demo_hoachat/404_override', 'products/pro_bycategory', 'ngu', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:50', '0');
INSERT INTO `site_log` VALUES ('7874', '1', '::1', '/demo_hoachat/danh-muc/img/product9.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product9.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:28', '0');
INSERT INTO `site_log` VALUES ('7873', '1', '::1', '/demo_hoachat/danh-muc/img/product8.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product8.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:28', '0');
INSERT INTO `site_log` VALUES ('7872', '1', '::1', '/demo_hoachat/danh-muc/img/product7.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product7.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:28', '0');
INSERT INTO `site_log` VALUES ('7871', '1', '::1', '/demo_hoachat/danh-muc/img/product4.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product4.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:28', '0');
INSERT INTO `site_log` VALUES ('7870', '1', '::1', '/demo_hoachat/danh-muc/img/product6.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product6.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:28', '0');
INSERT INTO `site_log` VALUES ('7869', '1', '::1', '/demo_hoachat/danh-muc/img/product3.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product3.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:27', '0');
INSERT INTO `site_log` VALUES ('7868', '1', '::1', '/demo_hoachat/danh-muc/img/product5.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product5.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:27', '0');
INSERT INTO `site_log` VALUES ('7867', '1', '::1', '/demo_hoachat/danh-muc/img/product1.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product1.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:27', '0');
INSERT INTO `site_log` VALUES ('7866', '1', '::1', '/demo_hoachat/danh-muc/img/product2.png', 'http://localhost/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'danh-muc/img', 'product2.png', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 14:01:27', '0');
INSERT INTO `site_log` VALUES ('7865', '1', '::1', '/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'http://localhost/demo_hoachat/404_override', 'products/pro_bycategory', 'ngu', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:27', '0');
INSERT INTO `site_log` VALUES ('7864', '1', '::1', '/demo_hoachat/404_override', 'http://localhost/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'error/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:25', '0');
INSERT INTO `site_log` VALUES ('7863', '1', '::1', '/demo_hoachat/vnadmin/product/categories', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/2', 'product/categories', 'egories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:23', '0');
INSERT INTO `site_log` VALUES ('7862', '1', '::1', '/demo_hoachat/vnadmin/product/cat_edit/2', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/2', 'product/cat_edit', 'at_edit/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:23', '0');
INSERT INTO `site_log` VALUES ('7861', '1', '::1', '/demo_hoachat/vnadmin/alias/checkCatEdit', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/2', 'alias/checkCatEdit', 'CatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:23', '0');
INSERT INTO `site_log` VALUES ('7860', '1', '::1', '/demo_hoachat/vnadmin/product/cat_edit/2', 'http://localhost/demo_hoachat/vnadmin/product/categories', 'product/cat_edit', 'at_edit/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:22', '0');
INSERT INTO `site_log` VALUES ('7859', '1', '::1', '/demo_hoachat/vnadmin/product/categories', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/3', 'product/categories', 'egories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:20', '0');
INSERT INTO `site_log` VALUES ('7858', '1', '::1', '/demo_hoachat/vnadmin/product/cat_edit/3', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/3', 'product/cat_edit', 'at_edit/3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:20', '0');
INSERT INTO `site_log` VALUES ('7857', '1', '::1', '/demo_hoachat/vnadmin/alias/checkCatEdit', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/3', 'alias/checkCatEdit', 'CatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:20', '0');
INSERT INTO `site_log` VALUES ('7856', '1', '::1', '/demo_hoachat/vnadmin/product/cat_edit/3', 'http://localhost/demo_hoachat/vnadmin/product/categories', 'product/cat_edit', 'at_edit/3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:19', '0');
INSERT INTO `site_log` VALUES ('7855', '1', '::1', '/demo_hoachat/vnadmin/product/categories', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/4', 'product/categories', 'egories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:18', '0');
INSERT INTO `site_log` VALUES ('7854', '1', '::1', '/demo_hoachat/vnadmin/product/cat_edit/4', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/4', 'product/cat_edit', 'at_edit/4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:18', '0');
INSERT INTO `site_log` VALUES ('7853', '1', '::1', '/demo_hoachat/vnadmin/alias/checkCatEdit', 'http://localhost/demo_hoachat/vnadmin/product/cat_edit/4', 'alias/checkCatEdit', 'CatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:18', '0');
INSERT INTO `site_log` VALUES ('7852', '1', '::1', '/demo_hoachat/vnadmin/product/cat_edit/4', 'http://localhost/demo_hoachat/vnadmin/product/categories', 'product/cat_edit', 'at_edit/4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:17', '0');
INSERT INTO `site_log` VALUES ('7851', '1', '::1', '/demo_hoachat/vnadmin/product/categories', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'product/categories', 'egories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:15', '0');
INSERT INTO `site_log` VALUES ('7850', '1', '::1', '/demo_hoachat/404_override', 'http://localhost/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'error/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:03', '0');
INSERT INTO `site_log` VALUES ('7849', '1', '::1', '/demo_hoachat/danh-muc/noi-that-phong-ngu.html', 'http://localhost/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'products/pro_bycategory', 'ngu', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:03', '0');
INSERT INTO `site_log` VALUES ('7848', '1', '::1', '/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'news/detail', 'i-noi-that-cho-khong-gian-nha-an-tuong1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:54:00', '0');
INSERT INTO `site_log` VALUES ('7847', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:53:56', '0');
INSERT INTO `site_log` VALUES ('7846', '1', '::1', '/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'news/detail', 'i-noi-that-cho-khong-gian-nha-an-tuong1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:53:46', '0');
INSERT INTO `site_log` VALUES ('7845', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:53:44', '0');
INSERT INTO `site_log` VALUES ('7844', '1', '::1', '/demo_hoachat/vnadmin/menu/menulist', 'http://localhost/demo_hoachat/vnadmin/menu/edit/55?p=main', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:53:44', '0');
INSERT INTO `site_log` VALUES ('7843', '1', '::1', '/demo_hoachat/vnadmin/menu/edit/55?p=main', 'http://localhost/demo_hoachat/vnadmin/menu/edit/55?p=main', 'menu/edit', 'nu/edit/55', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:53:44', '0');
INSERT INTO `site_log` VALUES ('7842', '1', '::1', '/demo_hoachat/admin/menu/get_iditem', 'http://localhost/demo_hoachat/vnadmin/menu/edit/55?p=main', 'menu/get_iditem', 'ditem', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:53:41', '0');
INSERT INTO `site_log` VALUES ('7841', '1', '::1', '/demo_hoachat/admin/menu/cate_show/products/vi', 'http://localhost/demo_hoachat/vnadmin/menu/edit/55?p=main', 'menu/cate_show', '_show/products/vi', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:53:41', '0');
INSERT INTO `site_log` VALUES ('7840', '1', '::1', '/demo_hoachat/admin/menu/get_subcat', 'http://localhost/demo_hoachat/vnadmin/menu/edit/55?p=main', 'menu/get_subcat', 'ubcat', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:53:41', '0');
INSERT INTO `site_log` VALUES ('7839', '1', '::1', '/demo_hoachat/vnadmin/menu/edit/55?p=main', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/edit', 'nu/edit/55', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:53:31', '0');
INSERT INTO `site_log` VALUES ('7838', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:53:28', '0');
INSERT INTO `site_log` VALUES ('7837', '1', '::1', '/demo_hoachat/vnadmin/menu/menulist', 'http://localhost/demo_hoachat/vnadmin/news/newslist', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:53:28', '0');
INSERT INTO `site_log` VALUES ('7836', '1', '::1', '/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'news/detail', 'i-noi-that-cho-khong-gian-nha-an-tuong1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:53:11', '0');
INSERT INTO `site_log` VALUES ('7835', '1', '::1', '/demo_hoachat/danh-muc-tin/tin-tuc.html', 'http://localhost/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'news/new_bycategory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:52:11', '0');
INSERT INTO `site_log` VALUES ('7834', '1', '::1', '/demo_hoachat/new/mau-thiet-ke-biet-thu-dep-2018-phong-cach-hien-dai-sang-trong.html', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'news/detail', 't-ke-biet-thu-dep-2018-phong-cach-hien-dai-sang-trong', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:45:32', '0');
INSERT INTO `site_log` VALUES ('7833', '1', '::1', '/demo_hoachat/danh-muc-tin/tin-tuc.html', 'http://localhost/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'news/new_bycategory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:45:24', '0');
INSERT INTO `site_log` VALUES ('7832', '1', '::1', '/demo_hoachat/', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:44:49', '0');
INSERT INTO `site_log` VALUES ('7831', '1', '::1', '/demo_hoachat/new/mau-thiet-ke-biet-thu-dep-2018-phong-cach-hien-dai-sang-trong.html', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'news/detail', 't-ke-biet-thu-dep-2018-phong-cach-hien-dai-sang-trong', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:44:01', '0');
INSERT INTO `site_log` VALUES ('7830', '1', '::1', '/demo_hoachat/danh-muc-tin/tin-tuc.html', 'http://localhost/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'news/new_bycategory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:59', '0');
INSERT INTO `site_log` VALUES ('7829', '1', '::1', '/demo_hoachat/vnadmin/news/newslist', 'http://localhost/demo_hoachat/vnadmin/news/edit/1', 'news/newslist', 'ewslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:57', '0');
INSERT INTO `site_log` VALUES ('7828', '1', '::1', '/demo_hoachat/vnadmin/news/edit/1', 'http://localhost/demo_hoachat/vnadmin/news/edit/1', 'news/edit', 'ws/edit/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:57', '0');
INSERT INTO `site_log` VALUES ('7827', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/news/edit/1', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:57', '0');
INSERT INTO `site_log` VALUES ('7826', '1', '::1', '/demo_hoachat/vnadmin/news/edit/1', 'http://localhost/demo_hoachat/vnadmin/news/newslist', 'news/edit', 'ws/edit/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:56', '0');
INSERT INTO `site_log` VALUES ('7825', '1', '::1', '/demo_hoachat/vnadmin/news/newslist', 'http://localhost/demo_hoachat/vnadmin/news/edit/2', 'news/newslist', 'ewslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:54', '0');
INSERT INTO `site_log` VALUES ('7824', '1', '::1', '/demo_hoachat/vnadmin/news/edit/2', 'http://localhost/demo_hoachat/vnadmin/news/edit/2', 'news/edit', 'ws/edit/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:54', '0');
INSERT INTO `site_log` VALUES ('7823', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/news/edit/2', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:54', '0');
INSERT INTO `site_log` VALUES ('7822', '1', '::1', '/demo_hoachat/vnadmin/news/edit/2', 'http://localhost/demo_hoachat/vnadmin/news/newslist', 'news/edit', 'ws/edit/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:53', '0');
INSERT INTO `site_log` VALUES ('7821', '1', '::1', '/demo_hoachat/vnadmin/news/newslist', 'http://localhost/demo_hoachat/vnadmin/news/edit/3', 'news/newslist', 'ewslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:51', '0');
INSERT INTO `site_log` VALUES ('7820', '1', '::1', '/demo_hoachat/vnadmin/news/edit/3', 'http://localhost/demo_hoachat/vnadmin/news/edit/3', 'news/edit', 'ws/edit/3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:51', '0');
INSERT INTO `site_log` VALUES ('7819', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/news/edit/3', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:50', '0');
INSERT INTO `site_log` VALUES ('7818', '1', '::1', '/demo_hoachat/vnadmin/news/edit/3', 'http://localhost/demo_hoachat/vnadmin/news/newslist', 'news/edit', 'ws/edit/3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:49', '0');
INSERT INTO `site_log` VALUES ('7817', '1', '::1', '/demo_hoachat/vnadmin/news/newslist', 'http://localhost/demo_hoachat/vnadmin/news/edit/4', 'news/newslist', 'ewslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:47', '0');
INSERT INTO `site_log` VALUES ('7816', '1', '::1', '/demo_hoachat/vnadmin/news/edit/4', 'http://localhost/demo_hoachat/vnadmin/news/edit/4', 'news/edit', 'ws/edit/4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:47', '0');
INSERT INTO `site_log` VALUES ('7815', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/news/edit/4', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:47', '0');
INSERT INTO `site_log` VALUES ('7814', '1', '::1', '/demo_hoachat/vnadmin/news/edit/4', 'http://localhost/demo_hoachat/vnadmin/news/newslist', 'news/edit', 'ws/edit/4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:46', '0');
INSERT INTO `site_log` VALUES ('7813', '1', '::1', '/demo_hoachat/vnadmin/news/newslist', 'http://localhost/demo_hoachat/vnadmin/news/edit/5', 'news/newslist', 'ewslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:42', '0');
INSERT INTO `site_log` VALUES ('7812', '1', '::1', '/demo_hoachat/vnadmin/news/edit/5', 'http://localhost/demo_hoachat/vnadmin/news/edit/5', 'news/edit', 'ws/edit/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:42', '0');
INSERT INTO `site_log` VALUES ('7811', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/news/edit/5', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:42', '0');
INSERT INTO `site_log` VALUES ('7810', '1', '::1', '/demo_hoachat/vnadmin/news/edit/5', 'http://localhost/demo_hoachat/vnadmin/news/newslist', 'news/edit', 'ws/edit/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:41', '0');
INSERT INTO `site_log` VALUES ('7809', '1', '::1', '/demo_hoachat/danh-muc-tin/tin-tuc.html', 'http://localhost/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'news/new_bycategory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:37', '0');
INSERT INTO `site_log` VALUES ('7808', '1', '::1', '/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'news/detail', 'i-noi-that-cho-khong-gian-nha-an-tuong1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:35', '0');
INSERT INTO `site_log` VALUES ('7807', '1', '::1', '/demo_hoachat/danh-muc-tin/tin-tuc.html', 'http://localhost/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'news/new_bycategory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:33', '0');
INSERT INTO `site_log` VALUES ('7806', '1', '::1', '/demo_hoachat/404_override', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'error/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:31', '0');
INSERT INTO `site_log` VALUES ('7805', '1', '::1', '/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong.html', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'news/detail', 'i-noi-that-cho-khong-gian-nha-an-tuong', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:43:31', '0');
INSERT INTO `site_log` VALUES ('7804', '1', '::1', '/demo_hoachat/danh-muc-tin/tin-tuc.html', 'http://localhost/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'news/new_bycategory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:41:46', '0');
INSERT INTO `site_log` VALUES ('7803', '1', '::1', '/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'news/detail', 'i-noi-that-cho-khong-gian-nha-an-tuong1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:39:36', '0');
INSERT INTO `site_log` VALUES ('7802', '1', '::1', '/demo_hoachat/danh-muc-tin/tin-tuc.html', 'http://localhost/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'news/new_bycategory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:38:49', '0');
INSERT INTO `site_log` VALUES ('7801', '1', '::1', '/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'news/detail', 'i-noi-that-cho-khong-gian-nha-an-tuong1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:38:22', '0');
INSERT INTO `site_log` VALUES ('7800', '1', '::1', '/demo_hoachat/danh-muc-tin/tin-tuc.html', 'http://localhost/demo_hoachat/page/gioi-thieu.html', 'news/new_bycategory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:38:16', '0');
INSERT INTO `site_log` VALUES ('7799', '1', '::1', '/demo_hoachat/vnadmin/news/newslist', 'http://localhost/demo_hoachat/vnadmin/news/edit/6', 'news/newslist', 'ewslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:38:15', '0');
INSERT INTO `site_log` VALUES ('7798', '1', '::1', '/demo_hoachat/vnadmin/news/edit/6', 'http://localhost/demo_hoachat/vnadmin/news/edit/6', 'news/edit', 'ws/edit/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:38:15', '0');
INSERT INTO `site_log` VALUES ('7797', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/news/edit/6', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:38:14', '0');
INSERT INTO `site_log` VALUES ('7796', '1', '::1', '/demo_hoachat/vnadmin/news/edit/6', 'http://localhost/demo_hoachat/vnadmin/news/newslist', 'news/edit', 'ws/edit/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:38:10', '0');
INSERT INTO `site_log` VALUES ('7795', '1', '::1', '/demo_hoachat/vnadmin/news/newslist', 'http://localhost/demo_hoachat/vnadmin/news/categories', 'news/newslist', 'ewslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:38:04', '0');
INSERT INTO `site_log` VALUES ('7794', '1', '::1', '/demo_hoachat/danh-muc-tin/tin-tuc.html', 'http://localhost/demo_hoachat/page/gioi-thieu.html', 'news/new_bycategory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:37:36', '0');
INSERT INTO `site_log` VALUES ('7793', '1', '::1', '/demo_hoachat/404_override', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'error/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:37:34', '0');
INSERT INTO `site_log` VALUES ('7792', '1', '::1', '/demo_hoachat/new/xu-huong-thiet-ke-noi-that-biet-thu-hien-dai-cao-cap.html', 'http://localhost/demo_hoachat/danh-muc-tin/tin-tuc.html', 'news/detail', '-thiet-ke-noi-that-biet-thu-hien-dai-cao-cap', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 13:37:34', '0');
INSERT INTO `site_log` VALUES ('7791', '1', '::1', '/demo_hoachat/danh-muc-tin/tin-tuc.html', 'http://localhost/demo_hoachat/page/gioi-thieu.html', 'news/new_bycategory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:34', '0');
INSERT INTO `site_log` VALUES ('7790', '1', '::1', '/demo_hoachat/page/gioi-thieu.html', 'http://localhost/demo_hoachat/404_override', 'pages/page_content', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:33', '0');
INSERT INTO `site_log` VALUES ('7789', '1', '::1', '/demo_hoachat/404_override', 'http://localhost/demo_hoachat/', 'error/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:32', '0');
INSERT INTO `site_log` VALUES ('7788', '1', '::1', '/demo_hoachat/vnadmin/news/categories', 'http://localhost/demo_hoachat/vnadmin/news/cat_edit/1', 'news/categories', 'egories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:30', '0');
INSERT INTO `site_log` VALUES ('7787', '1', '::1', '/demo_hoachat/vnadmin/news/cat_edit/1', 'http://localhost/demo_hoachat/vnadmin/news/cat_edit/1', 'news/cat_edit', 'at_edit/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:30', '0');
INSERT INTO `site_log` VALUES ('7786', '1', '::1', '/demo_hoachat/vnadmin/alias/checkCatEdit', 'http://localhost/demo_hoachat/vnadmin/news/cat_edit/1', 'alias/checkCatEdit', 'CatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:30', '0');
INSERT INTO `site_log` VALUES ('7785', '1', '::1', '/demo_hoachat/vnadmin/news/cat_edit/1', 'http://localhost/demo_hoachat/vnadmin/news/categories', 'news/cat_edit', 'at_edit/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:28', '0');
INSERT INTO `site_log` VALUES ('7784', '1', '::1', '/demo_hoachat/vnadmin/news/categories', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'news/categories', 'egories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:26', '0');
INSERT INTO `site_log` VALUES ('7783', '1', '::1', '/demo_hoachat/404_override', 'http://localhost/demo_hoachat/', 'error/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:18', '0');
INSERT INTO `site_log` VALUES ('7782', '1', '::1', '/demo_hoachat/danh-muc-tin/tin-tuc.html', 'http://localhost/demo_hoachat/', 'news/new_bycategory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:18', '0');
INSERT INTO `site_log` VALUES ('7781', '1', '::1', '/demo_hoachat/', 'http://localhost/demo_hoachat/404_override', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:17', '0');
INSERT INTO `site_log` VALUES ('7780', '1', '::1', '/demo_hoachat/404_override', 'http://localhost/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'error/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:15', '0');
INSERT INTO `site_log` VALUES ('7778', '1', '::1', '/demo_hoachat/vnadmin/menu/menulist', 'http://localhost/demo_hoachat/vnadmin/menu/edit/63?p=main', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:14', '0');
INSERT INTO `site_log` VALUES ('7779', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:14', '0');
INSERT INTO `site_log` VALUES ('7777', '1', '::1', '/demo_hoachat/vnadmin/menu/edit/63?p=main', 'http://localhost/demo_hoachat/vnadmin/menu/edit/63?p=main', 'menu/edit', 'nu/edit/63', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:14', '0');
INSERT INTO `site_log` VALUES ('7776', '1', '::1', '/demo_hoachat/admin/menu/get_iditem', 'http://localhost/demo_hoachat/vnadmin/menu/edit/63?p=main', 'menu/get_iditem', 'ditem', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:11', '0');
INSERT INTO `site_log` VALUES ('7775', '1', '::1', '/demo_hoachat/admin/menu/cate_show/news/vi', 'http://localhost/demo_hoachat/vnadmin/menu/edit/63?p=main', 'menu/cate_show', '_show/news/vi', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:11', '0');
INSERT INTO `site_log` VALUES ('7774', '1', '::1', '/demo_hoachat/admin/menu/get_subcat', 'http://localhost/demo_hoachat/vnadmin/menu/edit/63?p=main', 'menu/get_subcat', 'ubcat', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:11', '0');
INSERT INTO `site_log` VALUES ('7773', '1', '::1', '/demo_hoachat/admin/menu/get_iditem', 'http://localhost/demo_hoachat/vnadmin/menu/edit/63?p=main', 'menu/get_iditem', 'ditem', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:10', '0');
INSERT INTO `site_log` VALUES ('7772', '1', '::1', '/demo_hoachat/admin/menu/cate_show/0/vi', 'http://localhost/demo_hoachat/vnadmin/menu/edit/63?p=main', 'menu/cate_show', '_show/0/vi', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:10', '0');
INSERT INTO `site_log` VALUES ('7771', '1', '::1', '/demo_hoachat/admin/menu/get_subcat', 'http://localhost/demo_hoachat/vnadmin/menu/edit/63?p=main', 'menu/get_subcat', 'ubcat', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:10', '0');
INSERT INTO `site_log` VALUES ('7770', '1', '::1', '/demo_hoachat/vnadmin/menu/edit/63?p=main', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/edit', 'nu/edit/63', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:08', '0');
INSERT INTO `site_log` VALUES ('7769', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:05', '0');
INSERT INTO `site_log` VALUES ('7768', '1', '::1', '/demo_hoachat/vnadmin/menu/menulist', 'http://localhost/demo_hoachat/vnadmin/product/products', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:05', '0');
INSERT INTO `site_log` VALUES ('7767', '1', '::1', '/demo_hoachat/404_override', 'http://localhost/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'error/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:00', '0');
INSERT INTO `site_log` VALUES ('7766', '1', '::1', '/demo_hoachat/danh-muc-tin/tin-tuc.html', 'http://localhost/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'news/new_bycategory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:44:00', '0');
INSERT INTO `site_log` VALUES ('7765', '1', '::1', '/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'http://localhost/demo_hoachat/', 'products/detail', 'sang-trong-t072', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:34:38', '0');
INSERT INTO `site_log` VALUES ('7764', '1', '::1', '/demo_hoachat/uload/img/products/17032018/thumbnail_1_a41.jpg', 'http://localhost/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'uload/img', 'products/17032018/thumbnail_1_a41.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:33:32', '0');
INSERT INTO `site_log` VALUES ('7763', '1', '::1', '/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'http://localhost/demo_hoachat/', 'products/detail', 'sang-trong-t072', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:33:32', '0');
INSERT INTO `site_log` VALUES ('7762', '1', '::1', '/demo_hoachat/uload/img/products/17032018/a41.jpg', 'http://localhost/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'uload/img', 'products/17032018/a41.jpg', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:32:50', '0');
INSERT INTO `site_log` VALUES ('7761', '1', '::1', '/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'http://localhost/demo_hoachat/', 'products/detail', 'sang-trong-t072', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:40', '0');
INSERT INTO `site_log` VALUES ('7760', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/6', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:39', '0');
INSERT INTO `site_log` VALUES ('7759', '1', '::1', '/demo_hoachat/vnadmin/product/edit/6', 'http://localhost/demo_hoachat/vnadmin/product/edit/6', 'product/edit', 'ct/edit/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:39', '0');
INSERT INTO `site_log` VALUES ('7758', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/6', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:39', '0');
INSERT INTO `site_log` VALUES ('7757', '1', '::1', '/demo_hoachat/vnadmin/product/edit/6', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:35', '0');
INSERT INTO `site_log` VALUES ('7756', '1', '::1', '/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'http://localhost/demo_hoachat/', 'products/detail', 'sang-trong-t072', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:31', '0');
INSERT INTO `site_log` VALUES ('7755', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/11', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:30', '0');
INSERT INTO `site_log` VALUES ('7754', '1', '::1', '/demo_hoachat/vnadmin/product/edit/11', 'http://localhost/demo_hoachat/vnadmin/product/edit/11', 'product/edit', 'ct/edit/11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:30', '0');
INSERT INTO `site_log` VALUES ('7753', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/11', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:30', '0');
INSERT INTO `site_log` VALUES ('7752', '1', '::1', '/demo_hoachat/vnadmin/product/edit/11', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:27', '0');
INSERT INTO `site_log` VALUES ('7751', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/11', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:24', '0');
INSERT INTO `site_log` VALUES ('7750', '1', '::1', '/demo_hoachat/vnadmin/product/edit/11', 'http://localhost/demo_hoachat/vnadmin/product/edit/11', 'product/edit', 'ct/edit/11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:24', '0');
INSERT INTO `site_log` VALUES ('7749', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/11', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:24', '0');
INSERT INTO `site_log` VALUES ('7748', '1', '::1', '/demo_hoachat/vnadmin/product/edit/11', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:20', '0');
INSERT INTO `site_log` VALUES ('7747', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/12', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:16', '0');
INSERT INTO `site_log` VALUES ('7746', '1', '::1', '/demo_hoachat/vnadmin/product/edit/12', 'http://localhost/demo_hoachat/vnadmin/product/edit/12', 'product/edit', 'ct/edit/12', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:16', '0');
INSERT INTO `site_log` VALUES ('7745', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/12', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:16', '0');
INSERT INTO `site_log` VALUES ('7744', '1', '::1', '/demo_hoachat/vnadmin/product/edit/12', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/12', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:12', '0');
INSERT INTO `site_log` VALUES ('7743', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/17', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:30:08', '0');
INSERT INTO `site_log` VALUES ('7741', '1', '::1', '/demo_hoachat/', 'http://localhost/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:29:49', '0');
INSERT INTO `site_log` VALUES ('7742', '1', '::1', '/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'http://localhost/demo_hoachat/', 'products/detail', 'sang-trong-t072', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:29:53', '0');
INSERT INTO `site_log` VALUES ('7740', '1', '::1', '/demo_hoachat/san-pham/tu-ao-2-canh-hien-dai-phong-cach-han-quoc-a689d2.html', 'http://localhost/demo_hoachat/', 'products/detail', '-canh-hien-dai-phong-cach-han-quoc-a689d2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:26:37', '0');
INSERT INTO `site_log` VALUES ('7739', '1', '::1', '/demo_hoachat/vnadmin/product/edit/17', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:25:00', '0');
INSERT INTO `site_log` VALUES ('7738', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/18', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:58', '0');
INSERT INTO `site_log` VALUES ('7737', '1', '::1', '/demo_hoachat/vnadmin/product/edit/18', 'http://localhost/demo_hoachat/vnadmin/product/edit/18', 'product/edit', 'ct/edit/18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:58', '0');
INSERT INTO `site_log` VALUES ('7736', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/18', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:58', '0');
INSERT INTO `site_log` VALUES ('7735', '1', '::1', '/demo_hoachat/vnadmin/product/edit/18', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:54', '0');
INSERT INTO `site_log` VALUES ('7733', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/13', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:37', '0');
INSERT INTO `site_log` VALUES ('7734', '1', '::1', '/demo_hoachat/san-pham/tu-ao-2-canh-hien-dai-phong-cach-han-quoc-a689d2.html', 'http://localhost/demo_hoachat/', 'products/detail', '-canh-hien-dai-phong-cach-han-quoc-a689d2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:38', '0');
INSERT INTO `site_log` VALUES ('7732', '1', '::1', '/demo_hoachat/vnadmin/product/edit/13', 'http://localhost/demo_hoachat/vnadmin/product/edit/13', 'product/edit', 'ct/edit/13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:37', '0');
INSERT INTO `site_log` VALUES ('7731', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/13', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:37', '0');
INSERT INTO `site_log` VALUES ('7730', '1', '::1', '/demo_hoachat/vnadmin/product/edit/13', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:31', '0');
INSERT INTO `site_log` VALUES ('7729', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/14', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:28', '0');
INSERT INTO `site_log` VALUES ('7728', '1', '::1', '/demo_hoachat/vnadmin/product/edit/14', 'http://localhost/demo_hoachat/vnadmin/product/edit/14', 'product/edit', 'ct/edit/14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:28', '0');
INSERT INTO `site_log` VALUES ('7727', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/14', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:28', '0');
INSERT INTO `site_log` VALUES ('7726', '1', '::1', '/demo_hoachat/vnadmin/product/edit/14', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:23', '0');
INSERT INTO `site_log` VALUES ('7725', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/15', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:21', '0');
INSERT INTO `site_log` VALUES ('7724', '1', '::1', '/demo_hoachat/vnadmin/product/edit/15', 'http://localhost/demo_hoachat/vnadmin/product/edit/15', 'product/edit', 'ct/edit/15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:21', '0');
INSERT INTO `site_log` VALUES ('7723', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/15', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:21', '0');
INSERT INTO `site_log` VALUES ('7722', '1', '::1', '/demo_hoachat/vnadmin/product/edit/15', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:18', '0');
INSERT INTO `site_log` VALUES ('7721', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/15', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:14', '0');
INSERT INTO `site_log` VALUES ('7720', '1', '::1', '/demo_hoachat/vnadmin/product/edit/15', 'http://localhost/demo_hoachat/vnadmin/product/edit/15', 'product/edit', 'ct/edit/15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:14', '0');
INSERT INTO `site_log` VALUES ('7719', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/15', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:14', '0');
INSERT INTO `site_log` VALUES ('7718', '1', '::1', '/demo_hoachat/vnadmin/product/edit/15', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:09', '0');
INSERT INTO `site_log` VALUES ('7717', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/17', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:08', '0');
INSERT INTO `site_log` VALUES ('7716', '1', '::1', '/demo_hoachat/vnadmin/product/edit/17', 'http://localhost/demo_hoachat/vnadmin/product/edit/17', 'product/edit', 'ct/edit/17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:08', '0');
INSERT INTO `site_log` VALUES ('7715', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/17', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:08', '0');
INSERT INTO `site_log` VALUES ('7714', '1', '::1', '/demo_hoachat/vnadmin/product/edit/17', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:04', '0');
INSERT INTO `site_log` VALUES ('7713', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/16', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:02', '0');
INSERT INTO `site_log` VALUES ('7712', '1', '::1', '/demo_hoachat/vnadmin/product/edit/16', 'http://localhost/demo_hoachat/vnadmin/product/edit/16', 'product/edit', 'ct/edit/16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:02', '0');
INSERT INTO `site_log` VALUES ('7711', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/16', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:24:02', '0');
INSERT INTO `site_log` VALUES ('7710', '1', '::1', '/demo_hoachat/vnadmin/product/edit/16', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:23:59', '0');
INSERT INTO `site_log` VALUES ('7709', '1', '::1', '/demo_hoachat/san-pham/tu-ao-2-canh-hien-dai-phong-cach-han-quoc-a689d2.html', 'http://localhost/demo_hoachat/', 'products/detail', '-canh-hien-dai-phong-cach-han-quoc-a689d2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:23:14', '0');
INSERT INTO `site_log` VALUES ('7708', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/16', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:23:13', '0');
INSERT INTO `site_log` VALUES ('7707', '1', '::1', '/demo_hoachat/vnadmin/product/edit/16', 'http://localhost/demo_hoachat/vnadmin/product/edit/16', 'product/edit', 'ct/edit/16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:23:13', '0');
INSERT INTO `site_log` VALUES ('7706', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/16', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:23:13', '0');
INSERT INTO `site_log` VALUES ('7705', '1', '::1', '/demo_hoachat/vnadmin/product/edit/16', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:23:09', '0');
INSERT INTO `site_log` VALUES ('7704', '1', '::1', '/demo_hoachat/san-pham/tu-ao-2-canh-hien-dai-phong-cach-han-quoc-a689d2.html', 'http://localhost/demo_hoachat/', 'products/detail', '-canh-hien-dai-phong-cach-han-quoc-a689d2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:22:37', '0');
INSERT INTO `site_log` VALUES ('7703', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/18', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:22:28', '0');
INSERT INTO `site_log` VALUES ('7702', '1', '::1', '/demo_hoachat/vnadmin/product/edit/18', 'http://localhost/demo_hoachat/vnadmin/product/edit/18', 'product/edit', 'ct/edit/18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:22:28', '0');
INSERT INTO `site_log` VALUES ('7701', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/18', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:22:28', '0');
INSERT INTO `site_log` VALUES ('7700', '1', '::1', '/demo_hoachat/vnadmin/product/edit/18', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:22:19', '0');
INSERT INTO `site_log` VALUES ('7699', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/18', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 11:22:17', '0');
INSERT INTO `site_log` VALUES ('7698', '1', '::1', '/demo_hoachat/san-pham/tu-ao-2-canh-hien-dai-phong-cach-han-quoc-a689d2.html', 'http://localhost/demo_hoachat/', 'products/detail', '-canh-hien-dai-phong-cach-han-quoc-a689d2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:49:58', '0');
INSERT INTO `site_log` VALUES ('7697', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/18', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:48:37', '0');
INSERT INTO `site_log` VALUES ('7696', '1', '::1', '/demo_hoachat/vnadmin/product/edit/18', 'http://localhost/demo_hoachat/vnadmin/product/edit/18', 'product/edit', 'ct/edit/18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:48:37', '0');
INSERT INTO `site_log` VALUES ('7695', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/18', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:48:37', '0');
INSERT INTO `site_log` VALUES ('7694', '1', '::1', '/demo_hoachat/vnadmin/product/edit/18', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:48:36', '0');
INSERT INTO `site_log` VALUES ('7693', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:48:33', '0');
INSERT INTO `site_log` VALUES ('7692', '1', '::1', '/demo_hoachat/vnadmin', '', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:48:29', '0');
INSERT INTO `site_log` VALUES ('7691', '1', '::1', '/demo_hoachat/san-pham/tu-ao-2-canh-hien-dai-phong-cach-han-quoc-a689d2.html', 'http://localhost/demo_hoachat/', 'products/detail', '-canh-hien-dai-phong-cach-han-quoc-a689d2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:46:51', '0');
INSERT INTO `site_log` VALUES ('7690', '1', '::1', '/demo_hoachat/', 'http://localhost/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:46:43', '0');
INSERT INTO `site_log` VALUES ('7689', '1', '::1', '/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'http://localhost/demo_hoachat/', 'products/detail', 'sang-trong-t072', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:19:06', '0');
INSERT INTO `site_log` VALUES ('7687', '1', '::1', '/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'http://localhost/demo_hoachat/', 'products/detail', 'sang-trong-t072', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:18:56', '0');
INSERT INTO `site_log` VALUES ('7688', '1', '::1', '/demo_hoachat/', 'http://localhost/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:19:04', '0');
INSERT INTO `site_log` VALUES ('7686', '1', '::1', '/demo_hoachat/404_override', 'http://localhost/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'error/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:18:50', '0');
INSERT INTO `site_log` VALUES ('7685', '1', '::1', '/demo_hoachat/danh-muc/danh-muc-1.html', 'http://localhost/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'products/pro_bycategory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:18:50', '0');
INSERT INTO `site_log` VALUES ('7684', '1', '::1', '/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'http://localhost/demo_hoachat/', 'products/detail', 'sang-trong-t072', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:11:58', '0');
INSERT INTO `site_log` VALUES ('7683', '1', '::1', '/demo_hoachat/', 'http://localhost/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:11:16', '0');
INSERT INTO `site_log` VALUES ('7682', '1', '::1', '/demo_hoachat/san-pham/ban-an-sang-trong-t072.html', 'http://localhost/demo_hoachat/?', 'products/detail', 'sang-trong-t072', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:07:19', '0');
INSERT INTO `site_log` VALUES ('7681', '1', '::1', '/demo_hoachat/?', 'http://localhost/demo_hoachat/?', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:06:24', '0');
INSERT INTO `site_log` VALUES ('7680', '1', '::1', '/demo_hoachat/contact/add_email', 'http://localhost/demo_hoachat/?', 'contact/add_email', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 10:06:24', '0');
INSERT INTO `site_log` VALUES ('7679', '1', '::1', '/demo_hoachat/?', 'http://localhost/demo_hoachat/', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:20:48', '0');
INSERT INTO `site_log` VALUES ('7678', '1', '::1', '/demo_hoachat/ajax/ajax/update_fill', 'http://localhost/demo_hoachat/vnadmin/product/products', 'ajax/update_fill', 'fill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:20:44', '0');
INSERT INTO `site_log` VALUES ('7677', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/11', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:20:40', '0');
INSERT INTO `site_log` VALUES ('7676', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:14:07', '0');
INSERT INTO `site_log` VALUES ('7675', '1', '::1', '/demo_hoachat/vnadmin/product/edit/11', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:14:04', '0');
INSERT INTO `site_log` VALUES ('7674', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/12', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:14:02', '0');
INSERT INTO `site_log` VALUES ('7673', '1', '::1', '/demo_hoachat/vnadmin/product/edit/12', 'http://localhost/demo_hoachat/vnadmin/product/edit/12', 'product/edit', 'ct/edit/12', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:14:02', '0');
INSERT INTO `site_log` VALUES ('7672', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/12', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:14:02', '0');
INSERT INTO `site_log` VALUES ('7671', '1', '::1', '/demo_hoachat/vnadmin/product/edit/12', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/12', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:59', '0');
INSERT INTO `site_log` VALUES ('7670', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/13', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:57', '0');
INSERT INTO `site_log` VALUES ('7669', '1', '::1', '/demo_hoachat/vnadmin/product/edit/13', 'http://localhost/demo_hoachat/vnadmin/product/edit/13', 'product/edit', 'ct/edit/13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:57', '0');
INSERT INTO `site_log` VALUES ('7668', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/13', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:56', '0');
INSERT INTO `site_log` VALUES ('7667', '1', '::1', '/demo_hoachat/vnadmin/product/edit/13', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:53', '0');
INSERT INTO `site_log` VALUES ('7666', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/14', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:51', '0');
INSERT INTO `site_log` VALUES ('7665', '1', '::1', '/demo_hoachat/vnadmin/product/edit/14', 'http://localhost/demo_hoachat/vnadmin/product/edit/14', 'product/edit', 'ct/edit/14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:51', '0');
INSERT INTO `site_log` VALUES ('7664', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/14', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:51', '0');
INSERT INTO `site_log` VALUES ('7663', '1', '::1', '/demo_hoachat/vnadmin/product/edit/14', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:47', '0');
INSERT INTO `site_log` VALUES ('7662', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/11', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:44', '0');
INSERT INTO `site_log` VALUES ('7661', '1', '::1', '/demo_hoachat/vnadmin/product/edit/11', 'http://localhost/demo_hoachat/vnadmin/product/edit/11', 'product/edit', 'ct/edit/11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:44', '0');
INSERT INTO `site_log` VALUES ('7660', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/11', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:44', '0');
INSERT INTO `site_log` VALUES ('7658', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/15', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:39', '0');
INSERT INTO `site_log` VALUES ('7659', '1', '::1', '/demo_hoachat/vnadmin/product/edit/11', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:41', '0');
INSERT INTO `site_log` VALUES ('7657', '1', '::1', '/demo_hoachat/vnadmin/product/edit/15', 'http://localhost/demo_hoachat/vnadmin/product/edit/15', 'product/edit', 'ct/edit/15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:39', '0');
INSERT INTO `site_log` VALUES ('7656', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/15', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:39', '0');
INSERT INTO `site_log` VALUES ('7655', '1', '::1', '/demo_hoachat/vnadmin/product/edit/15', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:35', '0');
INSERT INTO `site_log` VALUES ('7654', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/16', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:32', '0');
INSERT INTO `site_log` VALUES ('7653', '1', '::1', '/demo_hoachat/vnadmin/product/edit/16', 'http://localhost/demo_hoachat/vnadmin/product/edit/16', 'product/edit', 'ct/edit/16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:32', '0');
INSERT INTO `site_log` VALUES ('7652', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/16', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:32', '0');
INSERT INTO `site_log` VALUES ('7651', '1', '::1', '/demo_hoachat/vnadmin/product/edit/16', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:27', '0');
INSERT INTO `site_log` VALUES ('7650', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/17', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:25', '0');
INSERT INTO `site_log` VALUES ('7649', '1', '::1', '/demo_hoachat/vnadmin/product/edit/17', 'http://localhost/demo_hoachat/vnadmin/product/edit/17', 'product/edit', 'ct/edit/17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:25', '0');
INSERT INTO `site_log` VALUES ('7648', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/17', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:25', '0');
INSERT INTO `site_log` VALUES ('7647', '1', '::1', '/demo_hoachat/vnadmin/product/edit/17', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:22', '0');
INSERT INTO `site_log` VALUES ('7646', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/edit/18', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:20', '0');
INSERT INTO `site_log` VALUES ('7645', '1', '::1', '/demo_hoachat/vnadmin/product/edit/18', 'http://localhost/demo_hoachat/vnadmin/product/edit/18', 'product/edit', 'ct/edit/18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:20', '0');
INSERT INTO `site_log` VALUES ('7644', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/product/edit/18', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:20', '0');
INSERT INTO `site_log` VALUES ('7643', '1', '::1', '/demo_hoachat/vnadmin/product/edit/18', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/edit', 'ct/edit/18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:13:14', '0');
INSERT INTO `site_log` VALUES ('7642', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:01:41', '0');
INSERT INTO `site_log` VALUES ('7641', '1', '::1', '/demo_hoachat/ajax/ajax/update_fill', 'http://localhost/demo_hoachat/vnadmin/product/products', 'ajax/update_fill', 'fill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:01:37', '0');
INSERT INTO `site_log` VALUES ('7640', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:01:34', '0');
INSERT INTO `site_log` VALUES ('7638', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:01:13', '0');
INSERT INTO `site_log` VALUES ('7639', '1', '::1', '/demo_hoachat/ajax/ajax/update_fill', 'http://localhost/demo_hoachat/vnadmin/product/products', 'ajax/update_fill', 'fill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 09:01:26', '0');
INSERT INTO `site_log` VALUES ('7637', '1', '::1', '/demo_hoachat/ajax/ajax/update_fill', 'http://localhost/demo_hoachat/vnadmin/product/products', 'ajax/update_fill', 'fill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:59:41', '0');
INSERT INTO `site_log` VALUES ('7636', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/news/newslist', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:57:00', '0');
INSERT INTO `site_log` VALUES ('7635', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:38', '0');
INSERT INTO `site_log` VALUES ('7634', '1', '::1', '/demo_hoachat/404_override', 'http://localhost/demo_hoachat/', 'error/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:35', '0');
INSERT INTO `site_log` VALUES ('7633', '1', '::1', '/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong.html', 'http://localhost/demo_hoachat/', 'news/detail', 'i-noi-that-cho-khong-gian-nha-an-tuong', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:35', '0');
INSERT INTO `site_log` VALUES ('7632', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:29', '0');
INSERT INTO `site_log` VALUES ('7631', '1', '::1', '/demo_hoachat/vnadmin/news/newslist', 'http://localhost/demo_hoachat/vnadmin/news/edit/6', 'news/newslist', 'ewslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:27', '0');
INSERT INTO `site_log` VALUES ('7630', '1', '::1', '/demo_hoachat/vnadmin/news/edit/6', 'http://localhost/demo_hoachat/vnadmin/news/edit/6', 'news/edit', 'ws/edit/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:27', '0');
INSERT INTO `site_log` VALUES ('7629', '1', '::1', '/demo_hoachat/vnadmin/alias/checkEdit', 'http://localhost/demo_hoachat/vnadmin/news/edit/6', 'alias/checkEdit', 'eckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:27', '0');
INSERT INTO `site_log` VALUES ('7628', '1', '::1', '/demo_hoachat/vnadmin/news/edit/6', 'http://localhost/demo_hoachat/vnadmin/news/newslist', 'news/edit', 'ws/edit/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:25', '0');
INSERT INTO `site_log` VALUES ('7627', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:22', '0');
INSERT INTO `site_log` VALUES ('7626', '1', '::1', '/demo_hoachat/404_override', 'http://localhost/demo_hoachat/', 'error/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:20', '0');
INSERT INTO `site_log` VALUES ('7625', '1', '::1', '/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong.html', 'http://localhost/demo_hoachat/', 'news/detail', 'i-noi-that-cho-khong-gian-nha-an-tuong', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:20', '0');
INSERT INTO `site_log` VALUES ('7624', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:19', '0');
INSERT INTO `site_log` VALUES ('7623', '1', '::1', '/demo_hoachat/404_override', 'http://localhost/demo_hoachat/', 'error/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:17', '0');
INSERT INTO `site_log` VALUES ('7622', '1', '::1', '/demo_hoachat/new/trang-tri-noi-that-cho-khong-gian-nha-an-tuong1.html', 'http://localhost/demo_hoachat/', 'news/detail', 'i-noi-that-cho-khong-gian-nha-an-tuong1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:17', '0');
INSERT INTO `site_log` VALUES ('7620', '1', '::1', '/demo_hoachat/404_override', 'http://localhost/demo_hoachat/', 'error/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:05', '0');
INSERT INTO `site_log` VALUES ('7621', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:10', '0');
INSERT INTO `site_log` VALUES ('7618', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:54:57', '0');
INSERT INTO `site_log` VALUES ('7619', '1', '::1', '/demo_hoachat/new/thiet-ke-noi-that-biet-thu-ha-do-phong-cach-tan-co-dien.html', 'http://localhost/demo_hoachat/', 'news/detail', '-noi-that-biet-thu-ha-do-phong-cach-tan-co-dien', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:55:05', '0');
INSERT INTO `site_log` VALUES ('7617', '1', '::1', '/demo_hoachat/ajax/ajax/update_fill', 'http://localhost/demo_hoachat/vnadmin/news/newslist', 'ajax/update_fill', 'fill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:54:56', '0');
INSERT INTO `site_log` VALUES ('7616', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:53:54', '0');
INSERT INTO `site_log` VALUES ('7615', '1', '::1', '/demo_hoachat/vnadmin/news/newslist', 'http://localhost/demo_hoachat/vnadmin', 'news/newslist', 'ewslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:53:53', '0');
INSERT INTO `site_log` VALUES ('7614', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:52:56', '0');
INSERT INTO `site_log` VALUES ('7612', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:47:41', '0');
INSERT INTO `site_log` VALUES ('7613', '1', '::1', '/demo_hoachat/ajax/ajax/update_fill', 'http://localhost/demo_hoachat/vnadmin/news/newslist', 'ajax/update_fill', 'fill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:52:51', '0');
INSERT INTO `site_log` VALUES ('7611', '1', '::1', '/demo_hoachat/vnadmin/news/newslist', 'http://localhost/demo_hoachat/vnadmin', 'news/newslist', 'ewslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:46:19', '0');
INSERT INTO `site_log` VALUES ('7610', '1', '::1', '/demo_hoachat/vnadmin', '', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:45:00', '0');
INSERT INTO `site_log` VALUES ('7609', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:44:55', '0');
INSERT INTO `site_log` VALUES ('7608', '1', '::1', '/demo_hoachat/ajax/ajax/update_fill', 'http://localhost/demo_hoachat/vnadmin/admin/setup_product', 'ajax/update_fill', 'fill', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/70.4.222 Chrome/64.4.3282.222 Safari/537.36', '0', '2018-06-20 08:43:14', '0');
INSERT INTO `site_log` VALUES ('7607', '1', '::1', '/demo_hoachat/vnadmin', 'http://localhost/demo_hoachat/vnadmin/news/newslist', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/70.4.222 Chrome/64.4.3282.222 Safari/537.36', '0', '2018-06-20 08:42:27', '0');
INSERT INTO `site_log` VALUES ('7606', '1', '::1', '/demo_hoachat/vnadmin/logout/index', 'http://localhost/demo_hoachat/vnadmin/news/newslist', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/70.4.222 Chrome/64.4.3282.222 Safari/537.36', '0', '2018-06-20 08:42:27', '0');
INSERT INTO `site_log` VALUES ('7605', '1', '::1', '/demo_hoachat/vnadmin/news/newslist', '', 'news/newslist', 'ewslist', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/70.4.222 Chrome/64.4.3282.222 Safari/537.36', '0', '2018-06-20 08:42:19', '0');
INSERT INTO `site_log` VALUES ('7604', '1', '::1', '/demo_hoachat/vnadmin/news/newslist', 'http://localhost/demo_hoachat/vnadmin/news/cat_add_news', 'news/newslist', 'ewslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:40:47', '0');
INSERT INTO `site_log` VALUES ('7603', '1', '::1', '/demo_hoachat/vnadmin/news/cat_add_news', 'http://localhost/demo_hoachat/vnadmin/news/categories', 'news/cat_add_news', 'dd_news', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:34:33', '0');
INSERT INTO `site_log` VALUES ('7602', '1', '::1', '/demo_hoachat/vnadmin/news/categories', 'http://localhost/demo_hoachat/vnadmin/news/newslist', 'news/categories', 'egories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:34:31', '0');
INSERT INTO `site_log` VALUES ('7600', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:27:59', '0');
INSERT INTO `site_log` VALUES ('7601', '1', '::1', '/demo_hoachat/vnadmin/news/newslist', 'http://localhost/demo_hoachat/vnadmin/imageupload/banners', 'news/newslist', 'ewslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:34:29', '0');
INSERT INTO `site_log` VALUES ('7599', '1', '::1', '/demo_hoachat/vnadmin/imageupload/banners', 'http://localhost/demo_hoachat/vnadmin/imageupload/edit/288', 'imageupload/banners', 'banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:26:42', '0');
INSERT INTO `site_log` VALUES ('7598', '1', '::1', '/demo_hoachat/vnadmin/imageupload/edit/288', 'http://localhost/demo_hoachat/vnadmin/imageupload/banners', 'imageupload/edit', 'ad/edit/288', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:26:38', '0');
INSERT INTO `site_log` VALUES ('7597', '1', '::1', '/demo_hoachat/vnadmin/imageupload/banners', 'http://localhost/demo_hoachat/vnadmin/imageupload/addbanner', 'imageupload/banners', 'banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:26:36', '0');
INSERT INTO `site_log` VALUES ('7596', '1', '::1', '/demo_hoachat/vnadmin/imageupload/addbanner', 'http://localhost/demo_hoachat/vnadmin/imageupload/banners', 'imageupload/addbanner', 'dbanner', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:26:26', '0');
INSERT INTO `site_log` VALUES ('7595', '1', '::1', '/demo_hoachat/vnadmin/imageupload/banners', 'http://localhost/demo_hoachat/vnadmin/imageupload/banners', 'imageupload/banners', 'banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:26:25', '0');
INSERT INTO `site_log` VALUES ('7594', '1', '::1', '/demo_hoachat/vnadmin/imageupload/delete/287', 'http://localhost/demo_hoachat/vnadmin/imageupload/banners', 'imageupload/delete', '/delete/287', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:26:25', '0');
INSERT INTO `site_log` VALUES ('7593', '1', '::1', '/demo_hoachat/vnadmin/imageupload/banners', 'http://localhost/demo_hoachat/vnadmin/imageupload/addbanner', 'imageupload/banners', 'banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:26:22', '0');
INSERT INTO `site_log` VALUES ('7592', '1', '::1', '/demo_hoachat/vnadmin/imageupload/addbanner', 'http://localhost/demo_hoachat/vnadmin/imageupload/banners', 'imageupload/addbanner', 'dbanner', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:26:07', '0');
INSERT INTO `site_log` VALUES ('7591', '1', '::1', '/demo_hoachat/vnadmin/imageupload/banners', 'http://localhost/demo_hoachat/vnadmin/imageupload/banners', 'imageupload/banners', 'banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:26:05', '0');
INSERT INTO `site_log` VALUES ('7590', '1', '::1', '/demo_hoachat/vnadmin/imageupload/deletes', 'http://localhost/demo_hoachat/vnadmin/imageupload/banners', 'imageupload/deletes', 'deletes', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:26:05', '0');
INSERT INTO `site_log` VALUES ('7589', '1', '::1', '/demo_hoachat/vnadmin/imageupload/banners', 'http://localhost/demo_hoachat/vnadmin', 'imageupload/banners', 'banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:25:59', '0');
INSERT INTO `site_log` VALUES ('7587', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '0', '2018-06-19 09:22:41', '0');
INSERT INTO `site_log` VALUES ('7588', '1', '::1', '/demo_hoachat/vnadmin', '', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', '0', '2018-06-20 08:25:55', '0');
INSERT INTO `site_log` VALUES ('7586', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '0', '2018-06-19 09:19:26', '0');
INSERT INTO `site_log` VALUES ('7585', '1', '::1', '/demo_hoachat/vnadmin/menu/menulist', 'http://localhost/demo_hoachat/vnadmin/menu/addmenu?p=main', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '0', '2018-06-19 09:19:26', '0');
INSERT INTO `site_log` VALUES ('7584', '1', '::1', '/demo_hoachat/vnadmin/menu/addmenu?p=main', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/addmenu', 'addmenu', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '0', '2018-06-19 09:18:59', '0');
INSERT INTO `site_log` VALUES ('7583', '1', '::1', '/demo_hoachat/vnadmin/menu/savelist', 'http://localhost/demo_hoachat/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '0', '2018-06-19 09:18:42', '0');
INSERT INTO `site_log` VALUES ('7582', '1', '::1', '/demo_hoachat/vnadmin/menu/menulist', 'http://localhost/demo_hoachat/vnadmin/admin/site_option', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '0', '2018-06-19 09:18:42', '0');
INSERT INTO `site_log` VALUES ('7581', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '0', '2018-06-19 09:10:44', '0');
INSERT INTO `site_log` VALUES ('7580', '1', '::1', '/demo_hoachat/Ch%C3%A0o%20m%E1%BB%ABng%20b%E1%BA%A1n%20%C4%91%E1%BA%BFn%20v%E1%BB%9Bi%20TENAX', 'http://localhost/demo_hoachat/', 'Ch%C3%A0o%20m%E1%BB%ABng%20b%E1%BA%A1n%20%C4%91%E1%BA%BFn%20v%E1%BB%9Bi%20TENAX/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '0', '2018-06-19 09:10:30', '0');
INSERT INTO `site_log` VALUES ('7579', '1', '::1', '/demo_hoachat/ajax/ajax/update_fill', 'http://localhost/demo_hoachat/vnadmin/admin/setup_product', 'ajax/update_fill', 'fill', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/70.4.222 Chrome/64.4.3282.222 Safari/537.36', '0', '2018-06-19 09:08:46', '0');
INSERT INTO `site_log` VALUES ('7578', '1', '::1', '/demo_hoachat/vnadmin', '', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/70.4.222 Chrome/64.4.3282.222 Safari/537.36', '0', '2018-06-19 09:07:57', '0');
INSERT INTO `site_log` VALUES ('7577', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/70.4.222 Chrome/64.4.3282.222 Safari/537.36', '0', '2018-06-19 09:07:50', '0');
INSERT INTO `site_log` VALUES ('7576', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '0', '2018-06-19 09:03:42', '0');
INSERT INTO `site_log` VALUES ('7575', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '0', '2018-06-19 08:57:29', '0');
INSERT INTO `site_log` VALUES ('7574', '1', '::1', '/demo_hoachat/vnadmin/product/delete/19', 'http://localhost/demo_hoachat/vnadmin/product/products', 'product/delete', '/delete/19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '0', '2018-06-19 08:57:29', '0');
INSERT INTO `site_log` VALUES ('7573', '1', '::1', '/demo_hoachat/vnadmin/product/products', 'http://localhost/demo_hoachat/vnadmin', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '0', '2018-06-19 08:57:23', '0');
INSERT INTO `site_log` VALUES ('7571', '1', '::1', '/demo_hoachat/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '0', '2018-06-19 08:54:26', '0');
INSERT INTO `site_log` VALUES ('7572', '1', '::1', '/demo_hoachat/vnadmin', '', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '0', '2018-06-19 08:57:19', '0');

-- ----------------------------
-- Table structure for `site_option`
-- ----------------------------
DROP TABLE IF EXISTS `site_option`;
CREATE TABLE `site_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coppy_right` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `site_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `slogan` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `link_instagram` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `site_logo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `site_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_language` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `site_keyword` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `site_keyword_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `site_description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link_sky` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link_printer` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `link_linkedin` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `site_email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `site_fanpage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `site_video` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `WM_text` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `WM_color` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `WM_size` int(10) DEFAULT NULL,
  `hotline1` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hotline2` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hotline3` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` text CHARACTER SET utf8,
  `link_tt` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `favicon` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `company_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `shipping` text CHARACTER SET utf8,
  `site_promo` text CHARACTER SET utf8,
  `thanhtoan_tienmat` text CHARACTER SET utf8,
  `thanhtoan_chuyenkhoan` text CHARACTER SET utf8,
  `hdfMap` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `map_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `map_adrdress` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `map_phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `dia_chi_timkiem` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT '1',
  `link_gg` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_youtube` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `face_id` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timeopen` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `chat` text CHARACTER SET utf8,
  `site_logo_footer` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `map_iframe` text CHARACTER SET utf8,
  `input_text_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_footer` text COLLATE utf8_unicode_ci,
  `icon_language` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `config_pro` text COLLATE utf8_unicode_ci NOT NULL,
  `config_pro_content` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(3) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of site_option
-- ----------------------------
INSERT INTO `site_option` VALUES ('1', null, 'Công ty TNHH Dịch Vụ Bảo vệ Long Phụng Hoàng', 'Chào mừng bạn đến với TENAX', null, 'upload/img/logo/logo3.png', 'Công ty TNHH Dịch Vụ Bảo vệ Long Phụng Hoàng', 'Việt Nam', '', '0', '', null, null, null, 'lphanvantien.dichvuanninhlph@gmail.com', 'https://www.facebook.com/giaodiendep.vn/', '', null, null, null, '0916.51.51.82', '0983.368.281', null, null, '', 'upload/img/logo/logo4.png', null, '<p>TENAX SPA * Th&ocirc;ng qua 1 Maggio 226 3720 Verona của Doalce Venora P. Iva Cod Fisc. 00214680233 *&nbsp;</p>\r\n\r\n<p>Rea di Verona 76461 * Cap.Soc.20000000</p>\r\n', null, null, null, '(21.0137956, 105.76945469999998)', 'Công ty cổ phần dịch vụ & thương mại Thủ Đô', 'Số 58 Phố Duy Tân – Dịch Vọng Hậu – Cầu Giấy - HN', ' 0984086608', '42 Lê Quang đạo, Nam Từ Liêm', 'vi', '', '', null, null, null, 'upload/img/logo/logo1.png', null, null, '', null, 'img/vi.gif', '[]', '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"type\":\"int\",\"sort\":\"3\"}]', '1');
INSERT INTO `site_option` VALUES ('2', null, 'JSC polygon media', '', null, 'upload/img/logo4.png', '', 'English', '', '0', '', '0', null, null, 'hanhnh@polygonmedia.vn', '', 'uI2wcf05wq0', '', '', '0', '', '', '0', '', '', '0', null, '', '', null, null, '(21.0218044, 105.79087200000004)', 'Công ty', '', '', 'Yên hòa', 'en', '', '', '', '', '', null, '', null, '', '', 'img/en.gif', '[]', '', '1');
INSERT INTO `site_option` VALUES ('3', '0', '1', '1', '0', '1', '1', '', '1', '1', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '1', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', 'config', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '', '1', '0');
INSERT INTO `site_option` VALUES ('4', 'coppy right', 'tên đơn vị', 'slogan', 'Instagram', null, 'Tiêu đề website', null, null, null, null, 'link skype', 'link printer', 'link linkedin', null, 'fanpage facebook', 'Video (Youtube)', 'Chữ Nổi Warter Mark', 'Màu Chữ (Hex Color VD : #ed1c2', '1', 'Hotline', 'Hotline 2', 'điên thoại bàn', 'địa chỉ', 'link twester', null, null, 'Thông tin chaant trang', 'khuyến mại', null, null, null, null, null, null, null, 'conf_text', 'link google', 'link youtube', 'id ap facebook', 'thời gian mở cửa', 'mã chát online', 'logo chân trang', 'Mã nhúng bản đồ chân trang', 'mã số thuê', 'tên miền', 'mã nhúng javascript', '', '', '', '0');
INSERT INTO `site_option` VALUES ('5', null, null, null, null, null, null, 'japanese', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ja', null, null, null, null, null, null, '', null, '', '', 'upload/img/logo/ja4.jpg', '[]', '', '1');
INSERT INTO `site_option` VALUES ('6', null, null, null, null, null, null, 'Korean', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ko', null, null, null, null, null, null, '', null, '', '', 'upload/img/logo/lag21.png', '[]', '', '1');
INSERT INTO `site_option` VALUES ('7', null, null, null, null, null, null, 'hungary', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'hu', null, null, null, null, null, null, '', null, '', '', 'upload/img/logo/hungary.png', '[]', '', '0');

-- ----------------------------
-- Table structure for `staticpage`
-- ----------------------------
DROP TABLE IF EXISTS `staticpage`;
CREATE TABLE `staticpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1',
  `home` tinyint(1) DEFAULT '0',
  `hot` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `contact_page` tinyint(1) DEFAULT '0',
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `page_footer` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of staticpage
-- ----------------------------
INSERT INTO `staticpage` VALUES ('31', 'Giới Thiệu', 'gioi-thieu', '<p>C&Ocirc;NG TY TNHH DỊCH VỤ BẢO VỆ LONG PHỤNG HO&Agrave;NG</p>\r\n\r\n<p>Địa chỉ: B2-18&nbsp;Đường Gi&aacute;p Hải, Phường Xương Giang, TP Bắc Giang<br />\r\nSố&nbsp;ĐT: 0983.386.281 - 0916.51.51.82<br />\r\nEmail: lphanvantien.dichvuanninhlph@gmail.com - Website:&nbsp;http://baovelongphunghoang.com/<br />\r\nM&atilde; số thuế: 2400790363<br />\r\nNgười đại diện: &Ocirc;ng Phan Văn Tiến Lục&nbsp;- Chức vụ: Gi&aacute;m đốc</p>\r\n', '<p>Ch&uacute;ng t&ocirc;i cam kết mang lại cho qu&yacute; kh&aacute;ch chất lượng&nbsp;<a href=\"http://anninhnhat.com/dich-vu-bao-ve/\">dịch vụ bảo vệ</a>&nbsp;tốt nhất với gi&aacute; cả cạnh tranh. Ch&uacute;ng t&ocirc;i c&oacute; kinh nghiệm trong việc xử l&yacute; c&aacute;c vấn đề ph&aacute;t sinh, v&agrave; giải quyết mọi y&ecirc;u cầu của qu&yacute; kh&aacute;ch. Tất cả c&aacute;c vấn đề nội bộ sẽ được xử l&yacute; bảo mật tuyệt đối v&agrave; chuy&ecirc;n nghiệp nhất. Nh&acirc;n vi&ecirc;n bảo vệ của ch&uacute;ng t&ocirc;i sẽ đem lại cho c&ocirc;ng ty của qu&yacute; kh&aacute;ch sự y&ecirc;n t&acirc;m v&agrave; tin cậy trong một m&ocirc;i trường kh&ocirc;ng c&oacute; tội phạm v&agrave; bạo lực. D&ugrave; nhu cầu về an ninh của qu&yacute; kh&aacute;ch như thế n&agrave;o, dịch vụ bảo vệ&nbsp;lu&ocirc;n c&oacute; giải một giải ph&aacute;p th&iacute;ch hợp .</p>\r\n\r\n<p>C&Ocirc;NG TY TNHH DỊCH VỤ BẢO VỆ LONG PHỤNG HO&Agrave;NG</p>\r\n\r\n<p>Địa chỉ: B2-18&nbsp;Đường Gi&aacute;p Hải, Phường Xương Giang, TP Bắc Giang<br />\r\nSố&nbsp;ĐT: 0983.386.281 - 0916.51.51.82<br />\r\nEmail: lphanvantien.dichvuanninhlph@gmail.com - Website:&nbsp;http://baovelongphunghoang.com/<br />\r\nM&atilde; số thuế: 2400790363<br />\r\nNgười đại diện: &Ocirc;ng Phan Văn Tiến Lục&nbsp;- Chức vụ: Gi&aacute;m đốc</p>\r\n', 'upload/img/pages/1.jpg', 'vi', '0', '1', '1', '0', '', '', '', '0', '1');
INSERT INTO `staticpage` VALUES ('38', 'CÔNG TY CỔ PHẦN XÂY DỰNG TUẤN PHÁT', 'cong-ty-co-phan-xay-dung-tuan-phat', '<p>D&ugrave; căn hộ của bạn c&oacute; ở nơi đ&acirc;u, ch&uacute;ng t&ocirc;i cũng cử kiến tr&uacute;c sư tới tư vấn, đo đạc, thiết kế căn hộ đẹp nhất cho bạn. Sau Thiết Kế nếu c&aacute;c bạn cảm thấy ưng c&aacute;c sản phẩm do ch&uacute;ng t&ocirc;i sản xuất, ch&uacute;ng t&ocirc;i sẽ sản xuất, thi c&ocirc;ng lắp đặt trọn gọi c&ocirc;ng tr&igrave;nh nội thất cho gia đ&igrave;nh bạn. Ch&uacute;ng t&ocirc;i tự h&agrave;o l&agrave; một trong số &iacute;t c&aacute;c c&ocirc;ng ty đầu ti&ecirc;n trong ng&agrave;nh nội thất tại H&agrave; Nội. Với c&ocirc;ng nghệ v&agrave; m&aacute;y m&oacute;c hiện đại ch&uacute;ng t&ocirc;i c&oacute; thể đ&aacute;p ứng mọi y&ecirc;u cầu khắt khe nhất về nội thất của kh&aacute;ch h&agrave;ng</p>\r\n', '', 'upload/img/pages/page.png', 'vi', '1', null, null, '0', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for `street`
-- ----------------------------
DROP TABLE IF EXISTS `street`;
CREATE TABLE `street` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pre` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `districtid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of street
-- ----------------------------

-- ----------------------------
-- Table structure for `support_online`
-- ----------------------------
DROP TABLE IF EXISTS `support_online`;
CREATE TABLE `support_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yahoo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `skype` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `image` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of support_online
-- ----------------------------
INSERT INTO `support_online` VALUES ('19', 'https://id.zalo.me/account/login?continue=https%3A', '0936236786', 'skype_trantrung', 'trunag123@gmail.com', 'Mr Trung', '1', null, '2', 'abc');
INSERT INTO `support_online` VALUES ('20', 'yahoo_tranmanh', '0977160509', 'https://www.facebook.com/', 'tranmanh@gmail.com', 'đặng trần mạnh', '1', null, '0', '');

-- ----------------------------
-- Table structure for `tags`
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'manh', 'manh', 'vi', '1526529820', null, null, null, '0');
INSERT INTO `tags` VALUES ('2', 'tuyen', 'tuyen', 'vi', '1526529820', null, null, null, '0');
INSERT INTO `tags` VALUES ('3', 'tin tức', 'tin-tuc', 'vi', '1526530190', '', '', '', '1');
INSERT INTO `tags` VALUES ('4', 'Kem bb', 'kem-bb', 'vi', '1526530223', '', '', '', '2');
INSERT INTO `tags` VALUES ('5', 'kem', 'kem', 'vi', '1526530670', null, null, null, '0');

-- ----------------------------
-- Table structure for `tags_news`
-- ----------------------------
DROP TABLE IF EXISTS `tags_news`;
CREATE TABLE `tags_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags_news
-- ----------------------------

-- ----------------------------
-- Table structure for `tags_to_news`
-- ----------------------------
DROP TABLE IF EXISTS `tags_to_news`;
CREATE TABLE `tags_to_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_raovat` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags_to_news
-- ----------------------------

-- ----------------------------
-- Table structure for `tags_to_product`
-- ----------------------------
DROP TABLE IF EXISTS `tags_to_product`;
CREATE TABLE `tags_to_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tags` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags_to_product
-- ----------------------------
INSERT INTO `tags_to_product` VALUES ('1', '1', '101');
INSERT INTO `tags_to_product` VALUES ('2', '2', '101');
INSERT INTO `tags_to_product` VALUES ('3', '5', '100');
INSERT INTO `tags_to_product` VALUES ('4', '4', '100');
INSERT INTO `tags_to_product` VALUES ('5', '3', '100');
INSERT INTO `tags_to_product` VALUES ('6', '1', '100');
INSERT INTO `tags_to_product` VALUES ('7', '2', '100');

-- ----------------------------
-- Table structure for `tbl_xnt`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_xnt`;
CREATE TABLE `tbl_xnt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  `mahh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sltd` int(11) DEFAULT NULL COMMENT 'Số lượng tồn đầu ngày',
  `sln` int(11) DEFAULT NULL COMMENT 'Số lượng hàng nhập trong ngày',
  `slx` int(11) DEFAULT NULL COMMENT 'Số lượng hàng xuất trong ngày',
  `sltc` int(11) DEFAULT NULL COMMENT 'Số lượng hàng tồn cuối ngày',
  `sltt` int(11) DEFAULT NULL COMMENT 'Số lượng hàng tồn tối thiểu',
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL COMMENT 'Giá Hiện Tại',
  `price_export` int(11) DEFAULT NULL COMMENT 'Giá Xuất Hàng',
  `price_import` int(11) DEFAULT NULL COMMENT 'Giá Nhập Hàng',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_xnt
-- ----------------------------
INSERT INTO `tbl_xnt` VALUES ('356', '1526490000', '1526551961', null, '0', '0', '1', '0', '1', '97', '129000', null, null);
INSERT INTO `tbl_xnt` VALUES ('357', '1526490000', '1526551961', null, '0', '0', '1', '0', '1', '95', '229000', null, null);

-- ----------------------------
-- Table structure for `thong_ke_online`
-- ----------------------------
DROP TABLE IF EXISTS `thong_ke_online`;
CREATE TABLE `thong_ke_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_date` int(11) NOT NULL,
  `today` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of thong_ke_online
-- ----------------------------
INSERT INTO `thong_ke_online` VALUES ('37', '1517850000', '0');
INSERT INTO `thong_ke_online` VALUES ('38', '1517936400', '1');
INSERT INTO `thong_ke_online` VALUES ('39', '1518022800', '29');
INSERT INTO `thong_ke_online` VALUES ('40', '1518109200', '20');
INSERT INTO `thong_ke_online` VALUES ('41', '1519578000', '9');
INSERT INTO `thong_ke_online` VALUES ('42', '1519664400', '15');
INSERT INTO `thong_ke_online` VALUES ('43', '1519750800', '5');
INSERT INTO `thong_ke_online` VALUES ('44', '1521046800', '55');
INSERT INTO `thong_ke_online` VALUES ('45', '1521133200', '9');
INSERT INTO `thong_ke_online` VALUES ('46', '1521219600', '233');
INSERT INTO `thong_ke_online` VALUES ('47', '1526317200', '332');
INSERT INTO `thong_ke_online` VALUES ('48', '1526403600', '258');
INSERT INTO `thong_ke_online` VALUES ('49', '1526490000', '541');
INSERT INTO `thong_ke_online` VALUES ('50', '1526835600', '251');
INSERT INTO `thong_ke_online` VALUES ('51', '1526922000', '245');
INSERT INTO `thong_ke_online` VALUES ('52', '1527008400', '95');
INSERT INTO `thong_ke_online` VALUES ('53', '1527094800', '114');
INSERT INTO `thong_ke_online` VALUES ('54', '1527181200', '51');
INSERT INTO `thong_ke_online` VALUES ('55', '1527267600', '378');
INSERT INTO `thong_ke_online` VALUES ('56', '1527440400', '265');
INSERT INTO `thong_ke_online` VALUES ('57', '1527699600', '427');
INSERT INTO `thong_ke_online` VALUES ('58', '1527786000', '20');
INSERT INTO `thong_ke_online` VALUES ('59', '1528045200', '41');
INSERT INTO `thong_ke_online` VALUES ('60', '1528131600', '43');
INSERT INTO `thong_ke_online` VALUES ('61', '1528218000', '120');
INSERT INTO `thong_ke_online` VALUES ('62', '1528390800', '182');
INSERT INTO `thong_ke_online` VALUES ('63', '1528477200', '37');
INSERT INTO `thong_ke_online` VALUES ('64', '1528736400', '336');
INSERT INTO `thong_ke_online` VALUES ('65', '1528822800', '128');
INSERT INTO `thong_ke_online` VALUES ('66', '1528995600', '435');
INSERT INTO `thong_ke_online` VALUES ('67', '1529341200', '15');
INSERT INTO `thong_ke_online` VALUES ('68', '1529427600', '105');

-- ----------------------------
-- Table structure for `user_sms`
-- ----------------------------
DROP TABLE IF EXISTS `user_sms`;
CREATE TABLE `user_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smsid` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8,
  `result` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `error` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `comment` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `create_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_sms
-- ----------------------------
INSERT INTO `user_sms` VALUES ('5', '1130b1db-ffcb-477b-862b-040e60174a888', '76', '0974901590', 'Mã Kích Hoạt SMS : 5950ac70440c6', '100', '0', null, null, '2017-06-26 13:40:48');
INSERT INTO `user_sms` VALUES ('6', '3141f19d-e25d-46fb-9cff-9c1cdd3371fb8', '76', '0974901590', 'abc test gửi lại', '100', '0', null, 'gửi lại', '2017-06-26 13:41:39');
INSERT INTO `user_sms` VALUES ('7', null, '610', '0986839102', 'Mã Kích Hoạt SMS : 5954a8af5779f', '103', '0', 'Balance not enough to send message', null, '2017-06-29 14:13:53');
INSERT INTO `user_sms` VALUES ('8', null, '611', '0986839102', 'Mã Kích Hoạt SMS : 5954a9ed7f497', '103', '0', 'Balance not enough to send message', null, '2017-06-29 14:19:09');
INSERT INTO `user_sms` VALUES ('9', null, '612', '0965986385', 'Mã Kích Hoạt SMS : 5954b39739ebb', '103', '0', 'Balance not enough to send message', null, '2017-06-29 15:00:23');
INSERT INTO `user_sms` VALUES ('10', null, '613', '01649962597', 'Mã Kích Hoạt SMS : 5955bbaedda8d', '103', '0', 'Balance not enough to send message', null, '2017-06-30 09:47:11');
INSERT INTO `user_sms` VALUES ('11', null, '614', '987654321', 'Mã Kích Hoạt SMS : 595606e747183', '103', '0', 'Balance not enough to send message', null, '2017-06-30 15:08:07');
INSERT INTO `user_sms` VALUES ('12', null, '615', '324234234', 'Mã Kích Hoạt SMS : 5956074367a46', '99', '0', 'Phone not valid:324234234', null, '2017-06-30 15:09:39');
INSERT INTO `user_sms` VALUES ('13', null, '616', '0915460000', 'Mã Kích Hoạt SMS : 595a22e73caf4', '103', '0', 'Balance not enough to send message', null, '2017-07-03 17:56:39');
INSERT INTO `user_sms` VALUES ('14', null, '617', '01649962597', 'Mã Kích Hoạt SMS : 595ae9294eb32', '103', '0', 'Balance not enough to send message', null, '2017-07-04 08:02:33');
INSERT INTO `user_sms` VALUES ('15', null, '618', '0985088848', 'Mã Kích Hoạt SMS : 595b3b0287471', '103', '0', 'Balance not enough to send message', null, '2017-07-04 13:51:46');
INSERT INTO `user_sms` VALUES ('16', null, '619', '0985088848', 'Mã Kích Hoạt SMS : 595c4381c1481', '103', '0', 'Balance not enough to send message', null, '2017-07-05 08:40:19');
INSERT INTO `user_sms` VALUES ('17', null, '620', '0986126561', 'Mã Kích Hoạt SMS : 595f3520d9e2e', '103', '0', 'Balance not enough to send message', null, '2017-07-07 14:15:45');
INSERT INTO `user_sms` VALUES ('18', null, '621', '0987999947', 'Mã Kích Hoạt SMS : 5960999273327', '103', '0', 'Balance not enough to send message', null, '2017-07-08 15:36:34');
INSERT INTO `user_sms` VALUES ('19', null, '622', '0869118060', 'Mã Kích Hoạt SMS : 59638b308df68', '103', '0', 'Balance not enough to send message', null, '2017-07-10 21:12:00');
INSERT INTO `user_sms` VALUES ('20', null, '623', '0983003484', 'Mã Kích Hoạt SMS : 59661988955c0', '103', '0', 'Balance not enough to send message', null, '2017-07-12 19:43:52');
INSERT INTO `user_sms` VALUES ('21', null, '624', '01652724972', 'Mã Kích Hoạt SMS : 5966e56f21617', '103', '0', 'Balance not enough to send message', null, '2017-07-13 10:13:51');
INSERT INTO `user_sms` VALUES ('22', null, '625', '09164278201', 'Mã Kích Hoạt SMS : 59697ab70dbfb', '99', '0', 'Phone not valid:09164278201', null, '2017-07-15 09:15:19');
INSERT INTO `user_sms` VALUES ('23', null, '626', '0964278201', 'Mã Kích Hoạt SMS : 59697b7e356e4', '103', '0', 'Balance not enough to send message', null, '2017-07-15 09:18:38');
INSERT INTO `user_sms` VALUES ('24', null, '627', '09642728201', 'Mã Kích Hoạt SMS : 59697cba3fe16', '99', '0', 'Phone not valid:09642728201', null, '2017-07-15 09:23:54');
INSERT INTO `user_sms` VALUES ('25', null, '628', '0964278201', 'Mã Kích Hoạt SMS : 5969ae9b73f4e', '103', '0', 'Balance not enough to send message', null, '2017-07-15 12:56:43');
INSERT INTO `user_sms` VALUES ('26', null, '629', '0975279573', 'Mã Kích Hoạt SMS : 5972f6b2ed53b', '103', '0', 'Balance not enough to send message', null, '2017-07-22 13:54:43');
INSERT INTO `user_sms` VALUES ('27', null, '630', '01648464081', 'Mã Kích Hoạt SMS : 5974f19ddd13a', '103', '0', 'Balance not enough to send message', null, '2017-07-24 01:57:34');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `md5_id` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(35) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(35) CHARACTER SET utf8 NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `use_salt` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `shop_name` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `avt_dir` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `avatar` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `use_logo` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `block` tinyint(3) unsigned DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` int(1) unsigned DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address_province` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `address_district` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `address_ward` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `use_mobile` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `use_face` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `use_yahoo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `use_skype` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `use_group` int(3) unsigned DEFAULT NULL,
  `active` int(1) unsigned DEFAULT NULL,
  `use_key` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `smskey` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `token` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `deleted` tinyint(3) unsigned DEFAULT NULL,
  `use_regisdate` int(11) unsigned DEFAULT NULL,
  `use_enddate` int(11) unsigned DEFAULT NULL,
  `lastest_login` int(11) unsigned DEFAULT NULL,
  `signup_date` int(11) DEFAULT NULL,
  `lever` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=645 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', null, 'admin', 'admin', 'daibkz@gmail.com', 'c26be8aaf53b15054896983b43eb6a65', 'Admin', 'Wm8KT06E', null, null, null, null, null, '0000-00-00', '1', 'Ninh Binh', '66', null, null, '0986839102', null, 'dainguyen', '', '4', '1', '9671508f22c9982fbac60ffc130f9b7811ec2b4d7f6e9f253679a3b950a3f5c8', null, null, null, '1498496400', '1814029200', '1528797398', null, '2');
INSERT INTO `users` VALUES ('617', '5d44ee6f2c3f71b73125876103c8f6c4', 'taikhoan', '01649962597', 'cauhai.1297@gmail.com', 'ab77a83b110f3517f746938bf49d0ae3', 'Nguyễn Văn Hải', null, null, '04072017', '986bc2226881542276ecf99e72443fc7.jpg', null, '0', null, null, 'Số 38 - Đường Dương Khuê ', '01', '005', '00163', null, null, null, null, null, '1', null, '595ae9294eb32', '2d9228de1d6c18ad3ab56b2a0c6d2def', '0', '1499130153', null, '1500969769', null, '0');
INSERT INTO `users` VALUES ('620', 'b73dfe25b4b8714c029b37a6ad3006fa', 'taikhoan', '0986126561', 'hungvu258@gmail.com', 'a9f1ea798b9bcdcf0573dad7af97cbe0', 'Vũ Văn Hùng', null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, '1', null, '595f3520d9e2e', '86054560b15b889346283a906596eaa6', '0', '1499411744', null, '1499411806', null, '0');
INSERT INTO `users` VALUES ('612', 'f76a89f0cb91bc419542ce9fa43902dc', 'ĐẶNG VĂN ĐIỀN', '0965986385', 'cauvan1995@gmail.com', 'c26be8aaf53b15054896983b43eb6a65', 'ĐẶNG VĂN ĐIỀN', '-h01K8w3', null, '03072017', 'ad29f13d8e28e7cabeaf257192385ba6.png', null, '0', null, '1', 'Số 36 Dương Khuê', '01', '005', '00163', null, null, null, null, '4', '1', 'c51519f1ba3de1da58ef5bd2850861e5bf233a4b55eec27fdef32357a98b7205', '5954b39739ebb', '36fb0bab89277945551398212d0c1d8e', '0', '1499619600', '2067613200', '1504604112', '2017', '1');
INSERT INTO `users` VALUES ('619', 'cdc0d6e63aa8e41c89689f54970bb35f', 'taikhoan', '0985088848', 'ngoc.dbsk@gmail.com', 'acb4798109c61257851f53f7521d8a4f', 'Đỗ Thị Ngọc', null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, '1', null, '595c4381c1481', 'cd3c498d71a8889eebe96ed5946df7a3', '0', '1499218817', null, '1499503366', null, '0');
INSERT INTO `users` VALUES ('616', '7750ca3559e5b8e1f44210283368fc16', 'taikhoan', '0915460000', 'ktviet.com.vn@gmail.com', '6140c8871dd9df0c091760c83d3562a7', 'Kỹ thuật việt', null, null, null, null, null, '0', null, null, 'Số 38 Đường Dương Khuê ', '01', '005', '00163', null, null, null, null, null, '1', null, '595a22e73caf4', 'd04eedd402adbee246d22bd05a16d82f', '0', '1499079399', null, '1501031009', null, '0');
INSERT INTO `users` VALUES ('621', '85fc37b18c57097425b52fc7afbb6969', 'taikhoan', '0987999947', 'ktviet.com.vn@gmail.com', '6140c8871dd9df0c091760c83d3562a7', 'aalo.vn', null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, '0', null, '5960999273327', '9652a76f8510d397d571651a98234986', '0', '1499502994', null, '1500945384', null, '0');
INSERT INTO `users` VALUES ('622', '3871bd64012152bfb53fdf04b401193f', 'taikhoan', '0869118060', 'Sales@maytinhtruongson.com.vn', '29ac98cd17193f4ce1fe80017bff7cb8', 'Phan Văn Trường', null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, '0', null, '59638b308df68', 'f082409b697ee95fbd373f4078ade2e3', '0', '1499695920', null, null, null, '0');
INSERT INTO `users` VALUES ('623', 'a733fa9b25f33689e2adbe72199f0e62', 'taikhoan', '0983003484', 'cunhue@gmail.com', '3c31d5cf8058f39ef8ed267658fcae11', 'Nguyễn Trọng Hiền', null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, '0', null, '59661988955c0', 'd89f5465c4496ea3cfe6a7f3b57c365a', '0', '1499863432', null, '1499863576', null, '0');
INSERT INTO `users` VALUES ('629', '051e4e127b92f5d98d3c79b195f2b291', 'taikhoan', '0975279573', 'vietbk193@gmail.com', 'f1160b722eceefca344715db03d1c66b', 'Ma Thế Việt', null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, '0', null, '5972f6b2ed53b', '4cd25c877db0de884d1dcf85f1211fc6', '0', '1500706482', null, '1500706576', null, '0');
INSERT INTO `users` VALUES ('628', '42e77b63637ab381e8be5f8318cc28a2', 'taikhoan', '0964278201', 'nguyenvantrisahara@gmail.com', 'ef9468922149cf75765bab2d348d64aa', 'Nguyễn Văn Trí', null, null, '21072017', '6c92927ea9071ce920efcc34f6f732c2.jpg', null, '0', null, null, '52 Đường Lê Quang Đạo Quận Nam Từ Liêm', '01', '019', '00592', null, null, null, null, null, '0', null, '5969ae9b73f4e', '878cbe26fbc949c65aaf15d3ba3019b9', '0', '1500098203', null, '1500686349', null, '0');
INSERT INTO `users` VALUES ('643', '9b698eb3105bd82528f23d0c92dedfc0', 'taikhoan', '0977160509', 'kythuatqts@gmail.com', '6054ab63b50061d8bc40e6433e2958d3', 'test qts', 'farc5l8U', null, null, null, null, '0', null, null, null, '2', null, null, null, null, null, null, null, '1', '65fe406241980fee4234747606fbb0fcbfb927eb021f16a5de230d9a36629012', null, '5689741d0d7c9a3824d297446fe57f9a', null, '1506272400', null, '1506333363', null, '0');
INSERT INTO `users` VALUES ('644', '8c7bbbba95c1025975e548cee86dfadc', 'taikhoan', '0985554522', 'Vananh@gmail.com', 'cdb6962bc528e37a4b44d77bba500f71', 'Vân', '20X-efY5', null, null, null, null, '0', null, null, null, '2', null, null, null, null, null, null, null, '1', '09c7375321d2ce9a405e4c1606850ccdb7413aed9db60ec941a374a31c42f129', null, '418873c9025d4b7ea6037b649101bd67', null, '1506272400', null, '1506330986', null, '0');
INSERT INTO `users` VALUES ('638', '4c27cea8526af8cfee3be5e183ac9605', 'taikhoan', '0982255552', 'buivananh.th@gmail.com', '01b080fe7398c4c669be0be9cd78792d', 'Vân', '9SZDFmt3', null, null, null, null, '0', null, null, null, '1', null, null, null, null, null, null, null, '1', '09c7375321d2ce9a405e4c1606850ccdb7413aed9db60ec941a374a31c42f129', null, '553048f16cca9be3bbd6cf0ea897dd39', null, '1505926800', null, '1506331171', null, '0');
INSERT INTO `users` VALUES ('639', '0f96613235062963ccde717b18f97592', 'taikhoan', '0982255552', 'Van@gmail.com', 'c26be8aaf53b15054896983b43eb6a65', 'Vân anh', 'S3phkf4r', null, null, null, null, '0', null, null, null, '1', null, null, null, null, null, null, null, '0', '6760ca72cfe94cd737b7a804b6f415f2d28ed2339429656e2fb086e47312517d', null, 'aec76ec422606554a14edd7ff28cee3f', null, '1505926800', null, null, null, '0');
INSERT INTO `users` VALUES ('640', '4ffce04d92a4d6cb21c1494cdfcd6dc1', 'taikhoan', '0982221989', 'cskhqts@gmail.com', '2a810c88e3cb947e85bbab2728102f0d', 'Test', 'K7Un7sVB', null, null, null, null, '0', null, null, null, '2', null, null, null, null, null, null, null, '1', '9afeb87c5bfc4b34fc5741ceb2fa3f551bfebd97824d343e4ea4717935810b40', null, '2d9e84fec0ac40a1ee3220abb13714f3', null, '1505926800', null, null, null, '0');
INSERT INTO `users` VALUES ('641', '67e103b0761e60683e83c559be18d40c', 'taikhoan', '0977160509', 'nguyendat@gmail.com', 'c26be8aaf53b15054896983b43eb6a65', 'nguyễn đát', 't1ZY5jt3', null, null, null, null, '0', null, null, null, '2', null, null, null, null, null, null, null, '0', '9219376c8a5e99a4a559fc74630803f87e49ecd18bcca1668c7623ef80ea7c5e', null, '57a4c36d67bf3e23971f7bdecec4f7a5', null, '1506272400', null, null, null, '0');

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link_video` text CHARACTER SET utf8,
  `title_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keyword_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', 'video cho em gần anh thêm chút nữa', '<p>n&ocirc;i dung video h&aacute;t rất hay nh&eacute;</p>\r\n', 'OcpO-cjIKYM', '', '', '', 'vi', '3', '1', null, null, '1', 'upload/img/video/dia-diem-du-lich-5.jpg', '1', 'video-cho-em-gan-anh-them-chut-nua');
INSERT INTO `video` VALUES ('2', 'Bài hát giành cho người đang yêu', '<p>nội dung m&ocirc; tả</p>\r\n', 'EcgL7jBEclc', '', '', '', 'vi', '5', '1', null, '1', '2', 'upload/img/video/dia-diem-du-lich-3.jpg', '1', 'bai-hat-gianh-cho-nguoi-dang-yeu');

-- ----------------------------
-- Table structure for `video_category`
-- ----------------------------
DROP TABLE IF EXISTS `video_category`;
CREATE TABLE `video_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description_seo` text CHARACTER SET utf8,
  `keyword_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of video_category
-- ----------------------------
INSERT INTO `video_category` VALUES ('3', 'Danh mục video của năm', 'danh-muc-video-cua-nam', '1', '1', null, null, 'upload/img/video/dia-diem-du-lich-4.jpg', '', '', null, 'vi', '<p>nội dung m&ocirc; tả</p>\r\n', null);
INSERT INTO `video_category` VALUES ('4', 'danh mục video của năm 2018', 'danh-muc-video-cua-nam-2018', '2', '1', '1', null, 'upload/img/video/dia-diem-du-lich-41.jpg', '', '', null, 'vi', '<p>nội dung m&ocirc; tả</p>\r\n', null);
INSERT INTO `video_category` VALUES ('5', 'video năm 2019', 'video-nam-2019', '3', '1', null, null, null, '', '', null, 'vi', '<p>n&ocirc;i dung m&ocirc; tả</p>\r\n', '3');

-- ----------------------------
-- Table structure for `ward`
-- ----------------------------
DROP TABLE IF EXISTS `ward`;
CREATE TABLE `ward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `districtid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ward
-- ----------------------------

-- ----------------------------
-- Table structure for `wishlist`
-- ----------------------------
DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist` (
  `pro_id` decimal(21,0) DEFAULT NULL,
  `user_id` decimal(21,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wishlist
-- ----------------------------
