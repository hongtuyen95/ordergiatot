-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th9 10, 2018 lúc 01:31 PM
-- Phiên bản máy phục vụ: 5.5.31
-- Phiên bản PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thoitrangb_test1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `access` text CHARACTER SET utf8
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `access`
--

INSERT INTO `access` (`id`, `user_id`, `access`) VALUES
(1, 11, '{\"product\":[\"products\",\"add\",\"edit\",\"delete\",\"categories\",\"cat_add\",\"cat_edit\",\"cat_delete\"]}'),
(2, 12, '{\"menu\":[\"menulist\",\"add\",\"edit\",\"delete\"]}'),
(3, 2, '{\"order\":[\"orders\",\"delete_once_orders\",\"giaohang\"],\"exchange\":[\"index\",\"pay\",\"detail\"],\"khieunai\":[\"list_khieunai\"],\"product\":[\"products\",\"category_pro\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\",\"delete_once_comment\",\"delete_once_question\"],\"search\":[\"index\"],\"depot\":[\"hang_order\",\"hang_kygui\",\"lists\"],\"config\":[\"tygiacannang\",\"phimuahang\"],\"statistic\":[\"employees\",\"debt\"],\"menu\":[\"addmenu\",\"menulist\",\"delete\"],\"pages\":[\"pagelist\",\"addpage\",\"delete_page_once\"],\"contact\":[\"contacts\",\"delete\"],\"news\":[\"newslist\",\"categories\",\"tagsnews\",\"addnews\",\"delete_once_news\",\"cat_add_news\",\"del_catnews_once\"],\"inuser\":[\"categories\",\"cate_add\",\"delete_cat_once\"],\"imageupload\":[\"banners\",\"addbanner\",\"delete_Banner_once\"],\"users\":[\"listusers\"],\"admin\":[\"site_option\",\"maps\",\"store_shopping\"]}'),
(9, 650, '{\"order\":[\"orders\",\"delete_once_orders\",\"giaohang\"],\"depot\":[\"lists\"],\"exchange\":[\"index\"]}'),
(4, 1, '{\"inuser\":[\"categories\",\"cate_add\",\"delete_cat_once\"],\"media\":[\"listAll\",\"categories\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\"],\"video\":[\"listAll\",\"category_video\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\"],\"product\":[\"products\",\"category_pro\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\",\"delete_once_comment\",\"delete_once_question\"],\"order\":[\"orders\",\"listSale\",\"listProvince\",\"delete_once_orders\",\"addSale\",\"del_once_sale\"],\"attribute\":[\"listBrand\",\"listLocale\",\"listColor\",\"listprice\",\"listOption\",\"addbrand\",\"delete_brand_once\",\"addlocale\",\"delete_locale_once\",\"addcolor\",\"delete_color_once\",\"addprice\",\"delete_price_once\",\"addoption\",\"delete_option_once\"],\"news\":[\"newslist\",\"categories\",\"tagsnews\",\"addnews\",\"delete_once_news\",\"cat_add_news\",\"del_catnews_once\"],\"tag\":[\"tag\"],\"menu\":[\"addmenu\",\"menulist\",\"delete\"],\"comment\":[\"comments\",\"questions\"],\"imageupload\":[\"banners\",\"addbanner\",\"delete_Banner_once\"],\"pages\":[\"pagelist\",\"addpage\",\"delete_page_once\"],\"contact\":[\"contacts\",\"delete\"],\"raovat\":[\"listraovat\",\"categories\",\"tagtinrao\",\"add\",\"delete_raovat_once\",\"cat_add\",\"del_cattinrao_once\"],\"email\":[\"emails\",\"delete\"],\"support\":[\"listSuport\",\"add\",\"delete_support_once\"],\"users\":[\"listuser_admin\",\"listusers\",\"add_users\",\"smslist\"],\"admin\":[\"site_option\",\"maps\",\"store_shopping\",\"setup_product\"],\"province\":[\"listDistric\",\"listWard\",\"street\"],\"report\":[\"soldout\",\"bestsellers\"]}'),
(5, 580, '{\"admin\":[\"\",\"site_option\",\"inuser\",\"comment\",\"email\",\"contact\"],\"users\":[\"delete\"],\"order\":[\"orders\",\"Deleteeorder\"],\"support\":[\"add\",\"edit\",\"x\\u00f3a\"],\"product\":[\"products\",\"add\",\"edit\",\"delete\",\"categories\",\"cat_add\",\"cat_edit\",\"listCodeSale\",\"cat_delete\",\"images\"],\"news\":[\"newslist\",\"add\",\"edit\",\"delete\",\"categories\",\"cat_add\",\"cat_edit\",\"delete_cat\"],\"pages\":[\"pagelist\",\"add\",\"edit\",\"delete\",\"action\"],\"menu\":[\"menulist\",\"add\",\"edit\",\"delete\"]}'),
(6, 612, '{\"media\":[\"listAll\",\"categories\"],\"video\":[\"listAll\",\"category_video\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\"]}'),
(7, 636, '{\"product\":[\"products\",\"category_pro\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\",\"delete_once_comment\",\"delete_once_question\"],\"order\":[\"orders\",\"listSale\",\"listProvince\",\"delete_once_orders\",\"addSale\",\"del_once_sale\"],\"news\":[\"newslist\",\"categories\",\"tagsnews\",\"addnews\",\"delete_once_news\",\"cat_add_news\",\"del_catnews_once\"],\"users\":[\"listuser_admin\",\"listusers\",\"delete_users_once\",\"add_users\"],\"admin\":[\"site_option\",\"maps\",\"store_shopping\"]}'),
(8, 648, '{\"depot\":[\"hang_order\",\"statis\"]}'),
(10, 651, '{\"depot\":[\"hang_order\"]}'),
(11, 652, '{\"order\":[\"orders\",\"giaohang\"],\"exchange\":[\"index\",\"pay\",\"detail\"],\"khieunai\":[\"list_khieunai\"],\"search\":[\"index\"]}'),
(12, 661, '{\"order\":[\"orders\",\"giaohang\"],\"search\":[\"index\"],\"depot\":[\"hang_order\",\"statis\"]}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `alias`
--

CREATE TABLE `alias` (
  `id` int(11) NOT NULL,
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
  `services` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `alias`
--

INSERT INTO `alias` (`id`, `alias`, `type`, `item_id`, `new_cat`, `new`, `pro_cat`, `pro`, `page`, `m_cat`, `media`, `locale`, `brand`, `inuser`, `video_cat`, `video`, `services_cat`, `services`) VALUES
(240, 'gioi-thieu-ve-ordergiatot-vn', 'page', 0, 0, 0, 0, 0, 39, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'up-anh-jpeg-cha-le-khong-duoc-12', 'media', 0, 0, 0, 0, 0, 0, 0, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'hinh-anh', 'm-cat', 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'bai-hat-gianh-cho-nguoi-dang-yeu', 'video', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(88, 'danh-muc-video-cua-nam-2018', 'video-cat', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 4, NULL, NULL, NULL),
(89, 'ban-nha-tai-ha-noi-viet-nam', 'services', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(90, 'khac', 'cate-ser', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 42, NULL),
(194, 'nguyen-cong-hoan', 'cat_inuser', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 27, NULL, NULL, NULL, NULL),
(195, 'pham-minh-quan', 'cat_inuser', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 30, NULL, NULL, NULL, NULL),
(256, 'marketing-ban-hang', 'new', 0, 0, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'tab-dau-giuong-go-go-do-cao-cap-926b', 'pro', 0, 0, 0, 0, 18, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'bo-phong-ngu-han-quoc-co-ghe-hoc-xoay-a689bg15', 'pro', 0, 0, 0, 0, 17, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'tu-ao-2-canh-hien-dai-phong-cach-han-quoc-a689d2', 'pro', 0, 0, 0, 0, 16, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'ban-an-sang-trong-t072', 'pro', 0, 0, 0, 0, 15, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'ghe-an-a656', 'pro', 0, 0, 0, 0, 11, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'ban-an-1m2-mat-kinh-vien-den-t0509092-1', 'pro', 0, 0, 0, 0, 14, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'ghe-nhua-duc-nguyen-khoi-mau-xanh-ck6', 'pro', 0, 0, 0, 0, 13, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'ghe-an-bang-da-cao-cap-y148917', 'pro', 0, 0, 0, 0, 12, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'ban-tra-1m4-cao-cap-phong-cach-phap-88012', 'pro', 0, 0, 0, 0, 6, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'tin-tuc', 'cate-new', 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'khong-lo-tac-bien', 'new', 0, 0, 10, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'uu-dai-so-luong-theo-don-hang', 'new', 0, 0, 9, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'hoan-100-tien-khi-mat-hang', 'new', 0, 0, 8, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'cam-ket', 'new', 0, 0, 7, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '6-ly-do-chon-chung-toi', 'cate-new', 0, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'noi-that-phong-khach', 'cate-pro', 0, 0, 0, 4, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'noi-that-phong-an', 'cate-pro', 0, 0, 0, 3, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'noi-that-phong-ngu', 'cate-pro', 0, 0, 0, 2, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'nguyen-thanh-dat', 'cat_inuser', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 29, NULL, NULL, NULL, NULL),
(241, 'dat-hang-trung-quoc-viet-nam', 'page', 0, 0, 0, 0, 0, 40, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'van-chuyen-hang-trung-quoc-viet-nam', 'page', 0, 0, 0, 0, 0, 41, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'tu-van-va-ho-tro-nguon-hang-trung-quoc', 'page', 0, 0, 0, 0, 0, 42, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'chuyen-doi-tien-te-viet-nam-trung-quoc', 'page', 0, 0, 0, 0, 0, 43, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'chinh-sach-quy-dinh', 'page', 0, 0, 0, 0, 0, 44, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'dich-vu', 'cate-new', 0, 2, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'huong-dan', 'page', 0, 0, 0, 0, 0, 45, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'may-mai-sunfulo-1', 'pro', 0, 0, 0, 0, 20, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'thuc-pham-chuc-nang', 'pro', 0, 0, 0, 0, 21, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'luxubu', 'pro', 0, 0, 0, 0, 22, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'chi-phi-re-hon-10-30', 'new', 0, 0, 12, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'quy-trinh-mua-hang-hoa', 'cate-new', 0, 4, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'dang-ky-tai-khoan-tai-website', 'new', 0, 0, 13, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'quy-trinh-dat-van-chuyen-hang-hoa', 'cate-new', 0, 6, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'cai-dat-cong-cu-dat-hang', 'new', 0, 0, 14, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'chon-mua-hang-tai-cac-website-trung-quoc', 'new', 0, 0, 15, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'chuyen-tien-dat-coc-cho-chung-toi', 'new', 0, 0, 16, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'cuoi-cung-ban-chi-doi-nhan-hang', 'new', 0, 0, 17, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'dang-ky-tai-khoan-tai-website-2', 'new', 0, 0, 18, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'cung-cap-dia-chi-va-ten-duoc-cap', 'new', 0, 0, 19, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'dang-nhap-he-thong', 'new', 0, 0, 20, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'cap-nhat-thong-tin-hang-hoa', 'new', 0, 0, 21, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'doi-nhan-hang-va-thanh-toan', 'new', 0, 0, 22, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'dich-vu-dat-hang-trung-quoc', 'new', 0, 0, 23, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'dich-vu-ship-hang-trung-quoc', 'new', 0, 0, 24, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'dich-vu-dat-hang-quang-chau', 'new', 0, 0, 25, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'dich-vu-mua-hang-aliexpress', 'new', 0, 0, 26, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'dich-vu-mua-hang-alibaba', 'new', 0, 0, 27, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'dich-vu-mua-hang-taobao', 'new', 0, 0, 28, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'bang-gia', 'page', 0, 0, 0, 0, 0, 46, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'quy-dinh-thanh-toan', 'page', 0, 0, 0, 0, 0, 47, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'quy-dinh-bao-hiem-hang-hoa', 'page', 0, 0, 0, 0, 0, 48, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'chinh-sach-giai-quyet-khieu-nai', 'page', 0, 0, 0, 0, 0, 49, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'chinh-sach-giao-hang', 'page', 0, 0, 0, 0, 0, 50, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'huong-dan-mua-hang', 'page', 0, 0, 0, 0, 0, 51, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 'huong-dan-ship-hang', 'page', 0, 0, 0, 0, 0, 52, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banking`
--

CREATE TABLE `banking` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `acount` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banking`
--

INSERT INTO `banking` (`id`, `name`, `acount`, `bank`, `sort`, `time`) VALUES
(1, 'NGUYỄN THỊ VIỆT ANH', '02131000645194', 'VIETINBANK CHI NHÁNH BẮC GIANG', 1, 1531186861),
(2, 'NGUYỄN THỊ VIỆT ANH', '0731000645194', 'VIETCOMBANK CHI NHÁNH BẮC GIANG', 2, 1531186811);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `code_sale`
--

CREATE TABLE `code_sale` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `active` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `code_sale`
--

INSERT INTO `code_sale` (`id`, `name`, `code`, `price`, `active`) VALUES
(10, 'Noel', 'ADCVX', 10, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `comment` text CHARACTER SET utf8,
  `reply` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `review` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments_binhluan`
--

CREATE TABLE `comments_binhluan` (
  `id` int(11) NOT NULL,
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
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments_binhluan`
--

INSERT INTO `comments_binhluan` (`id`, `id_sanpham`, `comment`, `giatri`, `userid`, `parent_id`, `time`, `date`, `flg`, `reply`, `review`, `user_name`, `user_email`, `lang`) VALUES
(1, 5, 'nội dung đánh giá sản phẩm này rất tốt', 5, 0, 0, 1505698798, '2017-09-18', 0, 0, 1, 'trần mạnh', 'dangtranmanh051187@gmail.com', '1'),
(2, 5, 'nội dung bình luận', 0, 0, 0, 1505698841, '2017-09-18', 0, 0, 1, 'trần mạnh', 'dangtranmanh051187@gmail.com', '1'),
(3, 5, 'noi dung binh luận đánh giá nhận xét', 0, 0, 0, 1505699713, '2017-09-18', 0, 0, 0, 'trần mạnh', 'dangtranmanh051187@gmail.com', '1'),
(4, 5, 'nội dung bình luận tiếp theo', 4, 0, 0, 1505699941, '2017-09-18', 0, 0, 1, 'trần mạnh', 'dangtranmanh051187@gmail.com', '1'),
(5, 5, 'bình luận của vũ', 0, 0, 0, 1505700184, '2017-09-18', 0, 0, 1, 'trần long vũ', 'dangtranmanh051187@gmail.com', '1'),
(6, 5, 'bình luận của vũ', 0, 0, 0, 1505700223, '2017-09-18', 0, 0, 1, 'trần long vũ', 'dangtranmanh051187@gmail.com', '1'),
(7, 5, 'binh luận mới', 2, 0, 0, 1505700317, '2017-09-18', 0, 0, 1, 'tiến đạt', 'nguyentiendat@gmail.com', '1'),
(8, 5, 'noi dung binh luận', 1, 0, 0, 1505702973, '2017-09-18', 0, 0, 1, 'công sáng', 'congsang@gmail.com', '1'),
(9, 5, 'bình luận tiếp theo', 5, 0, 0, 1505703111, '2017-09-18', 0, 0, 1, 'công sáng', 'congsang@gmail.com', '1'),
(10, 5, 'noi trung tra loi binh luan', 4, 0, 0, 1505721191, '0000-00-00', 0, 7, 1, 'cong sangs', 'congsang@gmail.com', '1'),
(11, 4, 'Tốt', 5, 0, 0, 1505981714, '2017-09-21', 0, 0, 1, 'Vân', 'buivananh.th@gmail.com', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_banner`
--

CREATE TABLE `config_banner` (
  `id` int(11) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `field` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `active` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_banner`
--

INSERT INTO `config_banner` (`id`, `type`, `name`, `field`, `active`) VALUES
(1, '0', 'Popup', 'banner', '1'),
(2, '0', 'Slide', 'slide', '1'),
(3, '0', 'banner trái', 'left', '0'),
(4, '0', 'Banner phải', 'right', '0'),
(5, '0', 'banner top', 'top', '0'),
(6, '0', 'banner bottom', 'bottom', '1'),
(7, '0', 'Đối tác', 'partners', '0'),
(8, '1', 'Báo giá', 'danhmuc', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_checkpro`
--

CREATE TABLE `config_checkpro` (
  `id` int(11) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `field` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `active` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_checkpro`
--

INSERT INTO `config_checkpro` (`id`, `type`, `name`, `field`, `color`, `active`) VALUES
(1, 'product', 'sản phẩm mới', 'hot', 'd73925', '0'),
(2, 'product', 'Trang chủ', 'home', '008d4c', '1'),
(3, 'product', 'sp khuyến mại', 'coupon', 'f39c12', '0'),
(4, 'product', 'sản phẩm nổi bật', 'focus', 'd352d4', '0'),
(5, 'product_category', 'Trang chủ', 'home', 'd73925', '1'),
(6, 'product_category', 'Danh mục mới', 'hot', '008d4c', '0'),
(7, 'product_category', 'Nổi bật', 'focus', 'c3c3c3', '0'),
(8, 'product_category', 'Đặc biệt', 'coupon', 'd352d4', '0'),
(9, 'news', 'Trang chủ', 'home', 'd73925', '1'),
(10, 'news', 'Tin mới nhất', 'focus', '008d4c', '1'),
(11, 'news', 'Tin công ty', 'hot', '4e8e94', '0'),
(12, 'news_category', 'Trang chủ', 'home', 'd73925', '1'),
(13, 'news_category', 'Lý do chọn chúng tôi', 'hot', '4e8e94', '1'),
(14, 'news_category', 'Quy trình', 'focus', 'c3c3c3', '1'),
(15, 'news_category', 'Danh mục bên trái', 'coupon', '0098da', '0'),
(16, 'media', 'Trang chủ', 'home', 'd73925', '1'),
(17, 'media', 'nổi bật', 'focus', '008d4c', '1'),
(18, 'media', 'Đặc biệt', 'hot', 'c3c3c3', '1'),
(19, 'media_category', 'Trang chủ', 'home', 'd73925', '0'),
(20, 'media_category', 'Mới', 'hot', '008d4c', '1'),
(21, 'media_category', 'Nổi bật', 'focus', 'c3c3c3', '0'),
(22, 'media_category', 'Cột trái', 'coupon', 'd352d4', '0'),
(23, 'video', 'Trang chủ', 'home', 'd73925', '0'),
(24, 'video', 'nổi bật', 'focus', '008d4c', '0'),
(25, 'video', 'Đặc biệt', 'hot', 'c3c3c3', '0'),
(26, 'video_category', 'Trang chủ', 'home', 'd73925', '1'),
(27, 'video_category', 'Mới', 'hot', '008d4c', '1'),
(28, 'video_category', 'Nổi bật', 'focus', 'c3c3c3', '0'),
(29, 'staticpage', 'Trang chủ', 'home', 'd73925', '1'),
(30, 'staticpage', 'Focus', 'focus', '008d4c', '1'),
(31, 'staticpage', 'Đặc biệt', 'hot', 'c3c3c3', '0'),
(32, 'raovat', 'Trang chủ', 'home', 'd73925', '1'),
(33, 'raovat', 'nổi bật', 'focus', '008d4c', '1'),
(34, 'raovat', 'Đặc biệt', 'hot', 'c3c3c3', '1'),
(35, 'raovat_category', 'Trang chủ', 'home', 'd73925', '1'),
(36, 'raovat_category', 'Mới', 'hot', '008d4c', '1'),
(37, 'raovat_category', 'Nổi bật', 'focus', 'c3c3c3', '1'),
(38, 'product_category', 'Ảnh đại diện', 'image', '', '1'),
(39, 'news_category', 'ảnh danh mục news', 'image', NULL, '0'),
(40, 'staticpage', 'ảnh nội dung', 'image', NULL, '1'),
(41, 'video_category', 'ảnh danh mục video', 'image', NULL, '1'),
(42, 'media_category', 'ảnh danh mục media', 'image', NULL, '1'),
(43, 'product', 'giá cũ', 'price', NULL, '1'),
(44, 'product', 'giá bán', 'price_sale', NULL, '1'),
(45, 'product', 'thẻ tags', 'tags', NULL, '0'),
(46, 'hotline', 'Hiện thị hotline', 'hotline', '0', '1'),
(47, 'hotline', 'Chát facebook', 'chat_fanpage', '0', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_menu`
--

CREATE TABLE `config_menu` (
  `id` int(11) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `field` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `active` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_menu`
--

INSERT INTO `config_menu` (`id`, `type`, `name`, `field`, `active`) VALUES
(2, 'top', 'menu chúng tôi', NULL, '1'),
(3, 'left', 'menu left', NULL, '0'),
(4, 'right', 'Menu bottom', NULL, '1'),
(5, 'bottom', 'Menu chân trang', NULL, '1'),
(6, 'tag', 'menu tag', NULL, '0'),
(7, 'bottom_2', 'menu bottom 2', NULL, '0'),
(8, 'bottom_3', 'menu bottom 3', NULL, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_phimuahang`
--

CREATE TABLE `config_phimuahang` (
  `id` int(11) NOT NULL,
  `from` float(22,0) DEFAULT NULL,
  `to` float(22,0) DEFAULT NULL,
  `price` float(22,2) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `config_phimuahang`
--

INSERT INTO `config_phimuahang` (`id`, `from`, `to`, `price`, `time`) VALUES
(1, 0, 3500000, 4.00, 1534149058),
(2, 3500000, 150000000, 2.00, 1534151019),
(3, 150000000, 1000000000, 1.50, 1534151087);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_tygiacannang`
--

CREATE TABLE `config_tygiacannang` (
  `id` int(11) NOT NULL,
  `from` float(22,2) DEFAULT NULL,
  `to` float(22,2) DEFAULT NULL,
  `price` int(22) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `config_tygiacannang`
--

INSERT INTO `config_tygiacannang` (`id`, `from`, `to`, `price`, `time`) VALUES
(1, 1.00, 30.00, 20000, 1534152808),
(2, 30.00, 300.00, 17000, 1534152945),
(3, 300.00, 1000.00, 15000, 1534152965);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_wiget`
--

CREATE TABLE `config_wiget` (
  `id` int(11) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `field` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `active` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_wiget`
--

INSERT INTO `config_wiget` (`id`, `type`, `name`, `field`, `active`) VALUES
(1, NULL, 'banner trang chủ', 'banner', '1'),
(2, NULL, 'slide', 'slide', '1'),
(3, NULL, 'banner trái', 'left', '0'),
(4, NULL, 'Banner phải', 'right', '0'),
(5, NULL, 'banner top', 'top', '0'),
(6, NULL, 'banner bottom', 'bottom', '0'),
(7, NULL, 'đối tác', 'partners', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
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
  `cat_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `full_name`, `phone`, `email`, `address`, `city`, `country`, `comment`, `mark`, `show`, `time`, `cat_name`) VALUES
(9, 'donkihote', '094857643', 'abc@gmail.com', 'xumantra', NULL, NULL, 'Lam sao su dung camera ip', 0, 1, 1474383531, 'Camera'),
(13, 'Vân', '0982255552', 'buivananh.th@gmail.com', 'sâsasaas', NULL, NULL, 'sxssxxs', 0, 0, 1505980957, NULL),
(14, 'Vân', '0989339814', 'buivananh.th@gmail.com', ' Số 7, ngách 71 Ngõ 120 Phường Vĩnh Tuy, Quận Hai Bà Trưng, TP Hà Nội', NULL, NULL, 'sdsdsd', 0, 0, 1512033926, NULL),
(15, 'leanh', '973836829', 'leanh.qts.vn@gmail.com', 'hà nội', NULL, NULL, NULL, 0, 1, 1534998849, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` int(11) UNSIGNED DEFAULT NULL,
  `gender` tinyint(3) UNSIGNED DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` int(11) UNSIGNED DEFAULT NULL,
  `district` int(11) UNSIGNED DEFAULT NULL,
  `ward` int(10) UNSIGNED DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  `date` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `code`, `phone`, `email`, `birthday`, `gender`, `address`, `place`, `province`, `district`, `ward`, `company`, `tax_code`, `note`, `user_id`, `payment`, `date`, `time`, `date_time`) VALUES
(17, 'Hồng Thất Công', 'KH17', '0986083468', 'hongthatcong@gmail.com', 17, 1, '', NULL, NULL, NULL, NULL, 'Cái Bang', '3643bhfsdhfds', '', 2, NULL, NULL, '1526551811', NULL),
(18, 'Tiều Cái', 'KH18', '09647239064', 'tieucai@luongson.com', 17, 1, '108 Lương Sơn', NULL, NULL, NULL, NULL, 'Lương Sơn Bạc', 'DV4364326', '', 2, NULL, NULL, '1526551875', NULL),
(19, 'Tào Tháo', 'KH19', '06949326935', 'taothao@tamquoc.com', 17, 1, '', NULL, NULL, NULL, NULL, 'Tam Quốc Diễn Nghĩa', '634ggdsgsgDG', '', 2, NULL, NULL, '1526551937', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_debt`
--

CREATE TABLE `customer_debt` (
  `id` int(11) NOT NULL,
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
  `note` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer_debt`
--

INSERT INTO `customer_debt` (`id`, `id_customer`, `id_create`, `code`, `nkd`, `ghino`, `ghico`, `nkc`, `type`, `date_time`, `time_insert`, `note`) VALUES
(19, 14, NULL, 'HD38', 0, 760000, 0, -860000, 'Bán hàng', 1526490000, 1526527753, 0),
(20, 14, 580, 'HD38', -860000, 0, 860000, 0, 'Thanh toán tiền hàng', 1526490000, 1526540055, 0),
(21, 13, NULL, 'HD39', 0, 1760000, 0, -1792000, 'Bán hàng', 1526490000, 1526541631, 0),
(22, 18, 2, 'HD40', 0, 358000, 0, -450840, 'Bán hàng', 1526490000, 1526551961, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `depots`
--

CREATE TABLE `depots` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `time` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `depots`
--

INSERT INTO `depots` (`id`, `name`, `description`, `time`, `sort`, `user_id`) VALUES
(1, 'Hà Nội', 'sadgdsagdasg', 1530151997, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pre` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `provinceid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `name`, `pre`, `provinceid`) VALUES
(106, 'Bến Lức', 'Huyện', 8),
(121, 'Bắc Trà My', 'Huyện', 9),
(139, 'Bà Rịa', 'Thị xã', 10),
(147, 'Buôn Đôn', 'Huyện', 11),
(162, ' Thới Lai', 'Huyện', 12),
(171, 'Bắc Bình', 'Huyện', 13),
(181, 'Bảo Lâm', 'Huyện', 14),
(193, 'A Lưới', 'Huyện', 15),
(202, 'An Biên', 'Huyện', 16),
(217, 'Bắc Ninh', 'Thành phố', 17),
(225, 'Ba Chẽ', 'Huyện', 18),
(239, 'Bá Thước', 'Huyện', 19),
(266, 'Anh Sơn', 'Huyện', 20),
(287, 'Bình Giang', 'Huyện', 21),
(299, 'An Khê', 'Thị xã', 22),
(316, 'Bình Long', 'Thị xã', 23),
(327, 'Ân Thi', 'Huyện', 24),
(337, 'An Lão', 'Huyện', 25),
(348, 'Cái Bè', 'Huyện', 26),
(359, 'Đông Hưng', 'Huyện', 27),
(367, 'Bắc Giang', 'Thành phố', 28),
(377, 'Cao Phong', 'Huyện', 29),
(388, 'An Phú', 'Huyện', 30),
(399, 'Bình Xuyên', 'Huyện', 31),
(408, 'Bến Cầu', 'Huyện', 32),
(417, 'Đại Từ', 'Huyện', 33),
(426, 'Bắc Hà', 'Huyện', 34),
(435, 'Giao Thủy', 'Huyện', 35),
(445, 'Ba Tơ', 'Huyện', 36),
(459, 'Ba Tri', 'Huyện', 37),
(468, 'Cư Jút', 'Huyện', 38),
(476, 'Cà Mau', 'Thành phố', 39),
(485, 'Bình Minh', 'Huyện', 40),
(493, 'Gia Viễn', 'Huyện', 41),
(501, 'Cẩm Khê', 'Huyện', 42),
(514, 'Bác Ái', 'Huyện', 43),
(521, 'Đông Hòa', 'Huyện', 44),
(530, 'Bình Lục', 'Huyện', 45),
(536, 'Cẩm Xuyên', 'Huyện', 46),
(548, 'Cao Lãnh', 'Thành phố', 47),
(560, 'Châu Thành', 'Huyện', 48),
(571, 'Đăk Glei', 'Huyện', 49),
(581, 'Ba Đồn', 'Thị xã', 50),
(589, 'Cam Lộ', 'Huyện', 51),
(599, 'Càng Long', 'Huyện', 52),
(607, 'Châu Thành', 'Huyện', 53),
(614, 'Bắc Yên', 'Huyện', 54),
(626, 'Bạc Liêu', 'Thành phố', 55),
(633, 'Lục Yên', 'Huyện', 56),
(642, 'Chiêm Hóa', 'Huyện', 57),
(649, 'Điện Biên', 'Huyện', 58),
(659, 'Lai Châu', 'Thị xã', 59),
(678, 'Bắc Mê', 'Huyện', 61),
(689, 'Ba Bể', 'Huyện', 62),
(697, 'Bảo Lạc', 'Huyện', 63);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `description` text CHARACTER SET utf8,
  `sort` int(3) DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT '1',
  `active` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `document`
--

INSERT INTO `document` (`id`, `name`, `parent_id`, `description`, `sort`, `lang`, `active`) VALUES
(1, 'Hướng dẫn tổng quan về quản trị website', 0, '<p><a href=\"http://giaodiendep.vn/huongdan/\">Xem video hướng dẫn</a></p>\r\n', 1, 'vi', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `emails`
--

INSERT INTO `emails` (`id`, `email`, `phone`, `time`, `name`, `content`) VALUES
(9, 'trungkienbds@gmail.com', NULL, 1433398898, NULL, NULL),
(11, 'vinarise.vn@gmail.com', NULL, 1433996361, NULL, NULL),
(12, 'daibkz@gmail.com', NULL, 1470928353, NULL, NULL),
(13, 'dangtranmanh051187@gmail.com', NULL, 1506309969, NULL, NULL),
(14, 'buivananh.th@gmail.com', NULL, 1506331541, NULL, NULL),
(15, 'hocongtru95@gmail.com', NULL, 1527327769, NULL, NULL),
(16, 'daibkz@gmail.com', NULL, 1529463984, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exchanges`
--

CREATE TABLE `exchanges` (
  `id` int(11) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `id_order` int(11) DEFAULT NULL,
  `exchange_info` text,
  `price` float(20,0) DEFAULT NULL,
  `note` text,
  `time` int(11) DEFAULT NULL,
  `id_create` int(11) DEFAULT NULL,
  `id_approved` int(11) DEFAULT NULL,
  `status` int(3) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `user_create` varchar(255) DEFAULT NULL,
  `user_approved` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `exchanges`
--

INSERT INTO `exchanges` (`id`, `sku`, `id_customer`, `id_order`, `exchange_info`, `price`, `note`, `time`, `id_create`, `id_approved`, `status`, `type`, `payment`, `user_create`, `user_approved`) VALUES
(45, 'GD-31-08-2018-45', 646, 79, NULL, 3013962, '', 1535699544, NULL, 2, 2, 'Thanh toán đơn hàng', 'Thanh toán đặt cọc', 'nguyendai dinh', NULL),
(46, 'GD-05-09-2018-46', 658, 82, NULL, 1901851, 'ok dat hang cho e', 1536119907, NULL, NULL, 2, 'Thanh toán đơn hàng', 'Thanh toán đặt cọc', 'linhnhi', NULL),
(47, 'GD-09-09-2018-47', 658, 82, NULL, 1222920, 'tt hết', 1536510399, NULL, NULL, 2, 'Thanh toán đơn hàng', 'Tất toán', 'linhnhi', NULL),
(48, 'GD-09-09-2018-48', 658, 82, NULL, 200000, 'tt cân lần 2 ngày 10.9', 1536510553, NULL, NULL, 2, 'Thanh toán đơn hàng', 'Tất toán', 'linhnhi', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `sort` int(3) DEFAULT NULL,
  `cate` int(4) DEFAULT '0',
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8,
  `description` text CHARACTER SET utf8
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `type`, `url`, `title`, `target`, `name`, `image`, `icon`, `id_item`, `sort`, `cate`, `lang`, `content`, `description`) VALUES
(200, NULL, NULL, NULL, '_self', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(216, NULL, NULL, 'Video hướng dẫn lắp đặt camera 2', '_self', '12', 'upload/img/media/9f62009350cb11a54f10ffd7c56e1bca.png', NULL, 1, 2, 0, NULL, 'https://www.youtube.com/embed/QzqthoS3Xkw', NULL),
(217, NULL, NULL, 'HƯỚNG DẪN LẮP ĐẶT HỆ THỐNG CAMERA QUAN SÁT', '_self', '12', 'upload/img/media/14fca64f4ab55bddda0d89209d9d8c80.png', NULL, 1, 3, 0, NULL, 'https://www.youtube.com/embed/JdrNRXs8KqI', NULL),
(218, NULL, NULL, 'Hướng dẫn cấu hình Camera xem qua mạng 100% thành công', '_self', '12', 'upload/img/media/9f62009350cb11a54f10ffd7c56e1bca1.png', NULL, 1, 4, 0, NULL, 'https://www.youtube.com/embed/Q27P_jphAXU', NULL),
(219, NULL, NULL, 'Video Clip Hướng dẫn sử dụng Camera IP Wifi không dây thông minh Webvision 6203', '_self', '12', 'upload/img/media/9f62009350cb11a54f10ffd7c56e1bca2.png', NULL, 1, 5, 0, NULL, 'https://www.youtube.com/embed/isA3QHA4wOM', NULL),
(298, 'bottom', '', 'sdagds', '_self', NULL, 'upload/img/banner/map.png', NULL, NULL, NULL, 0, 'vi', '', ''),
(299, 'slide', '', 'Slide máy bay', '_self', NULL, 'upload/img/banner/plane-main.png', 'upload/img/banner/clouds.png', NULL, NULL, NULL, 'vi', '<p>Đủ lớn để xử l&yacute;</p>\r\n\r\n<p>Đủ nhỏ để quan t&acirc;m</p>\r\n', NULL),
(300, 'slide', '', 'xe vận tải', '_self', NULL, 'upload/img/banner/truck-2.png', 'upload/img/banner/truck_11.png', NULL, NULL, 0, 'vi', '<p>Đủ lớn để xử lý</p>\r\n\r\n<p>Đủ nhỏ để quan tâm</p>\r\n', '<p>fdsagds</p>\r\n'),
(301, 'slide', '', 'Đường thủy', '_self', NULL, 'upload/img/banner/ship-main.png', NULL, NULL, NULL, 0, 'vi', '<p>Đủ lớn để xử lý</p>\r\n\r\n<p>Đủ nhỏ để quan tâm</p>\r\n', '<p>Là một công ty hàng đầu trong lĩnh vực Nhập hàng và vận chuyển</p>\r\n\r\n<p> hàng hóa Trung Quốc, Ordergiatot.vn vượt trội trong việc cung cấp</p>\r\n\r\n<p> các giải pháp nhập hàng và vận chuyển phù hợp cho nhu cầu</p>\r\n\r\n<p> của từng khách hàng cụ thể.</p>\r\n'),
(302, 'danhmuc', '', 'BẢNG GIÁ DỊCH VỤ - trang chủ', '_self', NULL, 'upload/img/banner/price11.png', 'upload/img/banner/price1.png', NULL, NULL, 0, 'vi', '', '<p>dagdsg</p>\r\n'),
(303, 'banner', '', 'Thư ngỏ', '_self', NULL, NULL, NULL, NULL, NULL, 0, 'vi', '<h3>Thư Ngỏ</h3>\r\n\r\n<p>Trung thu tưng bừng, k&iacute;nh ch&agrave;o Qu&yacute; Kh&aacute;ch</p>\r\n\r\n<p>Ordergiatot.vn xin th&ocirc;ng b&aacute;o từ ng&agrave;y 7/9/2018 đến 25/9/2018, kh&aacute;ch h&agrave;ng đặt cọc đơn để mua h&agrave;ng sẽ được giảm gi&aacute; cước vận chuyển 2.000 vnđ / kg</p>\r\n\r\n<p>Chương tr&igrave;nh n&agrave;y chỉ &aacute;p dụng đối với kh&aacute;ch h&agrave;ng Order</p>\r\n\r\n<p>Xin k&iacute;nh ch&uacute;c qu&yacute; kh&aacute;ch một m&ugrave;a trung thu vui v&egrave;, đầm ấm v&agrave; hạnh ph&uacute;c</p>\r\n\r\n<p>Cuối c&ugrave;ng, c&ocirc;ng ty xin gửi lời cảm ơn đến qu&yacute; kh&aacute;ch đ&atilde; tin tưởng đồng h&agrave;nh v&agrave; hợp t&aacute;c c&ugrave;ng c&ocirc;ng ty trong suốt thời gian qua. Ch&uacute;ng t&ocirc;i hy vọng rằng sẽ được hợp t&aacute;c l&acirc;u d&agrave;i với qu&yacute; kh&aacute;ch h&agrave;ng trong thời gian tới.</p>\r\n\r\n<p>Ordergiatot.vn xin th&ocirc;ng b&aacute;o tới Qu&yacute; kh&aacute;ch h&agrave;ng nhằm chủ động hơn trong việc đặt mua - vận chuyển h&agrave;ng h&oacute;a.</p>\r\n\r\n<p>Mọi th&ocirc;ng tin chi tiết xin vui l&ograve;ng li&ecirc;n hệ Hotline:</p>\r\n\r\n<p>012 99 44 66 88 (Ms Linh)</p>\r\n', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inuser`
--

CREATE TABLE `inuser` (
  `id` int(11) NOT NULL,
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
  `description_seo` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `inuser`
--

INSERT INTO `inuser` (`id`, `title`, `description`, `hot`, `image`, `content`, `alias`, `lang`, `tag`, `time`, `category_id`, `home`, `focus`, `title_seo`, `keyword_seo`, `description_seo`) VALUES
(4, 'Rực Rỡ Mùa Hoa Tây Bắc', 'Tết Nguyên Đán 2015 là thời khắc quan trọng nhất trong năm, là khi mỗi gia đình Việt Nam có thời gian được trở về quây quần bên nhau và tưng bừng du xuân khắp mọi miền đất nước. Trong không khí xuân nồng ấm ấy, Vietravel hân hạnh gửi tới Quý khách hàng ngàn đường tour Việt Nam để gia đình bạn thỏa sức tận hưởng những ngày lễ vui tươi, hạnh phúc, đón chào năm mới An khang Thịnh Vượng. \n', 1, 'upload/img/ava1_hoanhai1.jpg', '<div>&nbsp;</div>\n\n<div>\n<p style=\"text-align:justify\"><strong>Ng&agrave;y 1 : TP.HCM - NỘI B&Agrave;I (H&Agrave; NỘI) &ndash; ĐỀN H&Ugrave;NG - NGHĨA LỘ Số bữa ăn: 3 bữa&nbsp;</strong></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://travel.com.vn/Images/tour/tfd_141103_mien%20bac%20-%20den%20hung.jpg\" style=\"border:0px; box-sizing:border-box; height:458px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">Qu&yacute; kh&aacute;ch tập trung tại cột số 04 ga đi Trong Nước - S&acirc;n bay T&acirc;n Sơn Nhất để hướng dẫn l&agrave;m thủ tục cho Qu&yacute; kh&aacute;ch đ&aacute;p chuyến bay đi H&agrave; Nội. Xe Vietravel đ&oacute;n đo&agrave;n tại s&acirc;n bay Nội B&agrave;i, khởi h&agrave;nh đi Y&ecirc;n B&aacute;i. Tr&ecirc;n đường đi Qu&yacute; kh&aacute;ch gh&eacute; Ph&uacute; Thọ viếng Đền H&ugrave;ng, đến nơi, Qu&yacute; kh&aacute;ch l&agrave;m lễ d&acirc;ng hương đất tổ, tham quan đền Thượng, đền Trung, đền Hạ, Giếng Ngọc, Lăng vua H&ugrave;ng, tự do chụp ảnh mua sắm qu&agrave; lưu niệm. Đo&agrave;n tiếp tục khởi h&agrave;nh đi Nghĩa Lộ, nhận ph&ograve;ng kh&aacute;ch sạn nghỉ ngơi. Buổi tối, Qu&yacute; kh&aacute;ch thưởng thức chương tr&igrave;nh biểu diễn m&uacute;a X&ograve;e, giao lưu v&agrave; t&igrave;m hiểu n&eacute;t văn h&oacute;a đặc sắc của d&acirc;n tộc Th&aacute;i. Nghỉ đ&ecirc;m tại Nghĩa Lộ.</p>\n\n<p style=\"text-align:justify\"><strong>Ng&agrave;y 2 : NGHĨA LỘ - M&Ugrave; CANG CHẢI - SAPA (Số bữa ăn: 3 bữa)</strong></p>\n\n<p style=\"text-align:center\"><strong><img alt=\"\" src=\"https://travel.com.vn/Images/tour/tfd_141103_sapa%20-%20muong%20hoa%202.jpg\" style=\"border:0px; box-sizing:border-box; height:408px; vertical-align:middle; width:650px\" /></strong></p>\n\n<p style=\"text-align:justify\">Trả ph&ograve;ng kh&aacute;ch sạn, đo&agrave;n khởi h&agrave;nh đi M&ugrave; Cang Chải, ngang qua T&uacute; Lệ, Qu&yacute; kh&aacute;ch sẽ ngửi được m&ugrave;i hương thoang thoảng theo gi&oacute; bảng lảng tr&ecirc;n m&aacute;i nh&agrave; của &ldquo;cơm mới&rdquo;, nơi đ&acirc;y nổi tiếng với x&ocirc;i nếp, cốm kh&ocirc;. Đến Đ&egrave;o Khau Phạ Qu&yacute; kh&aacute;ch dừng chụp ảnh v&agrave; ngắm nh&igrave;n Bản L&igrave;m M&ocirc;ng xinh đẹp tọa lạc dưới ch&acirc;n đ&egrave;o. Đ&acirc;y l&agrave; Bản của d&acirc;n tộc M&ocirc;ng v&agrave; l&agrave; nơi c&oacute; ruộng l&uacute;a đẹp nhất M&ugrave; Cang Chải. Qua đ&egrave;o Khau Phạ v&agrave;o địa phận M&ugrave; Cang Chải, Qu&yacute; kh&aacute;ch sẽ bị m&ecirc; hoặc bởi vẻ đẹp h&uacute;t hồn của cung đường ruộng bậc thang (Nổi tiếng tại 3 x&atilde;: La P&aacute;n Tẩn, Chế Cu Nha v&agrave; Zế Xu Ph&igrave;nh). Đo&agrave;n chi&ecirc;m ngưỡng những thung lũng rộng h&uacute;t tầm mắt, c&aacute;c thửa ruộng tầng tầng lớp lớp lượn s&oacute;ng theo sườn n&uacute;i, ngọn n&uacute;i n&agrave;y nối tiếp ngọn n&uacute;i kh&aacute;c. Qu&yacute; kh&aacute;ch c&oacute; thể tham quan v&agrave; thưởng ngoạn c&aacute;c giai đoạn của m&ugrave;a l&uacute;a: m&ugrave;a nước đổ &oacute;ng &aacute;nh tr&ecirc;n c&aacute;c triền n&uacute;i (th&aacute;ng 2-3), m&ugrave;a cấy l&uacute;a (th&aacute;ng 5), m&ugrave;a l&uacute;a non (th&aacute;ng 6-7) v&agrave; đẹp nhất l&agrave;m m&ugrave;a l&uacute;a ch&iacute;n hay c&ograve;n lại l&agrave; m&ugrave;a v&agrave;ng (th&aacute;ng 9-10). Cũng ch&iacute;nh bởi vẻ đẹp m&ecirc; l&ograve;ng người v&agrave;o m&ugrave;a l&uacute;a ch&iacute;n m&agrave; Ruộng Bậc Thang ở ba x&atilde; n&agrave;y đ&atilde; được xếp hạng Di t&iacute;ch Quốc Gia năm 2007. Đến thị trấn M&ugrave; Cang Chải, Qu&yacute; kh&aacute;ch ăn trưa, nghỉ ngơi. Chiều đo&agrave;n khởi h&agrave;nh đi Sa Pa, tr&ecirc;n đường đi Qu&yacute; kh&aacute;ch dừng ch&acirc;n ngắm to&agrave;n cảnh đồi ch&egrave; T&acirc;n Uy&ecirc;n thơ mộng v&agrave; tiếp tục sẽ được chi&ecirc;m ngưỡng phong cảnh n&uacute;i rừng T&acirc;y Bắc h&ugrave;ng vĩ tr&ecirc;n Đ&egrave;o &Ocirc; Quy Hồ - Ranh giới giữa 2 tỉnh L&agrave;o Cai v&agrave; Lai Ch&acirc;u uốn lượn quanh d&atilde;y Ho&agrave;ng Li&ecirc;n c&ograve;n gọi l&agrave; khu vực Cổng Trời. Đến Sa Pa, nhận ph&ograve;ng kh&aacute;ch sạn nghỉ ngơi. Buổi tối, Qu&yacute; kh&aacute;ch tự do tham quan phố n&uacute;i v&agrave; thưởng thức những m&oacute;n ăn đặc sản tại nơi đ&acirc;y. Nghỉ đ&ecirc;m tại Sa Pa</p>\n\n<p style=\"text-align:justify\"><strong>Ng&agrave;y 3 : SAPA - LAI CH&Acirc;U (Số bữa ăn: 3 bữa)</strong></p>\n\n<p style=\"text-align:center\"><strong><img alt=\"\" src=\"https://travel.com.vn/Images/tour/tfd_141103_sapa%20trong%20suong%201.jpg\" style=\"border:0px; box-sizing:border-box; height:436px; vertical-align:middle; width:650px\" /></strong></p>\n\n<p style=\"text-align:justify\">Qu&yacute; kh&aacute;ch tham quan v&agrave; chinh phục N&uacute;i H&agrave;m Rồng, thăm Vườn Lan khoe sắc, Vườn Hoa Trung T&acirc;m, ngắm N&uacute;i Phanxipăng h&ugrave;ng vĩ, Cổng Trời, Đầu Rồng Thạch L&acirc;m, S&acirc;n M&acirc;y. Đo&agrave;n tự do ngắm cảnh v&agrave; chụp ảnh thị trấn Sapa trong sương. Trả ph&ograve;ng kh&aacute;ch sạn, ăn trưa. Chiều Qu&yacute; kh&aacute;ch tham quan Th&aacute;c Bạc - D&ograve;ng nước trắng x&oacute;a chảy từ độ cao tr&ecirc;n 200m v&agrave;o d&ograve;ng suối dưới thung lũng &Ocirc; Quy Hồ, tạo n&ecirc;n &acirc;m thanh n&uacute;i rừng đầy ấn tượng, tiếp tục tham quan Lao Chải, Tả Van hoặc Tả Ph&igrave;n (t&ugrave;y điều kiện thực tế). Về đến Lai Ch&acirc;u, Qu&yacute; kh&aacute;ch nhận ph&ograve;ng kh&aacute;ch sạn. Nghỉ đ&ecirc;m tại Lai Ch&acirc;u.</p>\n\n<p style=\"text-align:justify\"><strong>Ng&agrave;y 4 : LAI CH&Acirc;U - PHONG THỔ - MƯỜNG LAY - ĐIỆN BI&Ecirc;N (Số bữa ăn: 3 bữa)</strong></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://travel.com.vn/Images/tour/tfd_140929_du-lich-tay-bac.jpg\" style=\"border:0px; box-sizing:border-box; height:432px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">Đo&agrave;n trả ph&ograve;ng ăn s&aacute;ng, khởi h&agrave;nh đi Điện Bi&ecirc;n, tr&ecirc;n đường ngắm cảnh rừng n&uacute;i T&acirc;y Bắc dọc theo d&ograve;ng s&ocirc;ng Nậm Na v&agrave; v&ugrave;ng ngập nước do đập nh&agrave; m&aacute;y Thủy điện Sơn La d&acirc;ng l&ecirc;n tại ng&atilde; ba s&ocirc;ng: s&ocirc;ng Đ&agrave;, s&ocirc;ng Nậm Na v&agrave; s&ocirc;ng Nậm Rốm. Đến Mường L&acirc;y ăn trưa. Đo&agrave;n tiếp tục khởi h&agrave;nh đến Điện Bi&ecirc;n, Qu&yacute; kh&aacute;ch tham quan Bảo t&agrave;ng Điện Bi&ecirc;n Phủ - Được x&acirc;y dựng v&agrave;o năm 1984 nh&acirc;n dịp kỷ niệm 30 năm chiến thắng lịch sử Điện Bi&ecirc;n Phủ, viếng Nghĩa trang liệt sĩ đồi A1, thăm Đồi A1, Hầm sở chỉ huy qu&acirc;n đội Ph&aacute;p - Tướng Đờ C&aacute;t (De Castries). Nghỉ đ&ecirc;m tại Điện Bi&ecirc;n. Nhận ph&ograve;ng kh&aacute;ch sạn, ăn tối v&agrave; nghỉ đ&ecirc;m tại Điện Bi&ecirc;n</p>\n\n<p style=\"text-align:justify\"><strong>Ng&agrave;y 5 : ĐIỆN BI&Ecirc;N - SƠN LA - MỘC CH&Acirc;U (Số bữa ăn: 3 bữa)</strong></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://travel.com.vn/Images/tour/tfd_140905_Doi%20che%20Moc%20Chau.jpg\" style=\"border:0px; box-sizing:border-box; height:424px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">Trả ph&ograve;ng kh&aacute;ch sạn, đo&agrave;n khởi h&agrave;nh về Sơn La. Tr&ecirc;n đường đi, Qu&yacute; kh&aacute;ch sẽ được chi&ecirc;m ngưỡng phong cảnh n&uacute;i rừng T&acirc;y Bắc h&ugrave;ng vĩ tr&ecirc;n đỉnh Đ&egrave;o Pha Đin - Một trong &quot;tứ đại đ&egrave;o&quot; v&ugrave;ng T&acirc;y Bắc v&agrave; được xếp c&ugrave;ng nh&oacute;m 6 con đ&egrave;o g&acirc;y ấn tượng nhất Việt Nam. Đến Sơn La, Qu&yacute; kh&aacute;ch ăn trưa. Sau đ&oacute;, Qu&yacute; kh&aacute;ch khởi h&agrave;nh về Mộc Ch&acirc;u. Đo&agrave;n khởi h&agrave;nh tham quan Th&aacute;c Dải Yếm - C&ograve;n c&oacute; t&ecirc;n gọi l&agrave; Th&aacute;c N&agrave;ng, nhằm v&iacute; vẻ đẹp mềm mại, h&igrave;nh ảnh quyến rũ của th&aacute;c nước như xu&acirc;n sắc của người con g&aacute;i tuổi trăng tr&ograve;n. Sau đ&oacute; tham quan Đồi Ch&egrave; Mộc Ch&acirc;u - Đứng tr&ecirc;n đồi ch&egrave; du kh&aacute;ch sẽ cảm nhận được l&agrave;n kh&ocirc;ng kh&iacute; m&aacute;t lạnh trong l&agrave;nh, tận mắt thấy những l&agrave;n sương bồng bềnh tr&ocirc;i, những đường ch&egrave; chạy v&ograve;ng quanh đồi được sắp đặt th&agrave;nh h&agrave;ng như những thửa ruộng bậc thang xanh ngắt cứ trải d&agrave;i bất tận. Qu&yacute; kh&aacute;ch dừng mua sắm đặc sản nổi tiếng được chế biến từ sữa b&ograve; tươi nổi tiếng của Mộc Ch&acirc;u về l&agrave;m qu&agrave;. Đo&agrave;n về kh&aacute;ch sạn nhận ph&ograve;ng, nghỉ ngơi. Nghỉ đ&ecirc;m tại Mộc Ch&acirc;u.</p>\n\n<p style=\"text-align:justify\"><strong>Ng&agrave;y 6 : MỘC CH&Acirc;U - MAI CH&Acirc;U - H&Ograve;A B&Igrave;NH - S&Acirc;N BAY NỘI B&Agrave;I (H&Agrave; NỘI) (Số bữa ăn: 2 bữa (s&aacute;ng, trưa))</strong></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://travel.com.vn/Images/tour/tfd_141103_moc%20chau%20-%20hoa%20cai.jpg\" style=\"border:0px; box-sizing:border-box; height:346px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">Ăn s&aacute;ng tại kh&aacute;ch sạn, trả ph&ograve;ng. Đo&agrave;n khởi h&agrave;nh đi Mai Ch&acirc;u - H&ograve;a B&igrave;nh, tham quan Bản L&aacute;c Mai Ch&acirc;u - T&igrave;m hiểu nh&agrave; s&agrave;n, phong tục tập qu&aacute;n, c&aacute;ch kinh doanh du lịch loại h&igrave;nh home stay của b&agrave; con người Th&aacute;i nơi đ&acirc;y. Đo&agrave;n khởi h&agrave;nh về H&ograve;a B&igrave;nh ăn trưa. Đo&agrave;n khởi h&agrave;nh về H&ograve;a B&igrave;nh ăn trưa. Sau đ&oacute;, khởi h&agrave;nh về H&agrave; Nội, xe đưa Qu&yacute; kh&aacute;ch ra s&acirc;n bay Nội B&agrave;i đ&aacute;p chuyến bay về Tp.HCM. Chia tay Qu&yacute; kh&aacute;ch v&agrave; kết th&uacute;c chương tr&igrave;nh du lịch tại s&acirc;n bay T&acirc;n Sơn Nhất</p>\n</div>\n', 'ruc-ro-mua-hoa-tay-bac', '0', '0', 1446786194, 22, 0, 0, '', '', ''),
(5, 'Giấc mộng hoa phương Bắc', 'Đất trời đã vào xuân, non cao miền Bắc bừng sáng trong vẻ đẹp mê đắm của rừng hoa thắm sắc ẩn hiện trong sương khói vấn vương. Những bước chân phiêu du trên núi ngàn cũng rộn rã hơn, chan hòa cùng nét tươi mới giữa đất trời nở hoa. Tour Tết, Trong nước', 1, 'upload/img/mua-hoa-xuan-tay-bac_1.jpg', '<div>&nbsp;</div>\n\n<div>\n<p style=\"text-align: center;\"><img alt=\"\" src=\"http://www.vietravel.com.vn/Images/inuserPicture/mua-hoa-xuan-tay-bac_1.jpg\" style=\"border:0px; box-sizing:border-box; height:441px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">nhiều lần lỡ hẹn, t&ocirc;i cũng đặt ch&acirc;n đến miền rẻo cao phương Bắc với thật nhiều h&aacute;o hức. Qu&atilde;ng đường đi qua&nbsp; Sapa, Điện Bi&ecirc;n, Sơn La, Cao Bằng, Lạng Sơn&hellip; dường như ngắn lại bởi ai cũng say sưa ngắm những cung đường bạt ng&agrave;n hoa đ&agrave;o, hoa mận, hoa mơ. Hoa nở tr&agrave;n tr&ecirc;n triền đồi, lấp l&oacute; ven đường, hồn nhi&ecirc;n thả bức r&egrave;m trước s&acirc;n nh&agrave;&hellip; đẹp đến nỗi kh&ocirc;ng một m&aacute;y ảnh &ldquo;khủng&rdquo; n&agrave;o c&oacute; thể ghi lại trọn vẹn.</p>\n\n<p style=\"text-align: center;\"><img alt=\"\" src=\"http://www.vietravel.com.vn/Images/inuserPicture/mua-hoa-xuan-tay-bac_6.jpg\" style=\"border:0px; box-sizing:border-box; height:433px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">C&oacute; l&uacute;c hoa phủ hồng cả sườn n&uacute;i, khiến kh&aacute;ch l&atilde;ng du ngất ng&acirc;y chẳng muốn dời ch&acirc;n. Một cơn gi&oacute; thoảng qua, khung cảnh bỗng h&oacute;a th&agrave;nh cơn mưa hoa lất phất. Chắt chiu nhựa sống qua năm d&agrave;i th&aacute;ng rộng, hội tụ đủ tinh t&uacute;y của đất trời để mỗi độ xu&acirc;n về th&acirc;n c&acirc;y x&ugrave; x&igrave; ấy lại nảy lộc đơm hoa sưởi ấm cả n&uacute;i rừng. Những c&aacute;nh đ&agrave;o phai T&acirc;y Bắc hồng phớt, mỏng manh m&agrave; l&agrave;n hương lại dịu d&agrave;ng, thanh tao đến lạ. Đ&ocirc;ng Bắc lại tự h&agrave;o với n&eacute;t ki&ecirc;u sa rực rỡ của rừng hoa đ&agrave;o b&iacute;ch lộng lẫy c&oacute; c&aacute;nh d&agrave;y, to, đủ sắc đỏ, hồng, trắng&hellip;</p>\n\n<p style=\"text-align: center;\"><img alt=\"\" src=\"http://www.vietravel.com.vn/Images/inuserPicture/mua-hoa-xuan-tay-bac_4.jpg\" style=\"border:0px; box-sizing:border-box; height:472px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">Ven đường đi, h&ograve;a c&ugrave;ng mu&ocirc;n sắc hoa đ&agrave;o b&iacute;ch, đ&agrave;o phai l&agrave; n&eacute;t đẹp hoang d&atilde; của những lo&agrave;i hoa dại t&iacute;m ng&aacute;t, v&agrave;ng rực cả khoảng trời. Đến n&uacute;i N&agrave;ng T&ocirc; Thị, động Tam Thanh, cảm x&uacute;c của t&ocirc;i gần như vỡ &ograve;a khi được chi&ecirc;m ngưỡng những đ&oacute;a hoa đ&agrave;o trắng muốt như tuyết, c&acirc;y đ&agrave;o gh&eacute;p hội tụ đủ ba m&agrave;u trắng - hồng - đỏ rất ấn tượng.</p>\n\n<p style=\"text-align: center;\"><img alt=\"\" src=\"http://www.vietravel.com.vn/Images/inuserPicture/mua-hoa-xuan-tay-bac_3_1.jpg\" style=\"border:0px; box-sizing:border-box; height:975px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">Hoa kh&ocirc;ng chỉ t&ocirc; điểm cho n&uacute;i rừng m&agrave; c&ograve;n mang cả kh&ocirc;ng gian văn h&oacute;a v&ugrave;ng cao đến với mọi người. T&ocirc;i cứ nhớ m&atilde;i nhịp ch&acirc;n vui của ch&agrave;ng trai bản xuống chợ ng&agrave;y xu&acirc;n m&agrave; tr&ecirc;n vai lắc lư một c&agrave;nh đ&agrave;o thắm. Những c&ocirc; g&aacute;i Dao, M&ocirc;ng v&aacute;y xanh v&aacute;y đỏ tỏa s&aacute;ng dưới hoa xu&acirc;n v&agrave; bọn trẻ con mắt trong veo, n&ocirc; đ&ugrave;a hồn nhi&ecirc;n tr&ecirc;n c&acirc;y mận thật đ&aacute;ng y&ecirc;u l&agrave;m sao!</p>\n\n<p style=\"text-align: center;\"><img alt=\"\" src=\"http://www.vietravel.com.vn/Images/inuserPicture/mua-hoa-xuan-tay-bac_2_1.jpg\" style=\"border:0px; box-sizing:border-box; height:894px; vertical-align:middle; width:650px\" /></p>\n\n<p style=\"text-align:justify\">Chỉ cần như thế cũng b&otilde; c&ocirc;ng cho một chuyến ngao du sơn thủy, s&aacute; g&igrave; n&uacute;i cao hay đ&egrave;o vắng, chỉ cần v&aacute;c ba l&ocirc; l&ecirc;n đường, ta lại sở hữu m&ugrave;a xu&acirc;n thi vị cho ri&ecirc;ng m&igrave;nh. Hoa nở khắp đất trời, hoa nở trong l&ograve;ng người để t&ocirc;i m&atilde;i nhung nhớ về miền rẻo cao phương Bắc. Đ&oacute; ch&iacute;nh l&agrave; những x&uacute;c cảm đầu năm thi&ecirc;ng li&ecirc;ng v&agrave; rất đỗi tự h&agrave;o về qu&ecirc; hương m&agrave; kh&ocirc;ng h&agrave;nh tr&igrave;nh n&agrave;o c&oacute; được.</p>\n</div>\n', 'giac-mong-hoa-phuong-bac', '0', '0', 1446792582, 22, 0, 0, '', '', ''),
(6, 'Train Ticket', 'Operated by national carrier Vietnam Railways.Travelling in an air-con sleeping berth and of course, there’s some spectacular scenery to lap up too. There are four main ticket classes: hard seat, soft seat, hard sleeper and soft sleeper. These are also split into air-con and non air-con options. Presently, air-con is only available on the faster express trains. Hard-seat class is usually packed and tolerable for day travel, but expect plenty of cigarette smoke. Ticket prices vary depending on the train; the fastest trains are more expensive. Aside from the main HCMC–Hanoi run, three rail-spur lines link Hanoi with the other parts of northern Vietnam. A third runs northwest to Lao Cai (Sapa).', 0, 'upload/img/ticket.jpg', '', 'train-ticket', '0', '0', 1447426430, 23, 0, 0, '', '', ''),
(7, 'Train North to South', 'Everyday departure with trains number: Trains SE1-SE6: Soft sleepers (4-berth), hard sleepers (6-berth), soft class seats (all air-con). TN3-TN10: Soft sleepers (air-con), hard sleepers (air-con & non-air-con), soft seats (a/c & non-a/c), hard seats (non-air-con).', 0, 'upload/img/tk1.jpg', '<span style=\"color:rgb(85, 85, 85); font-family:arial\">Unit Price: US Dollar (US$); A/C: Air-conditioning.</span><br />\n<span style=\"color:rgb(85, 85, 85); font-family:arial\">Child&#39;s fare: under 5 years: free of charge if sharing bed with parent; 5 years/up: adult rate.</span><br />\n<span style=\"color:rgb(85, 85, 85); font-family:arial\">Please note: 20% of the amount will be charged in case of cancellation for any ticket.</span><br />\n&nbsp;\n<div>&nbsp;</div>\n\n<div>\n<table style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(223, 223, 223); color:rgb(96, 96, 96); font-family:arial; font-size:17.6px; height:105px; line-height:normal; margin:0px auto; padding:0px; vertical-align:baseline; width:800px\">\n	<tbody>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">DEP FROM HANOI</td>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">SE NO. 1/ TIME TABLE</td>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">SE NO. 3/&nbsp;TIME TABLE</td>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">SE NO. 5/&nbsp;TIME TABLE</td>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">&nbsp;PRICE</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\">HA NOI</td>\n			<td style=\"text-align:center; vertical-align:baseline\">19.35</td>\n			<td style=\"text-align:center; vertical-align:baseline\">22.00</td>\n			<td style=\"text-align:center; vertical-align:baseline\">6.00</td>\n			<td style=\"text-align:center; vertical-align:baseline\">&nbsp;55 USD</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">HUE</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">8.48</td>\n			<td style=\"text-align:center; vertical-align:baseline\">10.27</td>\n			<td style=\"text-align:center; vertical-align:baseline\">19.55</td>\n			<td style=\"text-align:center; vertical-align:baseline\">&nbsp;55 USD</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">DA NANG&nbsp;</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">11.26</td>\n			<td style=\"text-align:center; vertical-align:baseline\">13.00</td>\n			<td style=\"text-align:center; vertical-align:baseline\">22.47</td>\n			<td style=\"text-align:center; vertical-align:baseline\">60 USD</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">&nbsp;NHA TRANG</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">21.14</td>\n			<td style=\"text-align:center; vertical-align:baseline\">22.04</td>\n			<td style=\"text-align:center; vertical-align:baseline\">8.35</td>\n			<td style=\"text-align:center; vertical-align:baseline\">80 USD</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">BINH THUAN&nbsp;</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">1.12</td>\n			<td style=\"text-align:center; vertical-align:baseline\">2.14</td>\n			<td style=\"text-align:center; vertical-align:baseline\">16.14</td>\n			<td style=\"text-align:center; vertical-align:baseline\">85 USD</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">&nbsp;SAI GON</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">4.39</td>\n			<td style=\"text-align:center; vertical-align:baseline\">5.20</td>\n			<td style=\"text-align:center; vertical-align:baseline\">16.05</td>\n			<td style=\"text-align:center; vertical-align:baseline\">100 USD<br />\n			&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n', 'train-north-to-south', '0', '0', 1447426503, 23, 0, 0, '', '', ''),
(8, 'Train to Sapa', 'The Ha Noi-Lao Cai trains runs every evening, departing from Ha Noi Train Station at Tran Quy Cap Street. Three run at night, and one makes a day trip. The following are the trains from Ha Noi to Lao Cai (PM: SP1, SP3 , SP7 ) and vice versa (PM: SP2, SP4 , SP8) daily. The daytime route offers only hard seats, whereas travelers can enjoy soft-sleepers, air-conditioned, four-berth cabins on the night trains. In the SP3 & SP4, there are 2 Victoria Carriages. In SP1 & SP2, there are Orient Express, Tulico Carriages, Friendly Carriages, Ratraco Carriages, and TSC Carriages, King Express Carriages, Royal Carriages. All of these are alternatives for tourists to Sapa from Hanoi.', 0, 'upload/img/tk2.jpg', '<p>Deluxe Train: Fansipan Express (SP1-SP2), Livitrans Express (SP1-SP2), Sapaly Expres (SP3-SP4)</p>\n\n<p>First Class Train: Orient Express (SP1-SP2), TSC Express ( SP1-SP2), Pumpkin Express train (SP1-SP2), VN Express Train ( SP3-SP4)</p>\n\n<p>&nbsp;</p>\n\n<table style=\"border-collapse:collapse; border-spacing:0px; border:1px solid rgb(223, 223, 223); color:rgb(96, 96, 96); font-family:arial; font-size:17.6px; height:105px; line-height:normal; margin:0px auto; padding:0px; vertical-align:baseline; width:800px\">\n	<tbody>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">HANOI - LAO CAI</td>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">DELUXE CABIN 4 BERTHS</td>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">\n			<p>FIRST CLASS 4 BERTHS</p>\n			</td>\n			<td style=\"text-align:center; vertical-align:baseline; width:250px\">VIP CLASS 2 BERTHS</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">SP1: 21H40 - 5H30</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">30 USD</td>\n			<td style=\"text-align:center; vertical-align:baseline\">35 USD</td>\n			<td style=\"text-align:center; vertical-align:baseline\">70 USD</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">SP1: 20H00 - &nbsp;6H10</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">30 USD</td>\n			<td style=\"text-align:center; vertical-align:baseline\">35 USD</td>\n			<td style=\"text-align:center; vertical-align:baseline\">70 USD</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center; vertical-align:baseline\"><span style=\"color:rgb(128, 128, 128)\">SP1: 20H17 - &nbsp;4H35</span></td>\n			<td style=\"text-align:center; vertical-align:baseline\">30 USD</td>\n			<td style=\"text-align:center; vertical-align:baseline\">35 USD</td>\n			<td style=\"text-align:center; vertical-align:baseline\">70 USD</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p>The prices may change due to exchange rate or season; therefore, please confirm exact price when you make the final booking with payment. Please contact by email to have more information. Email:&nbsp;<a href=\"mailto:info@vietnampremiertravel.com\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: Arial; color: rgb(34, 34, 34);\">info@vietnampremiertravel.com</a>&nbsp;/ Tel: (+84 4) 3926 2866</p>\n', 'train-to-sapa', '0', '0', 1447426437, 23, 0, 0, '', '', ''),
(9, 'Tàu Bắc - Nam', 'Khởi hành hàng ngày với tàu số : Xe lửa SE1 - SE6 : tà vẹt mềm ( 4 bến ) , tà vẹt cứng ( 6 bến ) , ghế hạng mềm ( tất cả các máy con) . TN3 - TN10 : tà vẹt mềm ( máy lạnh ) , tà vẹt cứng ( máy lạnh & không khí -con) , ghế ngồi mềm (a / c và phi - a / c ) , ghế ngồi cứng ( không máy lạnh ) .', 0, 'upload/img/tk11.jpg', '<pre>\n<span style=\"font-size:14px\">Đơn gi&aacute; : Dollar Mỹ (US $ ) ; A / C : Điều h&ograve;a kh&ocirc;ng kh&iacute; .\nGi&aacute; v&eacute; cho trẻ em: dưới 5 tuổi: miễn ph&iacute; nếu ngủ chung giường với bố mẹ ; 5 năm / up : tỷ lệ người lớn .\nXin lưu &yacute; : 20 % của số tiền sẽ được t&iacute;nh trong trường hợp hủy cho bất kỳ v&eacute; .</span></pre>\n', 'tau-bac-nam', '0', '0', 1446800384, 22, 0, 0, '', '', ''),
(10, 'teafdsagd', 'gdasgdsg', 0, NULL, 'sagdsagdsagd', 'teafdsagd', 'en', '0', 1453861931, 0, 0, 0, '', '', ''),
(11, 'Dàn xe đời mới - Đa dạng chủng loại', 'Chúng tôi cho thuê xe từ những dòng xe giá rẻ đến những dòng xe cao cấp, từ 4 chỗ đến xe 12 chỗ Dàn xe của chúng tôi luôn có bộ phận theo dõi, quản lý và bảo hành. Để đảm bảo trước khi đến đón khách, Xe luôn trong tình trạng sạch, đẹp và an toàn.', 0, 'upload/img/icon3.png', '', 'dan-xe-doi-moi-da-dang-chung-loai', 'vi', '0', 1453863158, 20, 0, 1, '', '', ''),
(12, 'Tài xế thân thiện và chuyên nghiệp', 'Các tài xế của chúng tôi được tuyển chọn khắt khe theo các tiêu chí. Lái xe an toàn, có kinh nghiệm, thông thạo tuyến đường và được công tu Training các kỹ năng phục vụ khách hàng. Tùy theo mục đích thuê xe và loại xe cũng như yêu cầu của quí khách', 0, 'upload/img/icon2.png', '', 'tai-xe-than-thien-va-chuyen-nghiep', 'vi', '0', 1453863170, 20, 0, 1, '', '', ''),
(13, 'Giá cho thuê xe tốt nhất trên thị trường', 'Qui trình và cách tính giá cũng như báo giá của chúng tôi luôn là mức giá tốt nhất trên thị trường. Chính vì vậy khi quí khách thuê xe của chúng tôi cũng có nghĩa quí khách đã có được mức giá tốt nhât trong những nhà cung cấp.', 0, 'upload/img/icon1.png', '', 'gia-cho-thue-xe-tot-nhat-tren-thi-truong', 'vi', '0', 1453863176, 20, 0, 1, '', '', ''),
(14, 'Hướng dẫn lái xe ô tô an toàn trên đường cao tốc', 'Trên đường cao tốc, người điều khiển phương tiện giao thông được phép lái xe với vận tốc tối đa cao hơn so với lái trên đường phố, đường làng và do đó tiết kiệm thời gian di chuyển hơn nhưng cũng tiềm ẩn nhiều rủi ro xảy ra tai nạn đáng tiếc nếu không tuân thủ đúng luật.', 0, 'upload/img/new1.jpg', '<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit; font-size:inherit\">Th&oacute;i quen h&agrave;ng ng&agrave;y khi l&aacute;i xe đ&ocirc;i khi đ&atilde; trở th&agrave;nh nguy&ecirc;n nh&acirc;n của những trường hợp tai nạn đ&aacute;ng tiếc khi tham gia giao th&ocirc;ng tr&ecirc;n đường cao tốc: chạy xe dưới tốc độ tối thiểu, kh&ocirc;ng giữ khoảng c&aacute;ch an to&agrave;n với xe ph&iacute;a trước, dừng/đỗ t&ugrave;y tiện, quay đầu xe&hellip; Nhưng lưu &yacute; sau sẽ gi&uacute;p bạn c&oacute; những chuyến đi an to&agrave;n c&ugrave;ng bạn b&egrave;, người th&acirc;n.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit; font-size:inherit\">&ndash; Ngo&agrave;i c&aacute;c vấn đề kỹ thuật đảm bảo an to&agrave;n cho xe &ocirc; t&ocirc;, đặc biệt phải lưu &yacute; đến lốp xe bởi khi chạy với tốc độ cao, nhiệt độ ngo&agrave;i trời cao, h&agrave;ng h&oacute;a chở nhiều&hellip;; do đ&oacute;, với những bộ lốp &ldquo;tuổi đời&rdquo; cao, m&ograve;n nhiều cần đặc biệt cẩn trọng (nổ lốp xe khi đang đi tốc độ cao l&agrave; một trong những nguy&ecirc;n nh&acirc;n phổ biến dẫn đến tai nạn).</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit; font-size:inherit\">&ndash; Đảm bảo tốc độ theo hệ thống biển b&aacute;o tr&ecirc;n đường, giảm tốc độ ph&ugrave; hợp ở những đoạn đường cong, c&oacute; nhiều phương tiện (cho d&ugrave; ở l&agrave;n đường kh&aacute;c) hoặc chướng ngại vật&hellip; Tr&aacute;nh nh&igrave;n tập trung v&agrave;o một điểm qu&aacute; l&acirc;u, đặc biệt c&aacute;c đoạn đường cong hay l&ecirc;n/xuống dốc (dễ dẫn đến trường hợp &ldquo;kh&oacute;a mục ti&ecirc;u&rdquo; khiến xe đi thẳng đến điểm đ&oacute;).</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit; font-size:inherit\">&nbsp;&ndash; Giữ khoảng c&aacute;ch an to&agrave;n với quy tắc 3 gi&acirc;y (Bạn nh&igrave;n xe ph&iacute;a trước chạy qua một vật cố định n&agrave;o đ&oacute; ở b&ecirc;n đường: cột đ&egrave;n, biển b&aacute;o&hellip; v&agrave; bắt đầu đếm&nbsp;ước lượng từ 1 đến 3, khoảng thời gian tưởng ứng đủ 3 gi&acirc;y). Nếu trời mưa hoặc tầm quan s&aacute;t bị ảnh hưởng, th&igrave; n&ecirc;n tăng l&ecirc;n 4-5 gi&acirc;y. H&atilde;y ch&uacute; &yacute; c&aacute;c biển chỉ dẫn lưu &yacute; khoảng c&aacute;ch 50 &ndash; 100 &ndash; 200m.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit; font-size:inherit\">&ndash;<span style=\"font-family:inherit; font-size:inherit\">&nbsp;</span><span style=\"font-family:inherit; font-size:inherit\">Kh&ocirc;ng bao giờ l&ugrave;i xe, quay đầu xe, đi ngược chiều tr&ecirc;n đường cao tốc</span>.<span style=\"font-family:inherit; font-size:inherit\">&nbsp;</span><span style=\"font-family:inherit; font-size:inherit\">Kh&ocirc;ng được cho xe &ocirc; t&ocirc; chạy ở l&agrave;n dừng xe khẩn cấp v&agrave; phần lề đường</span>.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit; font-size:inherit\">&ndash;<span style=\"font-family:inherit; font-size:inherit\">&nbsp;</span><span style=\"font-family:inherit; font-size:inherit\">Khi v&agrave;o hoặc ra khỏi đường cao tốc phải giảm tốc độ</span><span style=\"font-family:inherit; font-size:inherit\">&nbsp;</span>v&agrave;<span style=\"font-family:inherit; font-size:inherit\"><span style=\"font-family:inherit; font-size:inherit\">&nbsp;</span></span><span style=\"font-family:inherit; font-size:inherit\">nhường đường cho xe đi tr&ecirc;n l&agrave;n đường ch&iacute;nh</span>.<span style=\"font-family:inherit; font-size:inherit\"><span style=\"font-family:inherit; font-size:inherit\">&nbsp;</span></span><span style=\"font-family:inherit; font-size:inherit\">Chỉ được chuyển l&agrave;n đường ở những nơi cho ph&eacute;p</span>,<span style=\"font-family:inherit; font-size:inherit\">&nbsp;</span>khi chuyển l&agrave;n lu&ocirc;n ch&uacute; &yacute; ph&iacute;a sau v&agrave; lu&ocirc;n xi-nhan. Kh&ocirc;ng chuyển l&agrave;n kiểu cắt đầu xe kh&aacute;c v&agrave; chuyển nhiều l&agrave;n đường c&ugrave;ng một thời điểm.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(0, 0, 0); font-family:inherit; font-size:inherit\">&ndash; Người điều khiển v&agrave; người ngồi trong xe &ocirc;t&ocirc; đều phải thắt d&acirc;y an to&agrave;n. Bởi khi lưu th&ocirc;ng với tốc độ cao (100km/h), th&igrave; thắt d&acirc;y an to&agrave;n cho mọi người tr&ecirc;n xe &ocirc; t&ocirc; l&agrave; việc cần thiết hơn bao giờ hết.</span></p>\r\n', 'huong-dan-lai-xe-o-to-an-toan-tren-duong-cao-toc', 'vi', '0', 1453864782, 22, 1, 0, '', '', ''),
(15, 'Gợi y 8 lộ trình về quê ăn tết tránh kẹt xe ở hà nội', '', 0, 'upload/img/new4.jpg', '', 'goi-y-8-lo-trinh-ve-que-an-tet-tranh-ket-xe-o-ha-noi', 'vi', '0', 1453864774, 22, 1, 0, '', '', ''),
(16, 'Hơn 2000 người tham gia hưởng ứng \"Năm an toàn giao thông\" 2016', '', 0, 'upload/img/new31.jpg', '', 'hon-2000-nguoi-tham-gia-huong-ung-nam-an-toan-giao-thong-2016', 'vi', '0', 1453864761, 22, 1, 0, '', '', ''),
(17, 'Tăng phí trả vé tàu để hạn chế \"cò\" vé chợ đen.', '', 0, 'upload/img/new2.jpg', '', 'tang-phi-tra-ve-tau-de-han-che-co-ve-cho-den', 'vi', '0', 1453864807, 22, 1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inuser_category`
--

CREATE TABLE `inuser_category` (
  `id` int(11) NOT NULL,
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
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `inuser_category`
--

INSERT INTO `inuser_category` (`id`, `name`, `alias`, `description`, `image`, `parent_id`, `home`, `focus`, `hot`, `tour`, `sort`, `lang`, `title`) VALUES
(27, 'Nguyễn công hoan', 'nguyen-cong-hoan', '<p><em>Seaside Resort g&acirc;y ấn tượng với t&ocirc;i nhất nhờ dịch vụ rất ho&agrave;n hảo v&agrave; chuy&ecirc;n nghiệp. Seaside Resort l&agrave; một kh&aacute;ch sạn với đội ngũ nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiệp, năng động, s&aacute;ng tạo, phong c&aacute;ch phục vụ v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng tốt. Hơn nữa ch&iacute;nh s&aacute;ch chăm s&oacute;c kh&aacute;ch h&agrave;ng nhiệt t&igrave;nh, chu đ&aacute;o ngay cả khi đ&atilde; ho&agrave;n th&agrave;nh hợp đồng.</em></p>\r\n', 'upload/img/inuser/avt.png', 0, 1, NULL, NULL, NULL, 9, 'vi', 'Big Boss'),
(28, 'Mrs bin', 'doctor', 'Seaside Resort impresses me most with its excellent service and professionalism. Seaside Resort is a hotel with professional staffs', 'upload/img/traveler_story111.png', 0, 1, 0, 0, 0, 1, 'en', 'doctor'),
(29, 'Nguyễn Thành Đạt', 'nguyen-thanh-dat', '<p>Thật tuyệt khi sử dụng dịch vụ tại Thăng Long, t&ocirc;i cảm thấy m&igrave;nh được phục vụ v&ocirc; c&ugrave;ng chu đ&aacute;o v&agrave; tận t&igrave;nh.Chắc chắn t&ocirc;i sẽ quay lại mua h&agrave;ng tại Thăng Long lần nữa.Ch&uacute;c Thăng Long ph&aacute;t triển mạnh mẽ hơn nữa, t&ocirc;i tin chắc điều đ&oacute;.</p>\r\n', 'upload/img/inuser/avt.png', 0, 1, NULL, NULL, NULL, 12, 'vi', 'VNPT Technology '),
(30, 'Phạm Minh Quân', 'pham-minh-quan', '<p>&nbsp;</p>\r\n\r\n<p>Y&ecirc;u cầu của ch&uacute;ng t&ocirc;i l&agrave; mỗi ph&ograve;ng h&aacute;t phải l&agrave; một kh&ocirc;ng gian đẹp, một phong c&aacute;ch kh&aacute;ch nhau để những kh&aacute;ch h&agrave;ng muốn kh&aacute;m ph&aacute; khi đến với ch&uacute;ng t&ocirc;i họ lu&ocirc;n lu&ocirc;n thấy thoải m&aacute;i.</p>\r\n', 'upload/img/inuser/avt1.png', 0, 1, NULL, NULL, NULL, 11, 'vi', 'Trưởng phòng HLC Group');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inuser_to_category`
--

CREATE TABLE `inuser_to_category` (
  `id` int(11) NOT NULL,
  `id_inuser` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `inuser_to_category`
--

INSERT INTO `inuser_to_category` (`id`, `id_inuser`, `id_category`) VALUES
(25, 1, 20),
(29, 3, 22),
(30, 2, 22),
(32, 4, 22),
(34, 5, 22),
(38, 9, 22),
(39, 6, 23),
(40, 8, 23),
(41, 7, 23),
(50, 11, 20),
(51, 12, 20),
(52, 13, 20),
(53, 16, 22),
(54, 15, 22),
(55, 14, 22),
(56, 17, 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
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
  `shipping` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoices`
--

INSERT INTO `invoices` (`id`, `code`, `date`, `time`, `datetime`, `timeupdate`, `customer`, `customer_id`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `customer_place`, `customer_ward`, `customer_birthday`, `user_create`, `user_sale`, `note`, `total_price`, `price_sale`, `customer_pay`, `customer_payted`, `status`, `time_buy`, `type`, `count`, `discount`, `shipping`) VALUES
(40, 'HD40', '17/05/2018', '17:12', 1526490000, 1526551961, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '', 358000, NULL, 450840, 0, 1, 1526551961, 0, 2, 2, 100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoices_detail`
--

CREATE TABLE `invoices_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `price_imp` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `inv_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoices_detail`
--

INSERT INTO `invoices_detail` (`id`, `name`, `code`, `quantity`, `price`, `price_sale`, `price_imp`, `sale`, `inv_id`, `product_id`, `note`) VALUES
(116, 'Tinh Chất Dưỡng Da 3 Trong 1 Chống Lão Hoá Innisfree Jeju Bamboo All-In-One Fluid 100ml', NULL, 1, 229000, 229000, NULL, NULL, 40, 95, NULL),
(115, 'Bộ Dưỡng Da Dùng Thử Innisfree Trà Xanh Green Tea Special Kit Set', NULL, 1, 129000, 129000, NULL, NULL, 40, 97, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ips`
--

CREATE TABLE `ips` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khohang_kygui`
--

CREATE TABLE `khohang_kygui` (
  `id` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `madonvan` varchar(255) DEFAULT NULL,
  `kho_tq` varchar(255) DEFAULT NULL,
  `kho_vn` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khohang_kygui`
--

INSERT INTO `khohang_kygui` (`id`, `time`, `madonvan`, `kho_tq`, `kho_vn`) VALUES
(1, 1534304652, 'qts005', 'Đã nhận', 'Đã nhận'),
(3, 1535441082, 'dsagdsagdsag sag', 'Chưa nhận', 'Đã nhận'),
(4, 1535441247, 'gdsagdsagdasgdsagd', 'Chưa nhận', 'Đã nhận'),
(5, 1535441295, 'gdsagsadsahsadh', 'Chưa nhận', 'Đã nhận'),
(6, 1535441350, 'gdsagdasgdashdad', 'Chưa nhận', 'Đã nhận'),
(7, 1535441416, 'gdsgdsag', 'Chưa nhận', 'Đã nhận');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khohang_order`
--

CREATE TABLE `khohang_order` (
  `id` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `madonvan` varchar(255) DEFAULT NULL,
  `kho_tq` varchar(255) DEFAULT NULL,
  `kho_vn` varchar(255) DEFAULT NULL,
  `loai_hang` int(11) DEFAULT NULL COMMENT '1:Order,2:Ký gửi',
  `note_vn` text,
  `note_cn` text,
  `time_update` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khohang_order`
--

INSERT INTO `khohang_order` (`id`, `time`, `madonvan`, `kho_tq`, `kho_vn`, `loai_hang`, `note_vn`, `note_cn`, `time_update`) VALUES
(40, 1535701093, '8936040490230', 'Đã nhận', 'Đã nhận', 1, NULL, NULL, 1536397975),
(43, 1535714147, '123456789', 'Đã nhận', 'Đã nhận', 1, NULL, NULL, NULL),
(44, 1536112660, '801324214843387177', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, NULL),
(46, 1536112744, '8936020760094', 'Đã nhận', 'Đã nhận', 2, 'fyfghfghvh', NULL, NULL),
(47, 1536129473, '987654', 'Đã nhận', 'Đã nhận', 1, NULL, 'gágd', 1536313446),
(48, 1536233912, '45623189', 'Đã nhận', 'Đã nhận', 2, NULL, 'hghjj', NULL),
(49, 1536233932, '765634896332', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, NULL),
(50, 1536233940, '35617935932', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536311731),
(51, 1536234705, '456456', 'Đã nhận', 'Đã nhận', 1, NULL, NULL, NULL),
(52, 1536236021, '8935044505094', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536295471),
(53, 1536236053, '5181311880002', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536295014),
(54, 1536236065, '8935044545328', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536295000),
(55, 1536236115, '149513', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536295136),
(56, 1536236208, '8809314944367', 'Chưa nhận', 'Đã nhận', 2, NULL, NULL, 1536294905),
(57, 1536313591, '3374176456267', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536313908),
(58, 1536313831, '3374025395603', 'Đã nhận', 'Đã nhận', 2, NULL, 'kkhdx', NULL),
(59, 1536314047, '70121328942427', 'Đã nhận', 'Đã nhận', 2, NULL, 'moi\n', NULL),
(60, 1536314260, '84331568', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536314377),
(61, 1536369727, '8935049500506', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536398066),
(62, 1536395575, '9893417040030', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536395575),
(63, 1536395631, '801366159406217739', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536395631),
(64, 1536395652, '3832473727204', 'Đã nhận', 'Chưa nhận', 2, NULL, NULL, 1536395652),
(65, 1536396015, '3832586078358', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536396015),
(66, 1536396029, '3910900412608', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536396029),
(67, 1536396052, '3905688641780', 'Chưa nhận', 'Đã nhận', 2, NULL, NULL, 1536396052),
(68, 1536398039, '8935001800347', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536398090),
(69, 1536404120, '669039506144', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536404192),
(70, 1536404147, '9742818325682', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536404209),
(71, 1536404259, '70121326945059', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536404349),
(72, 1536404318, '70121322942618', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536404371),
(73, 1536501615, '191142250870', 'Đã nhận', 'Đã nhận', 1, NULL, NULL, 1536501690),
(74, 1536501657, '6951572900301', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536501740),
(75, 1536501666, '6950566181931', 'Đã nhận', 'Đã nhận', 2, NULL, NULL, 1536501754);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `alias` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `language`
--

INSERT INTO `language` (`id`, `alias`, `name`) VALUES
(1, 'vi', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `map_shopping`
--

CREATE TABLE `map_shopping` (
  `id` int(11) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `tim_kiem` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `toa_domap` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `toa_dohienthi` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `diachi_shop` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` char(150) CHARACTER SET utf8 DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `map_shopping`
--

INSERT INTO `map_shopping` (`id`, `title`, `tim_kiem`, `toa_domap`, `toa_dohienthi`, `diachi_shop`, `phone`, `lang`) VALUES
(2, 'Chi nhánh camera siêu net tại Hà Nội', '168 Nguyễn Tuân - Thanh Xuân Hà Nội', '(20.998863, 105.80291809999994)', '20.998863, 105.80291809999994', '168 Nguyễn Tuân - Thanh Xuân Hà Nội', '0918.041616 - 0987.041616', 'vi'),
(5, 'Chi nhánh camera siêu net tại Hải Phòng', '52 Lê Quang Đạo - Nam Từ Liêm - Hà Nội', '', '', 'Số 66, Trường Chinh, Kiến An, Hải Phòng', '031 3603208', 'vi'),
(6, 'Chi nhánh camera siêu net tại TP. HCM', 'Tp HCM', '(10.7764745, 106.70088310000006)', '10.7764745, 106.70088310000006', '212/58 Thoại Ngọc Hầu, P. Phú Thạnh, Q. Tân Phú, TP. HCM', '08 39722693', 'vi'),
(7, 'Chi nhánh camera siêu net tại Yên Bái', 'Yên Bái', '(21.6837923, 104.4551361)', '21.6837923, 104.4551361', '168 Nguyễn Tuân - Yên Bái', '0918.041616 - 0987.041616', 'vi'),
(11, 'cừa hàng thời trang', 'cua hang so 23 ngo 229 cầu giấy hà nội', '(21.0477839, 105.79456129999994)', '21.0477839, 105.79456129999994', 'cua hang so 23 ngo 229 cầu giấy hà nội', '0988787654', 'vi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
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
  `link` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `media`
--

INSERT INTO `media` (`id`, `name`, `description`, `content`, `title_seo`, `description_seo`, `keyword_seo`, `lang`, `category_id`, `home`, `hot`, `focus`, `sort`, `view`, `image`, `active`, `alias`, `link`) VALUES
(1, 'album hè cắm trại 2018', '<p>nội dung m&ocirc; tả</p>\r\n', '<p>nội dung chi tiết</p>\r\n', 'Không gian nhà hàng', 'Không gian nhà hàng', 'Không gian nhà hàng', 'vi', 11, 1, NULL, NULL, 1, 0, 'upload/img/media/dia-diem-du-lich-54.jpg', 1, 'album-he-cam-trai-2018', ''),
(10, 'album anh  cam trại hè', '', '', '', '', '', 'vi', 11, 1, NULL, NULL, 2, 0, 'upload/img/media/dia-diem-du-lich-4.jpg', 1, 'album-anh-cam-trai-he', ''),
(11, 'up anh jpeg cha le khong duoc-12', '<p>m&ocirc;i tả</p>\r\n', '', '', '', '', 'vi', 1, NULL, NULL, 1, 3, 0, 'upload/img/media/1233.JPEG', 1, 'up-anh-jpeg-cha-le-khong-duoc-12', 't0WFOnwp3MM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_category`
--

CREATE TABLE `media_category` (
  `id` int(11) NOT NULL,
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
  `left_right` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `media_category`
--

INSERT INTO `media_category` (`id`, `name`, `alias`, `sort`, `home`, `focus`, `coupon`, `image`, `title_seo`, `description_seo`, `keyword_seo`, `lang`, `description`, `parent_id`, `hot`, `left_right`) VALUES
(1, 'Hình ảnh', 'hinh-anh', 2, NULL, NULL, NULL, 'upload/img/media/anh1.jpg', 'Hình ảnh', 'gdsagds', NULL, 'vi', '<p>noi dung m&ocirc; tả</p>\r\n', 0, NULL, 1),
(11, 'album anh nam 2019', 'album-anh-nam-2019', 5, 1, NULL, NULL, 'upload/img/media/dia-diem-du-lich-5.jpg', '', '', NULL, 'vi', '<p>m&ocirc; tả</p>\r\n', 1, NULL, 1),
(10, 'album nam 2018', 'album-nam-2018', 4, 1, NULL, NULL, 'upload/img/media/anh.jpg', '', '', NULL, 'vi', '<p>noi dung m&ocirc; tả cho album</p>\r\n', 1, NULL, 1),
(12, 'Hình ảnh hội nghị', 'hinh-anh-hoi-nghi', 6, 1, NULL, NULL, 'upload/img/media/dia-diem-du-lich-3.jpg', '', '', NULL, 'vi', '', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_images`
--

CREATE TABLE `media_images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url` char(200) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `media_images`
--

INSERT INTO `media_images` (`id`, `name`, `id_item`, `image`, `url`, `sort`) VALUES
(1, 'anh so 1', 1, 'upload/img/media_multi/ae20248dc61407525e7a96a1b002c72b.jpg', NULL, NULL),
(2, 'anh so 2', 1, 'upload/img/media_multi/67594498cb19b94e98cc1c2095c83c51.jpg', NULL, NULL),
(4, 'anh so 4', 1, 'upload/img/media_multi/44bb59baff034000b0f46258088bf8b8.jpg', NULL, NULL),
(5, 'anh so 5', 1, 'upload/img/media_multi/036d5e089f887f4687e3379500c8256d.jpg', NULL, NULL),
(6, 'anh so 6', 1, 'upload/img/media_multi/fa02a841c335c7566a42548fe1c0083d.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
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
  `style` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `url`, `image`, `alias`, `position`, `target`, `seturl`, `parent_id`, `description`, `module`, `cat_id`, `sort`, `home`, `lang`, `view_type`, `style`) VALUES
(101, 'Báo giá', 'page/bang-gia.html', NULL, 'bao-gia', 'main', '', NULL, 0, '', 'pages', 0, 2, 0, 'vi', NULL, NULL),
(7, 'Liên hệ', 'contact', NULL, 'lien-he', 'main', '', NULL, 0, '', '0', 0, 6, 0, 'vi', NULL, NULL),
(39, 'Trang chủ', 'trang-chu', 'upload/img/menus/img_top1.png', 'trang-chu', 'bottom_2', '', NULL, 0, '', '0', 0, NULL, 0, 'vi', NULL, NULL),
(40, 'Giới thiệu', 'gioi-thieu', 'upload/img/menus/img_top2.png', 'gioi-thieu', 'bottom_2', '', NULL, 0, '', '0', 0, NULL, 0, 'vi', NULL, NULL),
(41, 'Thông báo', 'thong-bao', 'upload/img/menus/img_top3.png', 'thong-bao', 'bottom_2', '', NULL, 0, '', '0', 0, NULL, 0, 'vi', NULL, NULL),
(42, 'Thanh toán mua hàng', 'thanh-toan-mua-hang', 'upload/img/menus/img_top4.png', 'thanh-toan-mua-hang', 'bottom_2', '', NULL, 0, '', '0', 0, NULL, 0, 'vi', NULL, NULL),
(43, 'Khuyến mãi', 'khuyen-mai', NULL, 'khuyen-mai', 'bottom_2', '', NULL, 0, '', '0', 0, NULL, 0, 'vi', NULL, NULL),
(44, 'Góp ý', 'gop-y', NULL, 'gop-y', 'bottom_2', '', NULL, 0, '', '0', 0, NULL, 0, 'vi', NULL, NULL),
(45, 'Liên hệ', 'lien-he', NULL, 'lien-he', 'bottom_2', '', NULL, 0, '', '0', 0, NULL, 0, 'vi', NULL, NULL),
(46, 'Chúng tôi đều có thể giúp bạn', '#', 'upload/img/menus/a4.png', 'chung-toi-deu-co-the-giup-ban', 'top', '', NULL, 0, '<p>Ch&uacute;ng t&ocirc;i hỗ trợ mua h&agrave;ng tr&ecirc;n Taobao.com, 1688.com, Alibaba.com, Tmall.com,&hellip; v&agrave; tất cả c&aacute;c Website thương mại điện tử Trung Quốc&nbsp;<br />\r\nChỉ với 6 bước đơn giản.</p>\r\n', '0', 0, 0, 0, 'vi', NULL, NULL),
(47, '1. CÀI ĐẶT CÔNG CỤ MUA HÀNG', '#', 'upload/img/menus/ic1.png', '1-cai-dat-cong-cu-mua-hang', 'top', '', NULL, 46, '<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng c&agrave;i đặt c&ocirc;ng cụ mua h&agrave;ng ORDERGIATOT.VN&nbsp;cho tr&igrave;nh duyệt của m&igrave;nh.</p>\r\n', '0', 0, 0, 0, 'vi', NULL, NULL),
(48, '2. ĐĂNG KÝ TÀI KHOẢN', '#', 'upload/img/menus/ic2.png', '2-dang-ky-tai-khoan', 'top', '', NULL, 46, '<p>Để&nbsp;sử dụng dịch vụ mua v&agrave; ship h&agrave;ng hộ tr&ecirc;n ORDERGIATOT.VN, kh&aacute;ch h&agrave;ng&nbsp;cần phải TẠO T&Agrave;I KHOẢN&nbsp;tr&ecirc;n trang web n&agrave;y</p>\r\n', '0', 0, 1, 0, 'vi', NULL, NULL),
(55, 'Quy định', 'page/chinh-sach-quy-dinh.html', NULL, 'quy-dinh', 'main', '', NULL, 0, '', 'pages', 0, 4, 0, 'vi', NULL, NULL),
(71, 'home', 'home', NULL, 'home', 'main', '', NULL, 0, '', '0', 0, 0, 0, 'en', NULL, NULL),
(72, 'home 2', 'home-2', NULL, 'home-2', 'main', '', NULL, 0, '', '0', 0, 1, 0, 'en', NULL, NULL),
(123, 'Chính sách giao hàng', 'page/chinh-sach-giao-hang.html', NULL, 'chinh-sach-giao-hang', 'main', '', NULL, 102, '', 'pages', 0, 1, 0, 'vi', NULL, NULL),
(103, 'Công cụ', 'page/huong-dan.html', NULL, 'cong-cu', 'bottom', '', NULL, 0, '', 'pages', 0, 0, 0, 'vi', NULL, NULL),
(104, 'Đặt hàng', 'page/dat-hang-trung-quoc-viet-nam.html', NULL, 'dat-hang', 'bottom', '', NULL, 0, '', 'pages', 0, 1, 0, 'vi', NULL, NULL),
(105, 'Hướng dẫn', 'page/huong-dan.html', NULL, 'huong-dan', 'bottom', '', NULL, 0, '', 'pages', 0, 2, 0, 'vi', NULL, NULL),
(106, 'Biểu phí', 'page/bang-gia.html', NULL, 'bieu-phi', 'bottom', '', NULL, 0, '', 'pages', 0, 3, 0, 'vi', NULL, NULL),
(107, 'Tin tức', 'danh-muc-tin/tin-tuc.html', NULL, 'tin-tuc', 'bottom', '', NULL, 0, '', 'news', 1, 4, 0, 'vi', NULL, NULL),
(81, 'Dịch vụ', 'danh-muc-tin/dich-vu.html', NULL, 'dich-vu', 'main', '', NULL, 0, '', 'news', 2, 1, 0, 'vi', NULL, NULL),
(82, 'Hướng dẫn', 'page/huong-dan.html', NULL, 'huong-dan', 'main', '', NULL, 0, '', 'pages', 0, 3, 0, 'vi', NULL, NULL),
(124, 'Hướng dẫn mua hàng', 'page/huong-dan-mua-hang.html', NULL, 'huong-dan-mua-hang', 'main', '', NULL, 82, '', 'pages', 0, 0, 0, 'vi', NULL, NULL),
(120, 'Quy định thanh toán', 'page/quy-dinh-thanh-toan.html', NULL, 'quy-dinh-thanh-toan', 'main', '', NULL, 55, '', 'pages', 0, 0, 0, 'vi', NULL, NULL),
(109, 'Liên hệ', 'lien-he', NULL, 'lien-he', 'bottom', '', NULL, 0, '', '0', 0, 6, 0, 'vi', NULL, NULL),
(108, 'Quy định', 'page/chinh-sach-quy-dinh.html', NULL, 'quy-dinh', 'bottom', '', NULL, 0, '', 'pages', 0, 5, 0, 'vi', NULL, NULL),
(90, '3. TÌM SẢN PHẨM CẦN MUA', '3-tim-san-pham-can-mua', 'upload/img/menus/ic3.png', '3-tim-san-pham-can-mua', 'top', '', NULL, 46, '<p>Sau khi tạo t&agrave;i khoản, bước tiếp theo m&agrave; kh&aacute;ch h&agrave;ng&nbsp;cần l&agrave;m l&agrave; t&igrave;m sản phẩm muốn mua từ c&aacute;c trang web</p>\r\n', '0', 0, 2, 0, 'vi', NULL, NULL),
(91, '4. GỬI ĐƠN HÀNG', '#', 'upload/img/menus/ic4.png', '4-gui-don-hang', 'top', '', NULL, 46, '<p>Sau khi t&igrave;m được sản phẩm muốn mua, Qu&yacute; kh&aacute;ch cần tạo đơn h&agrave;ng gửi cho ORDERGIATOT.VN</p>\r\n', '0', 0, 3, 0, 'vi', NULL, NULL),
(92, '5. ĐẶT CỌC TIỀN ĐƠN HÀNG', '#', 'upload/img/menus/ic5.png', '5-dat-coc-tien-don-hang', 'top', '', NULL, 46, '<p>Sau khi gửi đơn h&agrave;ng, kh&aacute;ch h&agrave;ng bắt buộc phải nạp tiền đặt cọc&nbsp;th&igrave; mới c&oacute; thể tiếp tục&nbsp;giao dịch.</p>\r\n', '0', 0, 4, 0, 'vi', NULL, NULL),
(119, 'Giới thiệu', 'page/gioi-thieu-ve-ordergiatot-vn.html', NULL, 'gioi-thieu', 'main', '', NULL, 0, '', 'pages', 0, 0, 0, 'vi', NULL, NULL),
(93, '6. VẬN CHUYỂN - THANH TOÁN', '#', 'upload/img/menus/ic31.png', '6-van-chuyen-thanh-toan', 'top', '', NULL, 46, '<p>Sau khi hoàn tất thủ tục thanh toán, Bạn sẽ nhận được hàng từ 1 - 2 ngày kể từ khi kho Trung Quốc ký nhận hàng. </p>\r\n', '0', 0, 5, 0, 'vi', NULL, NULL),
(94, 'Giải đáp thắc mắc', 'chon-chung-toi', 'upload/img/menus/trai.png', 'giai-dap-thac-mac', 'right', '', NULL, 0, '', '0', 0, 1, 0, 'vi', NULL, NULL),
(110, 'Hướng dẫn đặt hàng', 'page/huong-dan.html', NULL, 'huong-dan-dat-hang', 'right', '', NULL, 114, '', 'pages', 0, 2, 0, 'vi', NULL, NULL),
(112, 'Chính sách và điều khoản', 'page/chinh-sach-quy-dinh.html', NULL, 'chinh-sach-va-dieu-khoan', 'right', '', NULL, 114, '', 'pages', 0, 1, 0, 'vi', NULL, NULL),
(113, 'Bảng giá', 'page/bang-gia.html', NULL, 'bang-gia', 'right', '', NULL, 114, '', 'pages', 0, 0, 0, 'vi', NULL, NULL),
(114, 'Chính sách', 'chinh-sach', NULL, 'chinh-sach', 'right', '', NULL, 0, '', '0', 0, 0, 0, 'vi', NULL, NULL),
(115, 'Bảng giá cước ship hàng', 'page/bang-gia.html', NULL, 'bang-gia-cuoc-ship-hang', 'right', '', NULL, 94, '', 'pages', 0, 3, 0, 'vi', NULL, NULL),
(116, 'Đặt hàng Trung Quốc', 'new/dich-vu-dat-hang-trung-quoc.html', NULL, 'dat-hang-trung-quoc', 'right', '', NULL, 94, '', '0', 0, 2, 0, 'vi', NULL, NULL),
(117, 'Đặt hàng Quảng Châu', 'new/dich-vu-dat-hang-quang-chau.html', NULL, 'dat-hang-quang-chau', 'right', '', NULL, 94, '', '0', 0, 1, 0, 'vi', NULL, NULL),
(118, 'Mua hàng Taobao', 'new/dich-vu-mua-hang-taobao.html', NULL, 'mua-hang-taobao', 'right', '', NULL, 94, '', 'news', 2, 0, 0, 'vi', NULL, NULL),
(122, 'Chính sách khiếu nại', 'page/chinh-sach-giai-quyet-khieu-nai.html', NULL, 'chinh-sach-khieu-nai', 'main', '', NULL, 102, '', 'pages', 0, 0, 0, 'vi', NULL, NULL),
(121, 'Quy định đóng gói', 'page/quy-dinh-bao-hiem-hang-hoa.html', NULL, 'quy-dinh-dong-goi', 'main', '', NULL, 55, '', 'pages', 0, 1, 0, 'vi', NULL, NULL),
(102, 'Chính sách', 'chinh-sach', NULL, 'chinh-sach', 'main', '', NULL, 0, '', '0', 0, 5, 0, 'vi', NULL, NULL),
(125, 'Hướng dẫn ship hàng', 'page/huong-dan-ship-hang.html', NULL, 'huong-dan-ship-hang', 'main', '', NULL, 82, '', 'pages', 0, 1, 0, 'vi', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `shop_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
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
  `sort` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `hot`, `image`, `content`, `alias`, `lang`, `tag`, `time_update`, `time`, `category_id`, `home`, `focus`, `title_seo`, `keyword_seo`, `description_seo`, `video`, `view`, `active`, `button_1`, `sort`) VALUES
(7, 'Cam kết', '<p>Check đơn, duyệt đơn, x&aacute;c nhận thanh to&aacute;n, mua h&agrave;ng trong 1 giờ</p>\r\n', NULL, 'upload/img/news/ld1.png', '', 'cam-ket', 'vi', NULL, NULL, 1535100178, 3, NULL, NULL, '', '', '', '', NULL, 1, 0, 0),
(8, 'Hoàn 100% tiền khi mất hàng', '<p>Ch&uacute;ng t&ocirc;i ho&agrave;n tiền 100% đối với đơn h&agrave;ng bị mất của kh&aacute;ch h&agrave;ng</p>\r\n', NULL, 'upload/img/news/ld2.png', '', 'hoan-100-tien-khi-mat-hang', 'vi', NULL, NULL, 1534560836, 3, NULL, NULL, '', '', '', '', NULL, 1, 0, 0),
(9, 'Ưu đãi số lượng theo đơn hàng', '<p>Dịch vụ của ch&uacute;ng t&ocirc;i mang đến nhiều g&oacute;i dịch vụ kh&aacute;c nhau, đ&oacute; l&agrave; nhưng g&oacute;i giải ph&aacute;p vận chuyển h&agrave;ng h&oacute;a ho&agrave;n chỉnh v&agrave; to&agrave;n diện nhất cho nhu cầu của kh&aacute;ch h&agrave;ng.</p>\r\n', NULL, 'upload/img/news/ld3.png', '', 'uu-dai-so-luong-theo-don-hang', 'vi', NULL, NULL, 1534560947, 3, NULL, NULL, '', '', '', '', NULL, 1, 0, 0),
(10, 'Không lo tắc biên', '<p>Quy tr&igrave;nh giao nhận của ch&uacute;ng t&ocirc;i kh&ocirc;ng thể ho&agrave;n thiện hơn được nữa bởi sự ch&iacute;nh x&aacute;c của qui tr&igrave;nh đ&oacute;ng g&oacute;i, bảo quản v&agrave; sự cẩn thận, chuy&ecirc;n nghiệp của đội ngũ nh&acirc;n vi&ecirc;n.</p>\r\n', NULL, 'upload/img/news/ld4.png', '', 'khong-lo-tac-bien', 'vi', NULL, NULL, 1534562274, 3, NULL, NULL, '', '', '', '', NULL, 1, 0, 0),
(11, 'Marketing & Bán hàng', '<p>Đội ngũ nh&acirc;n vi&ecirc;n năng động tr&agrave;n đầy nhiệt huyết sẽ mang đến cho bạn những dịch vụ ho&agrave;n thiện nhất bởi th&aacute;i độ v&agrave; tr&aacute;ch nhiệm chuy&ecirc;n nghiệp nh&acirc;t.</p>\r\n', NULL, 'upload/img/news/ld5.png', '', 'marketing-ban-hang', 'vi', NULL, NULL, 1534561159, 3, NULL, NULL, '', '', '', '', NULL, 1, 0, 0),
(12, 'Chi phí rẻ hơn 10% - 30%', '<p>Ch&uacute;ng t&ocirc;i mang đến cho bạn sự cạnh tranh về gi&aacute; cả tốt nhất.</p>\r\n', NULL, 'upload/img/news/ld6.png', '', 'chi-phi-re-hon-10-30', 'vi', NULL, NULL, 1535100090, 3, NULL, NULL, '', '', '', '', NULL, 1, 0, 0),
(13, 'Đăng ký tài khoản tại website', '', NULL, 'upload/img/news/p1.png', '<p><span style=\"font-size:14px\">Để&nbsp;sử dụng dịch vụ mua v&agrave; ship h&agrave;ng hộ tr&ecirc;n ORDERGIATOT.VN, đầu ti&ecirc;n kh&aacute;ch h&agrave;ng&nbsp;cần phải&nbsp;<strong>TẠO T&Agrave;I KHOẢN</strong>&nbsp;tr&ecirc;n trang web n&agrave;y.&nbsp;C&aacute;c bước tạo t&agrave;i khoản như sau:</span></p>\r\n\r\n<h3><strong>Bước 1:&nbsp;</strong>Bạn truy cập v&agrave;o trang chủ <strong>ordergiatot.vn</strong>&nbsp;v&agrave; click chuột v&agrave;o mục&nbsp;<strong>ĐĂNG K&Iacute;</strong>&nbsp;ở g&oacute;c phải&nbsp;tr&ecirc;n c&ugrave;ng của m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh.</h3>\r\n\r\n<h3><strong>Bước 2</strong>:&nbsp;Kh&aacute;ch h&agrave;ng điền đầy đủ&nbsp;c&aacute;c nội dung trong mỗi &ocirc; v&agrave; click&nbsp;v&agrave;o n&uacute;t &ldquo;<strong>ĐĂNG K&Iacute;</strong>&ldquo;.</h3>\r\n\r\n<h3><strong>Bước 3:</strong>&nbsp;M&agrave;n h&igrave;nh m&aacute;y t&iacute;nh th&ocirc;ng b&aacute;o bạn đ&atilde; đăng k&iacute; th&agrave;nh c&ocirc;ng. Sau đ&oacute; bạn vui l&ograve;ng v&agrave;o check mail để k&iacute;ch hoạt t&agrave;i khoản v&agrave; ho&agrave;n th&agrave;nh đăng k&yacute;</h3>\r\n\r\n<h3><strong>Bước 4:&nbsp;</strong>Kh&aacute;ch h&agrave;ng click v&agrave;o mục &ldquo;đăng nhập&rdquo; &nbsp;tr&ecirc;n giao diện m&aacute;y t&iacute;nh sau khi đ&atilde; ho&agrave;n th&agrave;nh đăng k&yacute; để đăng nhập v&agrave;o t&agrave;i khoản của m&igrave;nh</h3>\r\n\r\n<h3><strong>Bước 5:</strong> Chỉnh sửa th&ocirc;ng tin c&aacute; nh&acirc;n</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'dang-ky-tai-khoan-tai-website', 'vi', NULL, NULL, 1534749987, 4, 1, NULL, '', '', '', '', 2, 1, 0, 0),
(14, 'Cài đặt công cụ đặt hàng', '', NULL, 'upload/img/news/p2.png', '', 'cai-dat-cong-cu-dat-hang', 'vi', NULL, NULL, 1534566377, 4, NULL, NULL, '', '', '', '', 2, 1, 0, 0),
(15, 'Chọn mua hàng tại các website Trung Quốc', '', NULL, 'upload/img/news/p3.png', '', 'chon-mua-hang-tai-cac-website-trung-quoc', 'vi', NULL, NULL, 1534563852, 4, NULL, NULL, '', '', '', '', 1, 1, 0, 0),
(16, 'Chuyển tiền đặt cọc cho chúng tôi', '', NULL, 'upload/img/news/p6.png', '', 'chuyen-tien-dat-coc-cho-chung-toi', 'vi', NULL, NULL, 1534563906, 4, NULL, NULL, '', '', '', '', 3, 1, 0, 0),
(17, 'Cuối cùng bạn chỉ đợi nhận hàng', '', NULL, 'upload/img/news/p5.png', '', 'cuoi-cung-ban-chi-doi-nhan-hang', 'vi', NULL, NULL, 1534563954, 4, NULL, NULL, '', '', '', '', 4, 1, 0, 0),
(18, 'Đăng ký tài khoản tại website', '', NULL, 'upload/img/news/p11.png', '', 'dang-ky-tai-khoan-tai-website-2', 'vi', NULL, NULL, 1534564042, 6, NULL, NULL, '', '', '', '', 2, 1, 0, 0),
(19, 'Cung cấp địa chỉ và tên được cấp', '', NULL, 'upload/img/news/p21.png', '', 'cung-cap-dia-chi-va-ten-duoc-cap', 'vi', NULL, NULL, 1534564142, 6, NULL, NULL, '', '', '', '', 1, 1, 0, 0),
(20, 'Đăng nhập hệ thống', '', NULL, 'upload/img/news/p31.png', '', 'dang-nhap-he-thong', 'vi', NULL, NULL, 1534564200, 6, NULL, NULL, '', '', '', '', 1, 1, 0, 0),
(21, 'Cập nhật thông tin hàng hóa', '', NULL, 'upload/img/news/p61.png', '', 'cap-nhat-thong-tin-hang-hoa', 'vi', NULL, NULL, 1534566341, 6, NULL, NULL, '', '', '', '', NULL, 1, 0, 0),
(22, 'Đợi nhận hàng và thanh toán', '', NULL, 'upload/img/news/p52.png', '', 'doi-nhan-hang-va-thanh-toan', 'vi', NULL, NULL, 1534566330, 6, NULL, NULL, '', '', '', '', 1, 1, 0, 0),
(23, 'Dịch vụ đặt hàng Trung Quốc', '<p>H&agrave;ng h&oacute;a hiện nay tại Việt Nam đa sốl&agrave; được&nbsp;<strong>nhập khẩu từ Trung Quốc</strong>&nbsp;hiện đang được ti&ecirc;u thụ kh&aacute; mạnh ở thị trường Việt Nam. Sở dĩ c&oacute; điều n&agrave;y l&agrave; do c&aacute;c mặt h&agrave;ng của Trung Quốc thường c&oacute; gi&aacute; cả rất mềm, chất lượng v&agrave; mẫu m&atilde; đa dạng, ph&ugrave; hợp với thu nhập của người Việt. T&igrave;nh trạng nhập si&ecirc;u h&agrave;ng Trung Quốc c&oacute; thể l&agrave; mối đe dọa đối với ng&agrave;nh sản xuất trong nước. Tuy nhi&ecirc;n, tr&ecirc;n g&oacute;c độ kinh doanh v&agrave; ti&ecirc;u d&ugrave;ng th&igrave; điều n&agrave;y lại c&oacute; lợi. Để gi&uacute;p đơn vị bu&ocirc;n b&aacute;n trong nước c&oacute; thể dễ d&agrave;ng tiếp cận với nguồn h&agrave;ng từ Trung Quốc đảm bảo uy t&iacute;n, ordergiatot.vn&nbsp;đ&atilde; triển khai dịch vụ đặt mua h&agrave;ng từ Trung Quốc gi&aacute; rẻ về Việt Nam với nhiều ch&iacute;nh s&aacute;ch ưu đ&atilde;i d&agrave;nh cho kh&aacute;ch h&agrave;ng.</p>\r\n', NULL, 'upload/img/news/dv11.jpg', '<h3 style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Nhu cầu đặt mua h&agrave;ng từ Trung Quốc gi&aacute; rẻ về Việt Nam hiện nay</strong></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Hiện nay Trung Quốc l&agrave; quốc gia c&oacute; năng lực sản xuất h&agrave;ng h&oacute;a cao nhất cả nước. Với lợi thế của một nước c&oacute; diện t&iacute;ch lớn v&agrave; đ&ocirc;ng d&acirc;n cư, Trung Quốc c&oacute; thể tận dụng được thị trường lao động gi&aacute; rẻ c&ugrave;ng nguồn nguy&ecirc;n liệu sẵn c&oacute; trong nước để ph&aacute;t triển c&aacute;c đại c&ocirc;ng trường, đại x&iacute; nghiệp.&nbsp;Hiện nay Trung Quốc được v&iacute; l&agrave; c&ocirc;ng xưởng của thế giới, nơi sản xuất v&agrave; cung ứng một lượng lớn h&agrave;ng h&oacute;a cho Ch&acirc;u &Aacute; v&agrave; c&aacute;c nước kh&aacute;c tr&ecirc;n thế giới. Trung Quốc c&oacute; kĩ thuật gia rất cao do đ&oacute; lượng h&agrave;ng h&oacute;a m&agrave; quốc gia n&agrave;y tạo ra lớn gấp nhiều lần so với h&agrave;ng h&oacute;a của to&agrave;n khu vực Đ&ocirc;ng Nam &Aacute;. Tận dụng c&aacute;c lợi thế n&agrave;y, h&agrave;ng h&oacute;a Trung Quốc được b&aacute;n với gi&aacute; rất rẻ do đ&oacute; n&oacute; trở th&agrave;nh mối đe dọa đối với nhiều nh&agrave; sản xuất trong nước.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><a href=\"https://lamphongchina.com/wp-content/uploads/2015/12/china-5.jpg\"><img alt=\"china 5\" src=\"https://lamphongchina.com/wp-content/uploads/2015/12/china-5.jpg\" style=\"height:399px; width:600px\" /></a></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Theo thống k&ecirc;,&nbsp;h&agrave;ng h&oacute;a Trung Quốc&nbsp;đang chiếm hơn 35 % thị phần h&agrave;ng nhập ngoại tại thị trường Việt Nam. Con số n&agrave;y sẽ ng&agrave;y c&agrave;ng gia tăng khi c&aacute;c doanh nghiệp Trung Quốc c&agrave;ng nhắm đến thị trường Việt Nam th&ocirc;ng qua c&aacute;c chiến lược kinh doanh của m&igrave;nh. Trong thời gian qua, d&ugrave; liến tiếp d&iacute;nh phải c&aacute;c vụ b&ecirc; bối li&ecirc;n quan đến an to&agrave;n vệ sinh thực phẩm hay chất độc hại c&oacute; trong c&aacute;c loại đồ chơi trẻ em nhưng h&agrave;ng Trung Quốc vẫn được thị trường Việt Nam ưa chuộng. Sở dĩ c&oacute; điều n&agrave;y l&agrave; bởi nếu h&agrave;ng Trung Quốc c&oacute; nguồn gốc r&otilde; r&agrave;ng th&igrave; đều đảm bảo an to&agrave;n theo mức cho ph&eacute;p của cơ quan thẩm định. Việc d&iacute;nh phải c&aacute;c b&ecirc; bối tr&ecirc;n phần lớn l&agrave; h&agrave;ng nhập lậu, h&agrave;ng nh&aacute;i, h&agrave;ng giả.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Vấn đề quan trọng l&agrave; l&agrave;m sao để bạn kh&ocirc;ng mua được những l&ocirc; h&agrave;ng Trung Quốc c&oacute; chất lượng, c&oacute; uy t&iacute;n. V&agrave; thực tế đ&atilde; chứng minh c&aacute;c loại h&agrave;ng Trung Quốc c&oacute; nguồn gốc r&otilde; r&agrave;ng c&oacute; chất lượng rất tốt, được người ti&ecirc;u d&ugrave;ng trong nước đ&aacute;nh gi&aacute; cao. Để gi&uacute;p c&aacute;c đơn vị b&aacute;n bu&ocirc;n, b&aacute;n lẻ tiếp cận được với những l&ocirc; h&agrave;ng Trung Quốc an to&agrave;n, c&oacute; uy t&iacute;n,&nbsp; ordergiatot.vn&nbsp;đ&atilde; triển khai dịch vụ đặt mua h&agrave;ng từ Trung Quốc về Việt Nam gi&aacute; rẻ c&ugrave;ng nhiều ch&iacute;nh s&aacute;ch ưu đ&atilde;i d&agrave;nh cho kh&aacute;ch h&agrave;ng.</span></p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>ordergiatot.vn đặt mua h&agrave;ng từ Trung Quốc gi&aacute; rẻ về Việt Nam</strong></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Tr&ecirc;n cơ sở x&aacute;c định nhu cầu ti&ecirc;u d&ugrave;ng h&agrave;ng Trung Quốc trong nước, ordergiatot.vn đ&atilde; triển khai dịch vụ đặt mua h&agrave;ng từ Trung Quốc về Việt Nam gi&aacute; rẻ để đ&aacute;p ứng nhu cầu cầu của c&aacute;c đơn vị kinh doanh bu&ocirc;n b&aacute;n trong nước.&nbsp;Bạn l&agrave; đại&nbsp;l&yacute; b&aacute;n bu&ocirc;n, b&aacute;n lẻ cần t&igrave;m nguồn h&agrave;ng Trung Quốc c&oacute; mẫu m&atilde; đẹp, thiết kế độc đ&aacute;o? Bạn đề cao yếu tố chất lượng đối với h&agrave;ng Trung Quốc? Bạn muốn sở hữu những m&oacute;n h&agrave;ng Trung Quốc với mức gi&aacute; ph&ugrave; hợp nhất? H&atilde;y li&ecirc;n hệ ngay với ordergiatot.vn&nbsp;để ch&uacute;ng t&ocirc;i gi&uacute;p bạn thực hiện những nhu cầu n&agrave;y. Đến với dịch vụ nhận đặt mua h&agrave;ng Trung Quốc về Việt Nam của ordergiatot.vn, ch&uacute;ng t&ocirc;i sẽ giới thiệu cho bạn những địa chỉ cung ứng h&agrave;ng c&oacute; chất lượng v&agrave; uy t&iacute;n h&agrave;ng đầu Trung Quốc.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"trung quoc 7\" src=\"https://lamphongchina.com/wp-content/uploads/2015/12/trung-quoc-7.jpg\" style=\"height:393px; width:600px\" /></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Ch&uacute;ng t&ocirc;i tiến h&agrave;nh&nbsp;order h&agrave;ng Trung Quốc&nbsp;v&agrave; vận chuyển hầu hết c&aacute;c loại h&agrave;ng h&oacute;a như h&agrave;ng ti&ecirc;u d&ugrave;ng, h&agrave;ng may mặc, h&agrave;ng c&ocirc;ng nghiệp, thiết bị văn ph&ograve;ng, h&agrave;ng cơ kh&iacute;&hellip; m&agrave; kh&ocirc;ng đưa ra c&aacute;c y&ecirc;u cầu về trọng lượng v&agrave; k&iacute;ch thước. Hiện nay, ordergiatot.vn c&oacute; mối quan hệ tốt với một số đối t&aacute;c sản xuất v&agrave; ph&acirc;n phối h&agrave;ng h&oacute;a ở tại Trung Quốc do đ&oacute; c&oacute; thể thương lượng v&agrave; hạ gi&aacute; th&agrave;nh nhằm đạt được thỏa thuận cho kh&aacute;ch h&agrave;ng. Ch&uacute;ng t&ocirc;i &aacute;p dụng dịch vụ n&agrave;y đối cả h&igrave;nh thức mua h&agrave;ng truyền thống lẫn thương mại điện tử.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Đối với h&igrave;nh thức đặt mua trực tiếp, kh&aacute;ch h&agrave;ng chỉ cần cung cấp th&ocirc;ng tin h&agrave;ng h&oacute;a, số lượng cho ordergiatot.vn, ch&uacute;ng t&ocirc;i sẽ tư vấn, giới thiệu những nh&agrave; cung ứng h&agrave;ng c&oacute; uy t&iacute;n tại Trung Quốc v&agrave; đặt h&agrave;ng cho kh&aacute;ch. H&agrave;ng h&oacute;a sẽ được tập kết về kho ở Quảng Ch&acirc;u hoặc Đ&ocirc;ng Hưng, rồi từ c&aacute;c kho n&agrave;y chuyển về Việt Nam. ordergiatot.vn chịu tr&aacute;ch nhiệm khai quan h&agrave;ng h&oacute;a tại cửa khẩu.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"trung quoc 12\" src=\"https://lamphongchina.com/wp-content/uploads/2015/12/trung-quoc-12.jpg\" style=\"height:400px; width:600px\" /></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Đối với h&igrave;nh thức thương mại điện tử, kh&aacute;ch h&agrave;ng chỉ cần cung cấp link sản phẩm tr&ecirc;n c&aacute;c trang Taobao, 1688, Alibaba, Tmall v&agrave; gửi về cho bộ phận giao dịch vi&ecirc;n của ordergiatot.vn.&nbsp;Sau khi t&igrave;m được đ&uacute;ng sản phẩm cần mua, ordergiatot.vn sẽ check h&agrave;ng v&agrave; b&aacute;o gi&aacute;. Kh&aacute;ch h&agrave;ng đồng &yacute; th&igrave; tiến h&agrave;nh l&agrave;m bi&ecirc;n lai giao nhận. Kh&aacute;ch h&agrave;ng thanh to&aacute;n 70 -100% gi&aacute; trị đơn h&agrave;ng t&ugrave;y thuộc v&agrave;o loại h&agrave;ng. Kh&aacute;ch h&agrave;ng th&ocirc;ng b&aacute;o địa điểm nhận h&agrave;ng. Khi h&agrave;ng về Việt Nam, ordergiatot.vn sẽ th&ocirc;ng b&aacute;o để kh&aacute;ch h&agrave;ng đến nhận v&agrave; thanh to&aacute;n to&aacute;n hết số tiền c&ograve;n lại.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">H&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i để sở hữu những l&ocirc; h&agrave;ng h&agrave;ng Trung Quốc đẹp nhất, chất lượng nhất với gi&aacute; th&agrave;nh hợp l&yacute; nhất.</span></p>\r\n', 'dich-vu-dat-hang-trung-quoc', 'vi', NULL, NULL, 1535016870, 2, NULL, NULL, '', '', '', '', 4, 1, 0, 0),
(24, 'Dịch vụ ship hàng Trung Quốc', '<p>Nền kinh tế thị trường tạo ra cơ hội mua sắm rất lớn cho kh&aacute;ch h&agrave;ng trong nước, đặc biệt l&agrave; h&agrave;ng nhập ngoại. Hiện nay Trung Quốc đang chiếm một số lượng lớn h&agrave;ng nhập ngoại của Việt Nam. H&agrave;ng Trung Quốc c&oacute; mức gi&aacute; rẻ, đa dạng về mẫu m&atilde; chất lượng, nguồn h&agrave;ng lu&ocirc;n dồi d&agrave;o. Ở Việt Nam, đ&atilde; c&oacute; một bộ phận kh&ocirc;ng nhỏ những c&aacute; nh&acirc;n gi&agrave;u l&ecirc;n tr&ocirc;ng thấy từ việc bu&ocirc;n b&aacute;n h&agrave;ng Trung Quốc. Tuy nhi&ecirc;n c&aacute;i thiếu hiện nay l&agrave; một dịch vụ ship h&agrave;ng hiện đại để h&agrave;ng từ Trung Quốc c&oacute; thể nhanh ch&oacute;ng đến được tay người ti&ecirc;u d&ugrave;ng hơn.&nbsp;</p>\r\n', NULL, 'upload/img/news/dv21.jpg', '<h3 style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Nhu cầu ship h&agrave;ng từ Trung Quốc về Việt Nam</strong></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Kể từ khi b&igrave;nh thường h&oacute;a quan hệ với Trung Quốc v&agrave;o cuối những năm 80, việc bu&ocirc;n b&aacute;n giữa Việt Nam v&agrave;&nbsp;Trung Quốc ng&agrave;y c&agrave;ng đi v&agrave;o chiều s&acirc;u. Đặc biệt, khi k&iacute; kết c&aacute;c hiệp định thương mại quan trọng v&agrave;o năm 2005, quan hệ n&agrave;y ng&agrave;y c&agrave;ng th&ecirc;m phần củng cố. B&ecirc;n cạnh những hạn chế đ&atilde; được truyền th&ocirc;ng đề cập th&igrave; r&otilde; r&agrave;ng ch&uacute;ng ta kh&ocirc;ng thể kh&ocirc;ng thừa nhận rằng thị trường Trung Quốc l&agrave; một thị trường quan trọng của Việt Nam nhất l&agrave; việc nhập khẩu.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><a href=\"https://lamphongchina.com/wp-content/uploads/2015/11/cho-quang-chau1.jpg\"><img alt=\"cho quang chau\" src=\"https://lamphongchina.com/wp-content/uploads/2015/11/cho-quang-chau1.jpg\" style=\"height:406px; width:600px\" /></a></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">H&agrave;ng Trung Quốc c&oacute; ưu điểm l&agrave; gi&aacute; rẻ, nhiều chủng loại, mẫu m&atilde; v&agrave; lu&ocirc;n dồi d&agrave;o, do đ&oacute; c&oacute; thể đảm bảo cung ứng bất k&igrave; khi kh&aacute;ch h&agrave;ng c&oacute; y&ecirc;u cầu. Đ&acirc;y l&agrave; điều m&agrave; kh&ocirc;ng phải h&agrave;ng h&oacute;a của nước n&agrave;o cũng đ&aacute;p ứng được. Hơn nữa, Việt Nam v&agrave; Trung Quốc c&oacute; vị tr&iacute; gần kề, c&oacute; hệ thống đường giao th&ocirc;ng thuận tiện n&ecirc;n c&oacute; thể r&uacute;t ngắn thời gian di chuyển v&agrave; giảm gi&aacute; th&agrave;nh vận tải.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Theo thống k&ecirc; từ viện kinh tế Việt Nam th&igrave; h&agrave;ng h&oacute;a Trung quốc hiện đang chiếm hơn 35% thị phần h&agrave;ng nhập ngoại. Con số n&agrave;y sẽ tăng l&ecirc;n khi số lượng c&aacute;c đại l&yacute;, c&aacute;c shop bu&ocirc;n b&aacute;n h&agrave;ng Trung Quốc ng&agrave;y c&agrave;ng gia tăng. Trước đ&acirc;y, để&nbsp;vận chuyển h&agrave;ng Trung Quốc về Việt Nam, c&aacute;c shop, c&aacute;c cửa h&agrave;ng thường tiến h&agrave;nh th&ocirc;ng qua kh&acirc;u trung gian l&agrave; c&aacute;c đầu nậu cung ứng ở c&aacute;c cửa khẩu của Lạng Sơn, L&agrave;o Cai, Quảng Ninh, Cao Bằng&hellip;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Rất nhiều trong số n&agrave;y l&agrave; h&agrave;ng lậu, kh&ocirc;ng c&oacute; nguồn gốc n&ecirc;n rất kh&oacute; khăn cho việc bu&ocirc;n b&aacute;n trong nước. Một số kh&aacute;c th&igrave; trực tiếp sang Trung Quốc mua h&agrave;ng v&agrave; thu&ecirc; c&aacute;c đầu mối vận chuyển về. Gi&aacute; th&agrave;nh của dịch vụ n&agrave;y thường kh&aacute; đắt g&acirc;y thất tho&aacute;t cho người kinh doanh. Tr&ecirc;n cơ sở nhận thức những hạn chế n&agrave;y, ordergiatot.vn&nbsp;đ&atilde; cho ra đời dịch vụ ship h&agrave;ng Trung Quốc về Việt Nam chuy&ecirc;n nghiệp với nhiều g&oacute;i tiện &iacute;ch cho kh&aacute;ch h&agrave;ng.</span></p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Dịch vụ ship h&agrave;ng từ Trung Quốc về Việt Nam gi&aacute; rẻ&nbsp;của ordergiatot.vn</strong></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">B&ecirc;n cạnh dịch vụ mua h&agrave;ng hộ tr&ecirc;n c&aacute;c web thương mại điện tử của Trung Quốc như Taobao, 1688, Alibaba, Tmall&hellip;ch&uacute;ng t&ocirc;i c&ograve;n nhận vận chuyển, ship h&agrave;ng h&oacute;a từ Trung Quốc về Việt Nam với&nbsp;mức gi&aacute; tốt nhất.&nbsp;<strong>Quy tr&igrave;nh vận chuyển h&agrave;ng h&oacute;a từ Trung Quốc về Việt Nam</strong>&nbsp;được đơn giản h&oacute;a th&ocirc;ng qua c&aacute;c bước sau đ&acirc;y.:</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Dịch vụ ship h&agrave;ng từ Trung Quốc về Việt Nam gi&aacute; rẻ của của ordergiatot.vn&nbsp;c&oacute; những ưu điểm sau đ&acirc;y:</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>+&nbsp;</strong><strong>Tiết kiệm:</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Dịch vụ của ch&uacute;ng t&ocirc;i lu&ocirc;n đảm bảo rẻ hơn so với c&aacute;c đơn vị vận kh&aacute;c.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>+</strong><strong>&nbsp;Chuy&ecirc;n nghiệp:</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Ch&uacute;ng t&ocirc;i lu&ocirc;n đảm bảo sự chuẩn x&aacute;c về thời gian l&agrave; điều tối quan trọng đối với dịch vụ chuyển h&agrave;ng.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>+</strong><strong>&nbsp;An to&agrave;n &ndash; Uy t&iacute;n:</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Ch&uacute;ng t&ocirc;i lu&ocirc;n &aacute;p dụng v&agrave; trang bị những thiết bị, c&ocirc;ng cụ vận tải hiện đại nhất để đảm bảo sự an to&agrave;n của h&agrave;ng h&oacute;a trong qu&aacute; tr&igrave;nh vận chuyển. ordergiatot.vn&nbsp;sẽ ho&agrave;n tiền 100% cho qu&yacute; kh&aacute;ch h&agrave;ng nếu xảy ra sự cố.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Với những ưu điểm n&agrave;y, sử dụng&nbsp;<strong>dịch vụ&nbsp;ship h&agrave;ng từ Trung Quốc về Việt Nam gi&aacute; rẻ</strong>&nbsp;của ordergiatot.vn&nbsp;l&agrave; lựa chọn tốt nhất d&agrave;nh cho kh&aacute;ch h&agrave;ng.</span></p>\r\n', 'dich-vu-ship-hang-trung-quoc', 'vi', NULL, NULL, 1535016789, 2, NULL, NULL, '', '', '', '', 1, 1, 0, 0),
(25, 'Dịch vụ đặt hàng Quảng Châu', '<p>Tốc độ gia tăng d&acirc;n số nhanh ch&oacute;ng đ&atilde; khiến cho nhu cầu ti&ecirc;u thụ h&agrave;ng h&oacute;a của Việt Nam ng&agrave;y c&agrave;ng gia tăng. Mỗi năm nước ta phải nhập một lượng lớn h&agrave;ng ngoại, trong đ&oacute; h&agrave;ng h&oacute;a từ Quảng Ch&acirc;u &ndash; Trung Quốc chiếm tỉ trọng nhiều nhất. Trong những năm gần đ&acirc;y, nhu cầu đặt mua h&agrave;ng từ Quảng Ch&acirc;u li&ecirc;n tục gia tăng. Thấu hiểu điều n&agrave;y, ordergiatot.vn&nbsp;đ&atilde; cho ra đời dịch vụ đặt mua h&agrave;ng từ Quảng Ch&acirc;u gi&aacute; rẻ uy t&iacute;n nhất với nhiều ch&iacute;nh s&aacute;ch ưu đ&atilde;i d&agrave;nh cho kh&aacute;ch h&agrave;ng.</p>\r\n', NULL, 'upload/img/news/dv31.jpg', '<h3 style=\"text-align:justify\"><span style=\"font-size:14px\">Dịch vụ order đặt mua h&agrave;ng từ Quảng Ch&acirc;u về Việt Nam</span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Để gi&uacute;p người kinh doanh v&agrave; người ti&ecirc;u d&ugrave;ng trong nước dễ d&agrave;ng tiếp cận được với nguồn h&agrave;ng Quảng Ch&acirc;u uy t&iacute;n, chất lượng, <strong>ordergiatot.vn</strong>&nbsp;đ&atilde; triển khai dịch vụ đặt mua h&agrave;ng từ Quảng Ch&acirc;u gi&aacute; rẻ uy t&iacute;n nhất.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Dịch vụ của ch&uacute;ng t&ocirc;i bao gồm c&aacute;c chuỗi hoạt động liền mạch như order, đặt mua hộ, thương lượng hộ, vận chuyển v&agrave; th&ocirc;ng quan&hellip;để gi&uacute;p kh&aacute;ch h&agrave;ng sở hữu được những l&ocirc; h&agrave;ng Quảng Ch&acirc;u với chất lượng cao nhất, gi&aacute; th&agrave;nh rẻ nhất. Dịch vụ đặt mua h&agrave;ng từ Quảng Ch&acirc;u gi&aacute; rẻ uy t&iacute;n nhất của ch&uacute;ng t&ocirc;i đ&atilde; trở th&agrave;nh k&ecirc;nh đặt h&agrave;ng uy t&iacute;n cho c&aacute;c c&ocirc;ng ty, tổ chức, c&aacute; nh&acirc;n trong nước với tần suất li&ecirc;n tục. Quy tr&igrave;nh đặt mua c&oacute; thể tiến h&agrave;nh cho cả phương thức mua b&aacute;n truyền thống v&agrave; h&igrave;nh thức thương mại điện tử.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Với h&igrave;nh mua b&aacute;n tại chợ, kh&aacute;ch h&agrave;ng li&ecirc;n hệ với nh&acirc;n vi&ecirc;n của ordergiatot.vn tại Việt Nam v&agrave; cung cấp th&ocirc;ng tin h&agrave;ng h&oacute;a, số lượng, địa điểm lấy h&agrave;ng. <strong>ordergiatot.vn</strong> sẽ chesk h&agrave;ng b&aacute;o gi&aacute; v&agrave; l&agrave;m hợp đồng cho kh&aacute;ch. H&agrave;ng h&oacute;a sẽ được tập kết về kho ở Quảng Ch&acirc;u rồi từ c&aacute;c kho n&agrave;y chuyển về kho tại Việt Nam.&nbsp;ordergiatot.vn&nbsp;chịu tr&aacute;ch nhiệm khai quan h&agrave;ng h&oacute;a tại cửa khẩu. Kh&aacute;ch h&agrave;ng nhận h&agrave;ng tại kho của <strong>ordergiatot.vn</strong> hoặc y&ecirc;u cầu giao h&agrave;ng tận nh&agrave; t&ugrave;y theo mục đ&iacute;ch.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><a href=\"https://lamphongchina.com/wp-content/uploads/2015/12/dt-41.jpg\"><img alt=\"dt 4\" src=\"https://lamphongchina.com/wp-content/uploads/2015/12/dt-41.jpg\" style=\"height:482px; width:600px\" /></a></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Với h&igrave;nh thức order đặt&nbsp;mua h&agrave;ng Quảng Ch&acirc;u online, kh&aacute;ch h&agrave;ng chỉ cần cung cấp link h&agrave;ng h&oacute;a tr&ecirc;n c&aacute;c web Taobao, 1688, Alibaba, Tmall v&agrave; gửi về cho bộ phận giao dịch vi&ecirc;n của <strong>ordergiatot.vn</strong>. Sau khi t&igrave;m được đ&uacute;ng sản phẩm cần mua, kh&aacute;ch h&agrave;ng b&aacute;o số lượng, h&igrave;nh thức vận chuyển, địa điểm nhận h&agrave;ng để nh&acirc;n vi&ecirc;n của <strong>ordergiatot.vn</strong> chek h&agrave;ng v&agrave; b&aacute;o gi&aacute;. Kh&aacute;ch h&agrave;ng đồng &yacute; th&igrave; tiến h&agrave;nh l&agrave;m hợp đồng. Kh&aacute;ch h&agrave;ng thanh to&aacute;n 70 -100% gi&aacute; trị đơn h&agrave;ng t&ugrave;y thuộc v&agrave;o loại h&agrave;ng. Khi h&agrave;ng về Việt Nam, ordergiatot.vn sẽ th&ocirc;ng b&aacute;o để kh&aacute;ch h&agrave;ng đến nhận v&agrave; thanh to&aacute;n to&aacute;n hết số tiền c&ograve;n lại.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Ch&uacute;ng t&ocirc;i lu&ocirc;n đảm bảo ti&ecirc;u ch&iacute; nhanh ch&oacute;ng &ndash; ch&iacute;nh x&aacute;c &ndash; an to&agrave;n &ndash; gi&aacute; rẻ cho kh&aacute;ch h&agrave;ng khi sử dụng dịch vụ, ch&iacute;nh v&igrave; thế c&oacute; thể n&oacute;i&nbsp;<strong>dịch vụ đặt mua h&agrave;ng từ Quảng Ch&acirc;u gi&aacute; rẻ uy t&iacute;n nhất</strong>&nbsp;của ordergiatot.vn ch&iacute;nh l&agrave; lựa chọn ho&agrave;n hảo d&agrave;nh cho kh&aacute;ch h&agrave;ng.</span></p>\r\n', 'dich-vu-dat-hang-quang-chau', 'vi', NULL, NULL, 1535016724, 2, NULL, NULL, '', '', '', '', 3, 1, 0, 0),
(26, 'Dịch vụ mua hàng Aliexpress', '<p>Aliexpress.com&nbsp;hiện đang đứng vị tr&iacute; số một trong lĩnh vực thương mại điện tử tại Trung Quốc. Khi nhắc đến Aliexpress.com, ch&uacute;ng ta kh&ocirc;ng thể kh&ocirc;ng nhắc đến trang web Aliexpress.com. Để gi&uacute;p kh&aacute;ch h&agrave;ng tại Việt Nam c&oacute; thể tiếp cận được với nguồn h&agrave;ng tr&ecirc;n Aliexpress.com, <em>ordergiatot.vn</em>&nbsp;đ&atilde; cho ra đời dịch vụ Nhận đặt mua h&agrave;ng từ tr&ecirc;n Aliexpress.com ở tại Việt Nam với nhiều ưu đ&atilde;i d&agrave;nh cho kh&aacute;ch h&agrave;ng.</p>\r\n', NULL, 'upload/img/news/dv41.jpg', '<h3 style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>ordergiatot.vn nhận đặt mua h&agrave;ng từ tr&ecirc;n Aliexpress.com ở tại Việt Nam</strong></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Bạn đang cần nhập h&agrave;ng tr&ecirc;n Aliexpress.com về Việt Nam? Bạn kh&ocirc;ng c&oacute; kinh nghiệm đặt mua v&agrave; lựa chọn nh&agrave; ph&acirc;n phối tuy t&iacute;n tại Aliexpress.com? Bạn kh&ocirc;ng biết tiếng Trung n&ecirc;n kh&ocirc;ng thể chọn h&agrave;ng? Bạn kh&ocirc;ng c&oacute; địa chỉ nhận h&agrave;ng tại Trung Quốc n&ecirc;n kh&ocirc;ng thể ship h&agrave;ng về nước? H&atilde;y li&ecirc;n hệ với&nbsp;<strong>ordergiatot.vn</strong>&nbsp;để được sử dụng dịch vụ<strong>&nbsp;chuy&ecirc;n nhận đặt mua h&agrave;ng từ tr&ecirc;n Alibaba ở tại Việt Nam&nbsp;</strong>với nhiều ưu đ&atilde;i hấp dẫn.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"ali 3\" src=\"https://lamphongchina.com/wp-content/uploads/2016/03/ali-3.png\" style=\"height:412px; width:600px\" /></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Với kinh nghiệm nhiều năm trong lĩnh vực nhập h&agrave;ng từ tr&ecirc;n Aliexpress.com về Việt Nam,&nbsp;<strong>ordergiatot.vn</strong>tự tin mang đến cho kh&aacute;ch h&agrave;ng sự h&agrave;i l&ograve;ng tuyệt đối với cam kết an to&agrave;n v&agrave; gi&aacute; rẻ nhất. Dịch vụ&nbsp;<strong>nhận đặt mua h&agrave;ng từ tr&ecirc;n Aliexpress.com ở tại Việt Nam</strong>&nbsp;của ch&uacute;ng t&ocirc;i bao gồm c&aacute;c c&ocirc;ng đoạn order, đặt h&agrave;ng, hỗ trợ vận chuyển th&ocirc;ng quan hải quan tạo th&agrave;nh một chuỗi dịch vụ li&ecirc;n ho&agrave;n. Kh&aacute;ch h&agrave;ng chỉ cần li&ecirc;n hệ với&nbsp;<strong>ordergiatot.vn</strong>&nbsp;v&agrave; l&agrave;m theo c&aacute;c bước sau:</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Bước 1:</strong>&nbsp;Kh&aacute;ch h&agrave;ng cung cấp đường link h&agrave;ng h&oacute;a cần mua tr&ecirc;n hệ thống c&aacute;c web b&aacute;n h&agrave;ng của Aliexpress.com cho&nbsp;<strong>ordergiatot.vn</strong><em>.&nbsp;</em>Nh&acirc;n vi&ecirc;n sẽ check h&agrave;ng v&agrave; b&aacute;o gi&aacute; cho kh&aacute;ch.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Bước 2:</strong>&nbsp;Nếu kh&aacute;ch đồng &yacute; với cước ph&iacute; của&nbsp;<strong>ordergiatot.vn</strong><em>&nbsp;</em>th&igrave; tiến h&agrave;nh l&agrave;m hợp đồng k&iacute; kết v&agrave; thanh to&aacute;n 70 &ndash; 80% gi&aacute; trị h&agrave;ng h&oacute;a c&ugrave;ng cước ph&iacute; dịch vụ.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"ali 4\" src=\"https://lamphongchina.com/wp-content/uploads/2016/03/ali-4.jpg\" style=\"height:432px; width:600px\" /></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Bước 3:</strong>&nbsp;H&agrave;ng từ tr&ecirc;n Aliexpress.com sẽ được giao tại địa chỉ của&nbsp;<strong>ordergiatot.vn</strong><em>&nbsp;</em>ở Trung Quốc<em>.&nbsp;</em>Nh&acirc;n vi&ecirc;n của&nbsp;<strong>ordergiatot.vn</strong><em>&nbsp;</em>sẽ tiến h&agrave;nh ship về nước v&agrave; th&ocirc;ng quan hải quan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Bước 4:</strong>&nbsp;Khi h&agrave;ng về đến kho tại Việt Nam, ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ kh&aacute;ch h&agrave;ng tới lấy hoặc giao h&agrave;ng trực tiếp t&ugrave;y theo lựa chọn của kh&aacute;ch. Kh&aacute;ch h&agrave;ng thanh to&aacute;n phần chi ph&iacute; c&ograve;n lại v&agrave; nhận h&agrave;ng.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Với phương ch&acirc;m Nhanh Ch&oacute;ng &ndash; Tiết Kiệm &ndash; An to&agrave;n &ndash; Uy T&iacute;n, ch&uacute;ng t&ocirc;i mong muốn đem đến một dịch vụ đặt h&agrave;ng tốt nhất d&agrave;nh cho kh&aacute;ch h&agrave;ng. H&atilde;y li&ecirc;n hệ với&nbsp;<strong>ordergiatot.vn&nbsp;</strong>để được sử dụng dịch vụ<strong>&nbsp;chuy&ecirc;n nhận đặt mua h&agrave;ng từ tr&ecirc;n Aliexpress&nbsp;ở tại Việt Nam&nbsp;</strong>với nhiều ưu đ&atilde;i hấp dẫn.</span></p>\r\n', 'dich-vu-mua-hang-aliexpress', 'vi', NULL, NULL, 1535016469, 2, NULL, NULL, '', '', '', '', 2, 1, 0, 0),
(27, 'Dịch vụ mua hàng Alibaba', '<p>Alibaba hiện l&agrave; &ldquo;người khổng lồ&rdquo; trong lĩnh vực thương mại điện tử tại Trung Quốc n&oacute;i ri&ecirc;ng v&agrave; khu vực Ch&acirc;u &Aacute; n&oacute;i chung. Hệ thống thương mại điện tử n&agrave;y bao gồm nhiều c&aacute;c web th&agrave;nh vi&ecirc;n với số lượng h&agrave;ng h&oacute;a cực lớn. Để gi&uacute;p kh&aacute;ch h&agrave;ng tại Việt Nam c&oacute; thể tiếp cận được với nguồn h&agrave;ng tr&ecirc;n Alibaba, <em>ordergiatot.vn</em>&nbsp;đ&atilde; cho ra đời dịch vụ&nbsp;<strong>chuy&ecirc;n nhận đặt mua h&agrave;ng từ tr&ecirc;n Alibaba ở tại Việt Nam&nbsp;</strong>với nhiều ưu điểm vượt trội.</p>\r\n', NULL, 'upload/img/news/dv51.png', '<h3 style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>ordergiatot.vn chuy&ecirc;n nhận đặt mua h&agrave;ng từ tr&ecirc;n Alibaba ở tại Việt Nam</strong></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Bạn đang cần nhập h&agrave;ng tr&ecirc;n c&aacute;c web của alibaba về Việt Nam? Bạn kh&ocirc;ng c&oacute; kinh nghiệm đặt mua v&agrave; lựa chọn nh&agrave; ph&acirc;n phối tuy t&iacute;n tr&ecirc;n alibaba? Bạn kh&ocirc;ng biết tiếng Trung n&ecirc;n kh&ocirc;ng thể chọn h&agrave;ng? Bạn kh&ocirc;ng c&oacute; địa chỉ nhận h&agrave;ng tại Trung Quốc? Bạn kh&ocirc;ng thể ship h&agrave;ng về Việt Nam? Bạn đang muốn t&igrave;m một c&ocirc;ng ty đặt mua hộ c&oacute; uy t&iacute;n tại Việt Nam? Những vấn đề n&agrave;y sẽ kh&ocirc;ng c&ograve;n l&agrave; trở ngại khi đến với dịch vụ<strong>&nbsp;chuy&ecirc;n nhận đặt mua h&agrave;ng từ tr&ecirc;n Alibaba ở tại Việt Nam&nbsp;</strong>của c&ocirc;ng ty&nbsp;<strong>ordergiatot.vn</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"1123\" src=\"https://lamphongchina.com/wp-content/uploads/2016/03/1123.jpg\" style=\"height:343px; width:600px\" /></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Với kinh nghiệm nhiều năm trong lĩnh vực nhập h&agrave;ng từ tr&ecirc;n Alibaba về Việt Nam,&nbsp;<strong>ordergiatot.vn</strong>&nbsp;tự tin mang đến cho kh&aacute;ch h&agrave;ng sự h&agrave;i l&ograve;ng tuyệt đối với cam kết an to&agrave;n v&agrave; gi&aacute; rẻ nhất. Dịch vụ&nbsp;<strong>chuy&ecirc;n nhận đặt mua h&agrave;ng từ tr&ecirc;n Alibaba ở tại Việt Nam</strong>&nbsp;của ch&uacute;ng t&ocirc;i bao gồm c&aacute;c c&ocirc;ng đoạn order, đặt h&agrave;ng, hỗ trợ vận chuyển th&ocirc;ng quan hải quan. Mục đ&iacute;ch cuối c&ugrave;ng l&agrave; gi&uacute;p kh&aacute;ch h&agrave;ng sở hữu được những m&oacute;n h&agrave;ng tr&ecirc;n alibaba trong thời gian nhanh nhất, h&agrave;ng h&oacute;a được đảm bảo an to&agrave;n nhất v&agrave; chi ph&iacute; thấp nhất. Kh&aacute;ch h&agrave;ng chỉ cần li&ecirc;n hệ với&nbsp;<strong>ordergiatot.vn</strong>&nbsp;v&agrave; l&agrave;m theo c&aacute;c bước sau:</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Bước 1:</strong>&nbsp;Kh&aacute;ch h&agrave;ng cung cấp đường link h&agrave;ng h&oacute;a cần mua tr&ecirc;n hệ thống c&aacute;c web b&aacute;n h&agrave;ng của alibaba cho&nbsp;<strong>ordergiatot.vn</strong><em>.&nbsp;</em>Nh&acirc;n vi&ecirc;n sẽ check h&agrave;ng v&agrave; b&aacute;o gi&aacute; cho kh&aacute;ch.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Bước 2:</strong>&nbsp;Nếu kh&aacute;ch đồng &yacute; với cước ph&iacute; của&nbsp;<strong>ordergiatot.vn</strong><em>&nbsp;</em>th&igrave; tiến h&agrave;nh l&agrave;m hợp đồng k&iacute; kết v&agrave; thanh to&aacute;n 70 &ndash; 80% gi&aacute; trị h&agrave;ng h&oacute;a c&ugrave;ng cước ph&iacute; dịch vụ.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><a href=\"https://lamphongchina.com/wp-content/uploads/2016/03/mua-hang-taobao-1.jpg\" rel=\"attachment wp-att-78101\"><img alt=\"mua hang taobao\" src=\"https://lamphongchina.com/wp-content/uploads/2016/03/mua-hang-taobao-1.jpg\" style=\"height:221px; width:600px\" /></a></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Bước 3:</strong>&nbsp;H&agrave;ng từ tr&ecirc;n alibaba sẽ được giao tại địa chỉ của&nbsp;<strong>ordergiatot.vn</strong><em>&nbsp;</em>ở Trung Quốc<em>.&nbsp;</em>Nh&acirc;n vi&ecirc;n của&nbsp;<strong>ordergiatot.vn</strong><em>&nbsp;</em>sẽ tiến h&agrave;nh ship về nước v&agrave; th&ocirc;ng quan hải quan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Bước 4:</strong>&nbsp;Khi h&agrave;ng về đến kho tại Việt Nam, ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ kh&aacute;ch h&agrave;ng tới lấy hoặc giao h&agrave;ng trực tiếp t&ugrave;y theo lựa chọn của kh&aacute;ch. Kh&aacute;ch h&agrave;ng thanh to&aacute;n phần chi ph&iacute; c&ograve;n lại v&agrave; nhận h&agrave;ng.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Với dịch phương ch&acirc;m Nhanh Ch&oacute;ng &ndash; Tiết Kiệm &ndash; An to&agrave;n &ndash; Uy T&iacute;n, ch&uacute;ng t&ocirc;i mong muốn đem đến một dịch vụ đặt h&agrave;ng tốt nhất d&agrave;nh cho kh&aacute;ch h&agrave;ng. Với dịch vụ của ch&uacute;ng t&ocirc;i, việc sở hữu h&agrave;ng tr&ecirc;n alibaba kh&ocirc;ng c&ograve;n l&agrave; một trở ngại đối với kh&aacute;ch h&agrave;ng nữa. C&oacute; thể n&oacute;i, dịch vụ&nbsp;c<strong>huy&ecirc;n nhận đặt mua h&agrave;ng từ tr&ecirc;n Alibaba ở tại Việt Nam</strong>&nbsp;của&nbsp;<strong>ordergiatot.vn</strong>&nbsp;l&agrave; lựa chọn tốt nhất d&agrave;nh cho kh&aacute;ch h&agrave;ng.</span></p>\r\n', 'dich-vu-mua-hang-alibaba', 'vi', NULL, NULL, 1535016434, 2, NULL, NULL, '', '', '', '', 4, 1, 0, 0),
(28, 'Dịch vụ mua hàng Taobao', '<p>Hiện nay nhu cầu đặt mua h&agrave;ng tr&ecirc;n taobao của kh&aacute;ch h&agrave;ng tại Việt Nam rất cao. Tuy nhi&ecirc;n việc đặt mua tr&ecirc;n taobao c&oacute; nhiều cản trở li&ecirc;n quan đến ngoại ngữ v&agrave; quy tr&igrave;nh. Để gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng tiếp cận hơn với nguồn h&agrave;ng n&agrave;y, <em>ordergiatot.vn</em>&nbsp;đ&atilde; cho ra đời&nbsp;<strong>dịch vụ đặt mua h&agrave;ng ở tr&ecirc;n Taobao uy t&iacute;n gi&aacute; rẻ</strong>&nbsp;với những cam kết tốt nhất d&agrave;nh cho kh&aacute;ch h&agrave;ng.</p>\r\n', NULL, 'upload/img/news/dv61.jpg', '<h3 style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Dịch vụ đặt mua h&agrave;ng ở tr&ecirc;n Taobao uy t&iacute;n gi&aacute; rẻ của <em>ordergiatot.vn</em></strong></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Order h&agrave;ng taobao&nbsp;l&agrave; dịch vụ kh&aacute; phổ biến ở Việt Nam hiện nay. Dịch vụ n&agrave;y ra đời nhằm đ&aacute;p ứng nhu cầu mua h&agrave;ng tr&ecirc;n taobao ng&agrave;y c&agrave;ng tăng của người Việt. Đ&acirc;y l&agrave; dịch vụ của c&aacute;c c&ocirc;ng ty mua v&agrave; ship h&agrave;ng hộ tr&ecirc;n website taobao.com cho kh&aacute;ch h&agrave;ng tại Việt Nam th&ocirc;ng qua mạng Internet v&agrave; hệ thống thanh to&aacute;n an to&agrave;n qua alipay.com trong mọi giao dịch tr&ecirc;n hệ thống website. Dịch vụ n&agrave;y c&ograve;n k&egrave;m theo c&aacute;c chức năng hỗ trợ vận chuyển h&agrave;ng h&oacute;a từ Trung Quốc về Việt Nam cho người nhận tại Việt Nam nhanh nhất, an to&agrave;n nhất v&agrave; giảm chi ph&iacute; cho mọi đơn h&agrave;ng Order tr&ecirc;n taobao.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><a href=\"https://lamphongchina.com/wp-content/uploads/2016/03/taobao-6.jpg\" rel=\"attachment wp-att-78060\"><img alt=\"taobao 6\" src=\"https://lamphongchina.com/wp-content/uploads/2016/03/taobao-6.jpg\" style=\"height:267px; width:600px\" /></a></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Hiện nay, dịch vụ đặt mua h&agrave;ng ở tr&ecirc;n Taobao uy t&iacute;n gi&aacute; rẻ của <strong><em>ordergiatot.vn</em></strong> đang được người ti&ecirc;u d&ugrave;ng trong nước đ&aacute;nh gi&aacute; cao bởi cung c&aacute;ch chuy&ecirc;n nghiệp, thời gian chuyển h&agrave;ng nhanh ch&oacute;ng v&agrave; chi ph&iacute; đặt mua thấp. Bạn đang cần mua h&agrave;ng tr&ecirc;n taobao nhưng kh&ocirc;ng r&agrave;nh về tiếng Trung? Bạn kh&ocirc;ng c&oacute; kinh nghiệm đặt mua h&agrave;ng tr&ecirc;n taobao? Bạn kh&ocirc;ng c&oacute; địa chỉ nhận h&agrave;ng tại Trung Quốc? Bạn kh&ocirc;ng c&oacute; người ship h&agrave;ng về nước? H&atilde;y đến với&nbsp;<strong>dịch vụ đặt mua h&agrave;ng ở tr&ecirc;n Taobao uy t&iacute;n gi&aacute; rẻ&nbsp;</strong>của <strong><em>ordergiatot.vn</em></strong>, những vấn đề tr&ecirc;n sẽ được đ&aacute;p ứng.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"taobao 7\" src=\"https://lamphongchina.com/wp-content/uploads/2016/03/taobao-7.jpg\" style=\"height:337px; width:600px\" /></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Với kinh nghiệm nhiều năm trong lĩnh vực đặt mua h&agrave;ng taobao về Việt Nam, ch&uacute;ng t&ocirc;i c&oacute; thể x&aacute;c định được c&aacute;c đơn vị b&aacute;n h&agrave;ng uy t&iacute;n, chất lượng nhất tr&ecirc;n taobao. Với đội ngũ nh&acirc;n vi&ecirc;n th&agrave;nh thục hoa ngữ, ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn đặt mua th&agrave;nh c&ocirc;ng những m&oacute;n đồ tr&ecirc;n taobao nhanh nhất. Kh&aacute;ch h&agrave;ng chỉ cần li&ecirc;n hệ với&nbsp;<strong><em>ordergiatot.vn</em></strong><em>&nbsp;</em>v&agrave; l&agrave;m theo c&aacute;c bước sau:</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Bước 1:</strong>&nbsp;Kh&aacute;ch h&agrave;ng cung cấp đường link h&agrave;ng h&oacute;a cần mua tr&ecirc;n taobao.com cho&nbsp;<strong><em>ordergiatot.vn</em></strong><em>.&nbsp;</em>Nh&acirc;n vi&ecirc;n của ch&uacute;ng t&ocirc;i sẽ đảm tr&aacute;ch việc order v&agrave; b&aacute;o gi&aacute; cho kh&aacute;ch.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Bước 2:</strong>&nbsp;Nếu kh&aacute;ch đồng &yacute; với cước ph&iacute; của&nbsp;<strong><em>ordergiatot.vn</em></strong>&nbsp;th&igrave; tiến h&agrave;nh l&agrave;m hợp đồng k&iacute; kết v&agrave; thanh to&aacute;n 70 &ndash; 100% gi&aacute; trị h&agrave;ng h&oacute;a.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"taobao 8\" src=\"https://lamphongchina.com/wp-content/uploads/2016/03/taobao-8.jpg\" style=\"height:626px; width:600px\" /></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Bước 3:</strong>&nbsp;H&agrave;ng từ tr&ecirc;n taobao sẽ được giao tại địa chỉ của&nbsp;<strong><em>ordergiatot.vn</em></strong><em>&nbsp;</em>ở Trung Quốc<em>.&nbsp;</em>Nh&acirc;n vi&ecirc;n của&nbsp;<strong><em>ordergiatot.vn</em></strong><em>&nbsp;</em>&nbsp;sẽ tiến h&agrave;nh ship về H&agrave; Nội v&agrave; th&ocirc;ng quan hải quan.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Bước 4:</strong>&nbsp;Khi h&agrave;ng về đến kho tại H&agrave; Nội v&agrave; Th&agrave;nh Phố Hồ Ch&iacute; Minh, ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ kh&aacute;ch h&agrave;ng tới lấy hoặc giao h&agrave;ng trực tiếp t&ugrave;y theo lựa chọn của kh&aacute;ch. Kh&aacute;ch h&agrave;ng thanh to&aacute;n phần chi ph&iacute; c&ograve;n lại v&agrave; nhận h&agrave;ng.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Với sự chuy&ecirc;n nghiệp của đội ngũ nh&acirc;n vi&ecirc;n c&ugrave;ng kinh nghiệm mua h&agrave;ng tại taobao, ch&uacute;ng t&ocirc;i sẽ cố gắng l&agrave;m h&agrave;i l&ograve;ng ngay cả những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất. Ch&iacute;nh v&igrave; thế, sử dụng dịch vụ&nbsp;<strong>dịch vụ đặt mua h&agrave;ng ở tr&ecirc;n Taobao uy t&iacute;n gi&aacute; rẻ&nbsp;</strong>của<strong><em>ordergiatot.vn</em></strong> l&agrave; lựa chọn tốt nhất d&agrave;nh cho kh&aacute;ch h&agrave;ng.</span></p>\r\n', 'dich-vu-mua-hang-taobao', 'vi', NULL, NULL, 1535016303, 2, NULL, NULL, '', '', '', '', 5, 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_category`
--

CREATE TABLE `news_category` (
  `id` int(11) NOT NULL,
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
  `button_view_right` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_category`
--

INSERT INTO `news_category` (`id`, `name`, `alias`, `description`, `image`, `parent_id`, `home`, `focus`, `hot`, `coupon`, `time_update`, `time_start`, `sort`, `lang`, `title_seo`, `keyword`, `description_seo`, `button_view_left`, `button_view_right`) VALUES
(1, 'tin tức', 'tin-tuc', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'vi', '', NULL, '', 0, 0),
(2, 'Dịch vụ', 'dich-vu', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'vi', '', NULL, '', 0, 0),
(3, '6 lý do chọn chúng tôi', '6-ly-do-chon-chung-toi', '', 'upload/img/category/trai.png', 0, NULL, NULL, 1, NULL, NULL, NULL, 3, 'vi', '', NULL, '', 0, 0),
(4, 'Quy trình mua hàng hóa', 'quy-trinh-mua-hang-hoa', '', NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, 4, 'vi', '', NULL, '', 0, 0),
(6, 'Quy trình đặt, vận chuyển hàng hóa', 'quy-trinh-dat-van-chuyen-hang-hoa', '', NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, 6, 'vi', '', NULL, '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_to_category`
--

CREATE TABLE `news_to_category` (
  `id` int(11) NOT NULL,
  `id_news` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_to_category`
--

INSERT INTO `news_to_category` (`id`, `id_news`, `id_category`) VALUES
(13, 1, 1),
(12, 2, 1),
(18, 3, 1),
(10, 4, 1),
(16, 5, 1),
(14, 6, 1),
(15, 6, 2),
(17, 5, 2),
(19, 3, 2),
(82, 7, 3),
(21, 8, 3),
(23, 9, 3),
(27, 10, 3),
(25, 11, 3),
(81, 12, 3),
(42, 13, 4),
(41, 14, 4),
(31, 15, 4),
(32, 16, 4),
(33, 17, 4),
(34, 18, 6),
(35, 19, 6),
(36, 20, 6),
(40, 21, 6),
(39, 22, 6),
(79, 23, 2),
(75, 25, 2),
(77, 24, 2),
(73, 26, 2),
(71, 27, 2),
(70, 28, 2),
(76, 24, 1),
(78, 23, 1),
(72, 26, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` text CHARACTER SET utf8,
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `note` text CHARACTER SET utf8,
  `time` int(11) DEFAULT NULL,
  `show` tinyint(1) DEFAULT '0',
  `fee` float DEFAULT '10',
  `rate` float DEFAULT NULL,
  `admin_note` text CHARACTER SET utf8,
  `weight_rate` float DEFAULT NULL,
  `user_id` decimal(21,0) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `view` tinyint(1) DEFAULT '1',
  `mobile` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `fax` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `total_bill` float DEFAULT NULL,
  `payted` float DEFAULT NULL,
  `total_item` int(11) DEFAULT NULL,
  `price_ship` int(11) DEFAULT NULL,
  `ma_kho` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_admin` int(11) DEFAULT NULL,
  `id_buyer` int(11) DEFAULT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `code`, `fullname`, `address`, `phone`, `email`, `note`, `time`, `show`, `fee`, `rate`, `admin_note`, `weight_rate`, `user_id`, `status`, `view`, `mobile`, `fax`, `home`, `total_price`, `total_bill`, `payted`, `total_item`, `price_ship`, `ma_kho`, `user_admin`, `id_buyer`, `id_admin`) VALUES
(80, 'DH80', 'nguyendai dinh', '100 Le Trọng Tấn - Nam Từ Liêm - Hà Nội', '0986839102', 'daibbr@gmail.com', 'ok men', 1535702470, 0, 4, 3480, NULL, 20000, '646', 1, 1, NULL, NULL, NULL, 2450200, 2450200, NULL, 13, NULL, '1', NULL, 648, 0),
(79, 'DH79', 'nguyendai dinh', '100 Le Trọng Tấn - Nam Từ Liêm - Hà Nội', '0986839102', 'daibbr@gmail.com', 'ok', 1535696590, 0, 2, 3480, NULL, 20000, '646', 7, 1, NULL, NULL, NULL, 4305660, 8748680, 3013960, 18, NULL, '1', NULL, 648, 0),
(82, 'DH82', 'linhnhi', '11 hoang hoa tham', '0123456789', 'linhnhi@gmaIL.COM', 'dat hang cho e', 1536118740, 0, 4, 3480, NULL, 20000, '658', 4, 1, NULL, NULL, NULL, 2716930, 3324770, 3324770, 15, NULL, '1', NULL, 648, 2),
(81, 'DH81', 'nguyendai dinh', '100 Le Trọng Tấn - Nam Từ Liêm - Hà Nội', '0986839102', 'daibbr@gmail.com', 'cocacoa', 1535703557, 0, 4, 3480, NULL, 15000, '646', 5, 1, NULL, NULL, NULL, 83241.6, 114122, NULL, 1, NULL, '1', NULL, 648, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `order_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `item_size` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `item_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seller_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seller_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(50) DEFAULT NULL,
  `qty_buy` int(11) DEFAULT NULL,
  `price` float(10,1) DEFAULT NULL,
  `price_sale` float(10,1) DEFAULT NULL,
  `comment` text CHARACTER SET utf8,
  `currency` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ct` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `admin_note` text CHARACTER SET utf8,
  `khieunai` int(11) NOT NULL,
  `comment_khieunai` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tracking_id` int(11) DEFAULT NULL,
  `weight` float(11,1) NOT NULL,
  `note` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `item_id`, `item_name`, `item_size`, `item_image`, `item_link`, `seller_name`, `seller_id`, `quantity`, `qty_buy`, `price`, `price_sale`, `comment`, `currency`, `ct`, `type`, `admin_note`, `khieunai`, `comment_khieunai`, `tracking_id`, `weight`, `note`) VALUES
(148, '79', '5751536552', '春秋季长袖开衫睡衣男女士家居服套装学生纯棉睡衣情侣家居服格子', 'L', 'https://cbu01.alicdn.com/img/ibank/2018/212/465/9230564212_703794743.400x400.jpg', 'https://detail.1688.com/offer/575153655263.html?spm=a260k.635/general.201611281604.7.6633436cr387hb', '东莞市二人前贸易有限公司', '3358485477', 16, 16, 70.0, NULL, '', 'CNY', NULL, 'web1688', NULL, 0, '', NULL, 0.0, NULL),
(149, '79', '5565592584', '情侣春秋季长袖纯棉圆领条纹男女睡衣成人家居服套装二件套', 'M：女', 'https://cbu01.alicdn.com/img/ibank/2017/371/756/4507657173_703794743.400x400.jpg', 'https://detail.1688.com/offer/556559258445.html?spm=a261y.7663282.1998411376.2.45a14decrJB45w&scm=1007.19151.108963.0', '东莞市二人前贸易有限公司', '3358485477', 1, 1, 55.0, NULL, '', 'CNY', NULL, 'web1688', NULL, 0, '', NULL, 0.0, NULL),
(150, '79', '5747172569', '【29.9包邮秒杀】 新款网红上衣+休闲裤两件套', 'S', 'https://cbu01.alicdn.com/img/ibank/2018/059/078/9210870950_962402662.400x400.jpg', 'https://detail.1688.com/offer/574717256948.html?spm=a260k.635/general.201611281604.4.6633436cr387hb', '新宇服装店', '1643850934', 1, 1, 38.0, NULL, '', 'CNY', NULL, 'web1688', NULL, 0, '', NULL, 0.0, NULL),
(151, '80', '5742275105', 'OP4364韩版女童连衣裙复古立领中大童秋童裙时尚潮流童装批发', '7码（95-105CM)', 'https://cbu01.alicdn.com/img/ibank/2018/219/559/9122955912_1376630459.400x400.jpg', 'https://detail.1688.com/offer/574227510552.html?spm=a260k.635/general.201611281604.226.6633436cr387hb', '米米你官方旗舰店', '1945009891', 11, 11, 49.0, NULL, '[{\"user\":\"Admin\",\"content\":\"huuhuhjuiuiu\",\"time\":1536115990},{\"user\":\"Admin\",\"content\":\"huuhuhjuiuiu\",\"time\":1536115995},{\"user\":\"Admin\",\"content\":\"abc\",\"time\":1536116002}]', 'CNY', NULL, 'web1688', NULL, 0, '', NULL, 0.0, NULL),
(152, '80', '5742275427', 'OP4295韩版童装复古立领女童连衣裙中大童裙英伦风童裙批发秋', '7码（95-105CM)', 'https://cbu01.alicdn.com/img/ibank/2018/208/783/9145387802_1376630459.400x400.jpg', 'https://detail.1688.com/offer/574227542704.html?spm=a261y.7663282.1998411376.2.762b657bfrtd7O&scm=1007.19151.108963.0', '米米你官方旗舰店', '1945009891', 2, 2, 69.0, NULL, '[{\"user\":\"Admin\",\"content\":\"4354\",\"time\":1536115354},{\"user\":\"Admin\",\"content\":\"sfds\",\"time\":1536115359}]', 'CNY', NULL, 'web1688', NULL, 0, '', NULL, 0.0, NULL),
(153, '81', '5499159054', '彩黛妃2018秋冬新款韩版显瘦女装修身大码时尚百搭针织短袖连衣裙', 'S', 'https://cbu01.alicdn.com/img/ibank/2017/948/444/4154444849_1691735541.400x400.jpg', 'https://detail.1688.com/offer/549915905408.html?spm=a260k.635/general.201611281604.262.6633436cr387hb', '泗阳县美淘电子商务有限公司', '3216110911', 1, 1, 23.0, NULL, '[{\"user\":\"Admin\",\"content\":\"ghfhfhjb\",\"time\":1536115736},{\"user\":\"Admin\",\"content\":\"tretr\",\"time\":1536115920},{\"user\":\"khovn\",\"content\":\"gdasgd\",\"time\":1536116164},{\"user\":\"khovn\",\"content\":\"keke\",\"time\":1536116179},{\"user\":\"khovn\",\"content\":\"kkk\",\"time\":1536116195},{\"user\":\"khovn\",\"content\":\"kkk\",\"time\":1536116196},{\"user\":\"khovn\",\"content\":\"jgjjf\",\"time\":1536116572}]', 'CNY', NULL, 'web1688', NULL, 0, '', NULL, 0.0, NULL),
(154, '82', '5673044986', '电视机天线地面波数字dtmb免费高清dvb-t2家用接收器农村通用室外', ';非数字液晶/老式电视机（天线+2000X标清机）;18m', '//img.alicdn.com/imgextra/i1/1951072796/TB2ZIadj5AnBKNjSZFvXXaTKXXa_!!1951072796.jpg_430x430q90.jpg', 'https://detail.tmall.com/item.htm?spm=a230r.1.14.8.37931b15EXFTJ8&id=567304498612&cm_id=140105335569ed55e27b&abbucket=7&skuId=3896240471038', 'dlenp众合嘉信专卖', 'ab932bedc00f6f3a49be40936b1ccb8e', 1, 1, 209.0, NULL, '', 'CNY', NULL, 'tmall', NULL, 0, '', NULL, 0.0, NULL),
(155, '82', '5658310856', '地面波数字电视机顶盒dtmb信号接收器室内外家用天线全套通用免费', '', 'https://img.alicdn.com/imgextra/i1/1951072796/O1CN011WWbqiVnQguh4iC_!!1951072796.jpg_430x430q90.jpg', 'https://detail.tmall.com/item.htm?spm=a1z10.5-b.w4011-18115686351.70.313d7421aSj0te&id=565831085667&rn=c41e7e3b73572839f7726b9112731af2&abbucket=13', 'dlenp众合嘉信专卖', 'ab932bedc00f6f3a49be40936b1ccb8e', 1, 1, 99.0, NULL, 'gdfghdhfhh', 'CNY', NULL, 'tmall', NULL, 0, '', NULL, 0.0, NULL),
(156, '82', '4027183427', '[4 nạp] ab đồ lót của phụ nữ phần mỏng cotton cao eo tóm tắt phụ nữ trung niên và cũ kích thước lớn đồ lót 2822', ';L;4 lớn màu đỏ', '//img.alicdn.com/imgextra/i4/416097139/TB2oyn4mXXXXXXTXXXXXXXXXXXX_!!416097139.jpg_430x430q90.jpg', 'https://detail.tmall.com/item.htm?spm=a230r.1.14.9.608b4af9S66KS5&id=40271834270&cm_id=140105335569ed55e27b&abbucket=7&skuId=3151093639488', 'ab内衣旗舰店', '7d03caefcfae32101e06cc5db5a4ae39', 10, 10, 40.4, NULL, '[{\"user\":\"Admin\",\"content\":\"ghi ch\\u00fa ghi ch\\u00fa\",\"time\":1536288547},{\"user\":\"Admin\",\"content\":\"jgjgj\\n\",\"time\":1536311537},{\"user\":\"khovn\",\"content\":\"du hang\",\"time\":1536313156}]', 'CNY', NULL, 'tmall', NULL, 0, '', NULL, 0.0, 'hncvnvmgfmfgmg'),
(157, '82', '1089190331', 'AB vớ nữ sinh năm đỏ nữ vớ cotton trong ống thường vài vớ 5641', ';Một mã kích thước (22-25cm);Màu đỏ lớn', '//img.alicdn.com/imgextra/i1/416097139/T2whmaXbRaXXXXXXXX_!!416097139.jpg_430x430q90.jpg', 'https://detail.tmall.com/item.htm?id=10891903319&spm=a220o.1000855.1998099587.3.346950dfzyJeIV&skuId=12390133815', 'ab内衣旗舰店', '7d03caefcfae32101e06cc5db5a4ae39', 3, 3, 12.9, NULL, '', 'CNY', NULL, 'tmall', NULL, 0, '', NULL, 0.0, 'kich thuoc 22-25cm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_transaction`
--

CREATE TABLE `order_transaction` (
  `id` int(11) NOT NULL,
  `mdh` varchar(255) DEFAULT NULL,
  `tiencoc` float(22,0) DEFAULT NULL,
  `tientattoan` float(22,0) DEFAULT '0',
  `tienvanchuyen` float(22,0) DEFAULT '0',
  `tienhoantra` float(22,0) DEFAULT '0',
  `congno` float(22,0) DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `places`
--

INSERT INTO `places` (`id`, `name`, `description`, `lang`) VALUES
(3, 'Osaka', '', NULL),
(2, 'Tokyo', '', NULL),
(4, 'Kanazawa', '', NULL),
(5, 'Shirakawa-go', '', NULL),
(6, 'Nagano', '', NULL),
(7, 'Kobe', '', NULL),
(8, 'Hakuba', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
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
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `button_color1` int(11) NOT NULL,
  `config_pro` text COLLATE utf8_unicode_ci NOT NULL,
  `config_pro_content` text COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `price_imp` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `style`, `id_value`, `brand`, `name`, `code`, `alias`, `image`, `hot`, `home`, `focus`, `coupon`, `view`, `active`, `price`, `price_sale`, `description`, `description_seo`, `location`, `title_seo`, `keyword_seo`, `detail`, `note`, `like`, `order`, `category_id`, `caption_1`, `caption_2`, `locale`, `bought`, `dksudung`, `sort`, `quantity`, `counter`, `lang`, `destination`, `time`, `tags`, `pro_dir`, `multi_image`, `img_dir`, `status`, `quaranty`, `tinhtrang`, `group_attribute_id`, `color`, `size`, `user_id`, `option_id`, `button_color1`, `config_pro`, `config_pro_content`, `weight`, `price_imp`) VALUES
(20, NULL, NULL, NULL, 'Máy mài sunfulo 1', 'dsagdsagdsa', 'may-mai-sunfulo-1', 'tb1tzpyncri8kjjy0fhxxbfnpxa-0-item-pic.jpg', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '', NULL, '', '', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 'vi', NULL, 1530091642, NULL, '27062018', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, NULL, 0, '[]', '', NULL, NULL),
(21, NULL, NULL, NULL, 'Thực phẩm chức năng', '6432643', 'thuc-pham-chuc-nang', '372014325.jpg', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '', NULL, '', '', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, NULL, 'vi', NULL, 1530091636, NULL, '27062018', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, NULL, 0, '[]', '', NULL, NULL),
(22, NULL, NULL, NULL, 'Luxubu', 'Luxubu', 'luxubu', 'item-pic.jpg', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'Luxubu', '', NULL, '', '', NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, NULL, 'vi', NULL, 1530091703, NULL, '27062018', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, NULL, 0, '[]', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_brand`
--

CREATE TABLE `product_brand` (
  `id` int(11) NOT NULL,
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
  `hot` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_brand`
--

INSERT INTO `product_brand` (`id`, `parent_id`, `name`, `image`, `alias`, `description`, `women`, `men`, `focus`, `title_seo`, `description_seo`, `keyword`, `sort`, `lang`, `gender`, `view`, `home`, `hot`) VALUES
(10, NULL, 'Chanel', 'upload/img/tải_xuống_(1).png', 'chanel', '', 0, 1, 0, NULL, NULL, NULL, 1, 'vi', 1, NULL, NULL, NULL),
(11, NULL, 'puma', 'upload/img/images_(13).jpg', 'puma', '', NULL, NULL, 1, NULL, NULL, NULL, 16, 'vi', 1, NULL, NULL, NULL),
(13, NULL, 'Lanvin', 'upload/img/th17.png', 'lanvin', '', 0, 0, 0, NULL, NULL, NULL, 4, 'vi', 1, NULL, NULL, NULL),
(14, NULL, 'H&M', 'upload/img/tải_xuống_(2).png', 'hm', '', 0, 1, 0, NULL, NULL, NULL, 5, 'vi', 1, NULL, NULL, NULL),
(15, NULL, 'Nike', 'upload/img/tải_xuống_(1).jpg', 'nike', '', 0, 0, 1, NULL, NULL, NULL, 6, 'vi', 1, NULL, NULL, NULL),
(20, NULL, 'Valentino', 'upload/img/tải_xuống_(6).png', 'valentino', '', 0, 0, 0, NULL, NULL, NULL, 7, 'vi', 1, NULL, NULL, NULL),
(21, NULL, 'Zaza', 'upload/img/tải_xuống_(4).png', 'zaza', '', 0, 0, 0, NULL, NULL, NULL, 8, 'vi', 1, NULL, NULL, NULL),
(22, NULL, 'Gucci', 'upload/img/images_(4).jpg', 'gucci', '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 'vi', 1, NULL, NULL, NULL),
(23, NULL, 'Armani', 'upload/img/th4.png', 'armani', '', 0, 0, 0, NULL, NULL, NULL, 1, 'vi', 1, NULL, NULL, NULL),
(24, NULL, 'Bebe', 'upload/img/8307969_orig.jpg', 'bebe', '', 0, 0, 0, NULL, NULL, NULL, 11, 'vi', 1, NULL, NULL, NULL),
(32, NULL, 'Dior', 'upload/img/images_(14).jpg', 'dior', '', 0, 0, 0, NULL, NULL, NULL, 12, 'vi', 1, NULL, NULL, NULL),
(33, NULL, 'Mango', 'upload/img/th7.png', 'mango', '', NULL, NULL, NULL, NULL, NULL, NULL, 14, 'vi', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
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
  `banner` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL,
  `color` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `lang` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_color`
--

INSERT INTO `product_color` (`id`, `color`, `name`, `description`, `lang`, `image`, `sort`, `parent_id`) VALUES
(2, '#31859b', 'Màu xanh lam', 'màu xanh lam', 'vi', NULL, 3, NULL),
(3, '#000000', 'Màu đen', 'màu đen', 'vi', NULL, 4, NULL),
(4, '#ff0000', 'Màu đỏ', 'màu đỏ', 'vi', NULL, 5, NULL),
(5, '#7030a0', 'Màu tím', 'màu tím', 'vi', NULL, 6, NULL),
(6, '#f79646', 'Màu cam', 'màu cam', 'vi', NULL, 7, NULL),
(7, '#ffffff', 'Màu Trắng', 'màu trắng', 'vi', NULL, 8, NULL),
(8, '#d99694', 'màu hồng', '', 'vi', NULL, 9, NULL),
(9, '#7f7f7f', 'màu ghi', 'màu ghi', 'vi', NULL, 10, NULL),
(10, '#ffc000', 'màu ánh vàng', 'màu ánh vàng', 'vi', NULL, 11, NULL),
(11, '#974806', 'màu nâu', 'màu nâu', 'vi', NULL, 12, NULL),
(12, '#4f6128', 'màu xanh xám', 'màu xanh xám', 'vi', NULL, 13, NULL),
(13, '#d8d8d8', 'Màu ánh bạc', 'màu ánh bạc', 'vi', NULL, 14, NULL),
(16, '#5f497a', 'tím', '', 'vi', NULL, 15, NULL),
(17, '#fdeada', 'Màu nude', '<p>m&agrave;u nude</p>\r\n', 'vi', NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_img`
--

CREATE TABLE `product_img` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `multi_image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `img_dir` varchar(255) CHARACTER SET latin1 NOT NULL,
  `id_color` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_locale`
--

CREATE TABLE `product_locale` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(70) CHARACTER SET latin1 DEFAULT NULL,
  `sort` tinyint(1) DEFAULT NULL,
  `description` text CHARACTER SET latin1,
  `lang` char(10) CHARACTER SET latin1 DEFAULT NULL,
  `alias` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_locale`
--

INSERT INTO `product_locale` (`id`, `name`, `image`, `sort`, `description`, `lang`, `alias`, `title_seo`, `description_seo`, `keyword`, `parent_id`) VALUES
(4, 'Ấn Độ', NULL, 2, '', 'vi', 'an-do', NULL, NULL, NULL, NULL),
(5, 'Thái Lan', NULL, 3, '', 'vi', 'thai-lan', NULL, NULL, NULL, NULL),
(6, 'Đài Loan', NULL, 4, '', 'vi', 'dai-loan', NULL, NULL, NULL, NULL),
(7, 'Trung Quốc', NULL, 5, '', 'vi', 'trung-quoc', NULL, NULL, NULL, NULL),
(8, 'Anh', NULL, 6, '', 'vi', 'anh', NULL, NULL, NULL, NULL),
(9, 'Pháp', NULL, 7, '', 'vi', 'phap', NULL, NULL, NULL, NULL),
(10, 'Mỹ', NULL, 8, '', 'vi', 'my', NULL, NULL, NULL, NULL),
(11, 'Nhật', NULL, 10, '', 'vi', 'nhat', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_old`
--

CREATE TABLE `product_old` (
  `id` int(11) NOT NULL,
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
  `caption_4` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_price`
--

CREATE TABLE `product_price` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `from_price` int(11) DEFAULT NULL,
  `to_price` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `lang` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_price`
--

INSERT INTO `product_price` (`id`, `name`, `from_price`, `to_price`, `sort`, `lang`) VALUES
(1, 'Dưới 100.000 đ', 0, 100000, 1, 'vi'),
(3, '200.000 - 400.000 đ', 200000, 400000, 2, 'vi'),
(4, '400.000 - 500.000 đ', 400000, 500000, 3, 'vi'),
(5, '500.000 - 1000.000 đ', 500000, 1000000, 4, 'vi'),
(6, '1000000 - 2000000đ', 1000000, 2000000, 5, 'vi'),
(9, 'Trên 2000000đ', 2000000, 3000000, 6, 'vi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size`
--

CREATE TABLE `product_size` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sort` int(11) NOT NULL,
  `lang` varchar(100) CHARACTER SET latin1 NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_size`
--

INSERT INTO `product_size` (`id`, `name`, `size`, `sort`, `lang`, `parent_id`) VALUES
(1, 'XL', '', 15, 'vi', NULL),
(2, 'M', '', 13, 'vi', NULL),
(3, 'XS', '', 12, 'vi', NULL),
(4, 'L', '', 14, 'vi', NULL),
(5, 'S', '', 11, 'vi', NULL),
(6, 'XXL', '', 16, 'vi', NULL),
(7, '34', '', 1, 'vi', NULL),
(8, '35', '', 2, 'vi', NULL),
(9, '36', '', 3, 'vi', NULL),
(10, '37', '', 4, 'vi', NULL),
(11, '38', '', 5, 'vi', NULL),
(12, '39', '', 6, 'vi', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tag`
--

CREATE TABLE `product_tag` (
  `product_tag_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tag` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `alias` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_brand`
--

CREATE TABLE `product_to_brand` (
  `brand_id` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_category`
--

CREATE TABLE `product_to_category` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_color`
--

CREATE TABLE `product_to_color` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_color` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_to_color`
--

INSERT INTO `product_to_color` (`id`, `id_product`, `id_color`) VALUES
(67, 5, 2),
(68, 5, 3),
(69, 5, 4),
(70, 5, 5),
(71, 5, 6),
(72, 5, 7),
(75, 3, 2),
(76, 3, 3),
(82, 4, 2),
(81, 8, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_option`
--

CREATE TABLE `product_to_option` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_season`
--

CREATE TABLE `product_to_season` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_season` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_size`
--

CREATE TABLE `product_to_size` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_size` int(11) NOT NULL,
  `note` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_to_size`
--

INSERT INTO `product_to_size` (`id`, `id_product`, `id_size`, `note`) VALUES
(1, 120, 1, ''),
(5, 101, 1, ''),
(6, 100, 1, ''),
(7, 99, 1, ''),
(8, 98, 1, ''),
(9, 97, 1, ''),
(10, 96, 1, ''),
(11, 95, 1, ''),
(12, 93, 1, ''),
(13, 94, 1, ''),
(14, 16, 1, ''),
(16, 2, 1, ''),
(17, 3, 1, ''),
(19, 4, 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `lat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `lng` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `districtid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `project`
--

INSERT INTO `project` (`id`, `name`, `lat`, `lng`, `districtid`) VALUES
(1, '13B Conic Phong Phú', '10.71240234375', '106.64177703857', 1),
(2, '13D Asia Phú Mỹ', '10.705533027649', '106.64806365967', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `sort` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`id`, `name`, `code`, `price`, `sort`) VALUES
(1, 'Hồ Chí Minh', 'SG', 20000, NULL),
(2, 'Hà Nội', 'HN', 30000, NULL),
(3, 'Đà Nẵng', 'DDN', 0, NULL),
(4, 'Bình Dương', 'BD', 0, NULL),
(5, 'Đồng Nai', 'DNA', 0, NULL),
(6, 'Khánh Hòa', 'KH', 0, NULL),
(7, 'Hải Phòng', 'HP', 0, NULL),
(8, 'Long An', 'LA', 0, NULL),
(9, 'Quảng Nam', 'QNA', 0, NULL),
(10, 'Bà Rịa Vũng Tàu', 'VT', 0, NULL),
(11, 'Đắk Lắk', 'DDL', 0, NULL),
(12, 'Cần Thơ', 'CT', 0, NULL),
(13, 'Bình Thuận  ', 'BTH', 0, NULL),
(14, 'Lâm Đồng', 'LDD', 0, NULL),
(15, 'Thừa Thiên Huế', 'TTH', 0, NULL),
(16, 'Kiên Giang', 'KG', 0, NULL),
(17, 'Bắc Ninh', 'BN', 0, NULL),
(18, 'Quảng Ninh', 'QNI', 0, NULL),
(19, 'Thanh Hóa', 'TH', 0, NULL),
(20, 'Nghệ An', 'NA', 0, NULL),
(21, 'Hải Dương', 'HD', 0, NULL),
(22, 'Gia Lai', 'GL', 0, NULL),
(23, 'Bình Phước', 'BP', 0, NULL),
(24, 'Hưng Yên', 'HY', 0, NULL),
(25, 'Bình Định', 'BDD', 0, NULL),
(26, 'Tiền Giang', 'TG', 0, NULL),
(27, 'Thái Bình', 'TB', 0, NULL),
(28, 'Bắc Giang', 'BG', 0, NULL),
(29, 'Hòa Bình', 'HB', 0, NULL),
(30, 'An Giang', 'AG', 0, NULL),
(31, 'Vĩnh Phúc', 'VP', 0, NULL),
(32, 'Tây Ninh', 'TNI', 0, NULL),
(33, 'Thái Nguyên', 'TN', 0, NULL),
(34, 'Lào Cai', 'LCA', 0, NULL),
(35, 'Nam Định', 'NDD', 0, NULL),
(36, 'Quảng Ngãi', 'QNG', 0, NULL),
(37, 'Bến Tre', 'BTR', 0, NULL),
(38, 'Đắk Nông', 'DNO', 0, NULL),
(39, 'Cà Mau', 'CM', 120000, NULL),
(40, 'Vĩnh Long', 'VL', 3, NULL),
(41, 'Ninh Bình', 'NB', 320, NULL),
(42, 'Phú Thọ', 'PT', 25, NULL),
(43, 'Ninh Thuận', 'NT', 120000, NULL),
(44, 'Phú Yên', 'PY', 123456, NULL),
(45, 'Hà Nam', 'HNA', 40000, NULL),
(46, 'Hà Tĩnh', 'HT', 12000, NULL),
(47, 'Đồng Tháp', 'DDT', 0, NULL),
(48, 'Sóc Trăng', 'ST', 0, NULL),
(49, 'Kon Tum', 'KT', 0, NULL),
(50, 'Quảng Bình', 'QB', 0, NULL),
(51, 'Quảng Trị', 'QT', 0, NULL),
(52, 'Trà Vinh', 'TV', 0, NULL),
(53, 'Hậu Giang', 'HGI', 0, NULL),
(54, 'Sơn La', 'SL', 0, NULL),
(55, 'Bạc Liêu', 'BL', 0, NULL),
(56, 'Yên Bái', 'YB', 0, NULL),
(57, 'Tuyên Quang', 'TQ', 0, NULL),
(58, 'Điện Biên', 'DDB', 0, NULL),
(59, 'Lai Châu', 'LCH', 0, NULL),
(60, 'Lạng Sơn', 'LS', 0, NULL),
(61, 'Hà Giang', 'HG', 0, NULL),
(62, 'Bắc Kạn', 'BK', 0, NULL),
(63, 'Cao Bằng', 'CB', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_size`
--

CREATE TABLE `pro_size` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_values`
--

CREATE TABLE `pro_values` (
  `pro_id` int(11) DEFAULT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `p_images`
--

CREATE TABLE `p_images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url` char(200) CHARACTER SET utf8 DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `p_images`
--

INSERT INTO `p_images` (`id`, `name`, `id_item`, `image`, `url`, `link`, `sort`) VALUES
(7, NULL, 31, 'upload/img/products_multi/141.jpg', NULL, NULL, NULL),
(8, NULL, 31, 'upload/img/products_multi/14.jpg', NULL, NULL, NULL),
(9, '', 43, 'upload/img/products_multi/21.jpg', NULL, '', NULL),
(10, '', 43, 'upload/img/products_multi/22.jpg', NULL, '', NULL),
(11, 'anh so 1', 93, 'upload/img/products_multi/web.png', NULL, '', NULL),
(13, 'anh 2', 92, 'upload/img/products_multi/logo1.png', NULL, '', NULL),
(14, '', 92, 'upload/img/products_multi/logo-thep.jpg', NULL, '', NULL),
(16, 'anh so 2', NULL, 'upload/img/products_multi/logo-thep1.jpg', NULL, '', NULL),
(17, 'anh so 2', NULL, NULL, NULL, '', NULL),
(18, 'anh so 123', NULL, 'upload/img/products_multi/logo.png', NULL, '', NULL),
(19, 'anh cho 91', NULL, NULL, NULL, '', NULL),
(20, 'anh cho 91', NULL, 'upload/img/products_multi/logo1.png', NULL, '', NULL),
(22, 'anh so 1', 15, 'upload/img/products_multi/golf.png', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) DEFAULT NULL,
  `comment` text CHARACTER SET utf8,
  `flg` int(11) DEFAULT NULL,
  `reply` int(11) DEFAULT NULL,
  `review` tinyint(1) DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `id_sanpham`, `comment`, `flg`, `reply`, `review`, `user_name`, `user_email`, `time`, `date`) VALUES
(13, 5, 'hhhhggg', NULL, 0, NULL, 'sieuwebqt', 'dangtranmanh@gmail.com', 1505724581, NULL),
(14, 5, 'hhhhggg', NULL, 0, NULL, 'sieuwebqt', 'dangtranmanh@gmail.com', 1505724675, NULL),
(15, 5, 'noi dung', NULL, 0, NULL, 'nguyen đát', 'dat@gmail.com', 1505725003, NULL),
(16, 5, 'noi dung câu hỏi', NULL, 0, NULL, 'tran manh', 'tranmanh@gmail.com', 1505725440, NULL),
(17, 5, 'noi dung cua toi', NULL, 0, NULL, 'khowebqts', 'tranmanh@gmail.com', 1505725631, NULL),
(18, 5, 'noi dung', NULL, 0, 1, 'tranmanh', 'tranmanh@gmail.com', 1505725689, NULL),
(19, 5, 'noi dung', NULL, 0, 1, 'sieuwebqt', 'tranmanh@gmail.com', 1505725843, NULL),
(20, 5, 'noi dung', NULL, 0, 1, 'sieuwebqt', 'tranmanh@gmail.com', 1505725878, NULL),
(21, 5, 'noi dung', NULL, 0, 1, 'sieuwebqt', 'tranmanh@gmail.com', 1505725928, NULL),
(22, 5, 'noi dung câu hỏi', NULL, 0, 1, 'tranmanh', 'dangtranmanh@gmail.com', 1505726276, NULL),
(23, 5, 'noi dung cau tra loi', NULL, 21, 1, 'van đạt', 'dat@gmail.com', 1505726568, NULL),
(24, 4, 'sâssa', NULL, 0, 1, 'Vân', 'buivananh.th@gmail.com', 1505981779, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `raovat`
--

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
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `id` int(11) NOT NULL,
  `style` int(11) DEFAULT NULL,
  `id_value` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `raovat`
--

INSERT INTO `raovat` (`home`, `focus`, `view`, `active`, `price`, `price_sale`, `description`, `description_seo`, `title_seo`, `keyword_seo`, `detail`, `note`, `category_id`, `caption_1`, `caption_2`, `locale`, `sort`, `quantity`, `lang`, `caption_3`, `time`, `tags`, `raovat_dir`, `multi_image`, `img_dir`, `status`, `tinhtrang`, `user_id`, `id`, `style`, `id_value`, `brand`, `name`, `code`, `alias`, `image`, `hot`) VALUES
(1, NULL, 0, 1, 0, 0, '<p>n&ocirc;i dung m&ocirc; ta</p>\r\n', '', '', '', '<p>noi dung chi tiet</p>\r\n', NULL, NULL, NULL, '<p>noi dung phu</p>\r\n', 0, 1, 0, 'vi', NULL, 1504065201, NULL, NULL, NULL, NULL, 0, NULL, 620, 1, NULL, NULL, 0, 'bán nhà tai hà nội', '', 'ban-nha-tai-ha-noi', NULL, NULL),
(1, NULL, 0, 1, 12424334, 12332342, '<p>n&ocirc;i dung m&ocirc; ta</p>\r\n', '', '', '', '<p>noi dung chi tiet</p>\r\n', NULL, 29, NULL, '<p>noi dung phu</p>\r\n', 6, 2, 0, 'vi', NULL, 1504068779, NULL, '30082017', NULL, NULL, 0, NULL, 620, 2, NULL, NULL, 14, 'bán nhà tai hà nội đường số 237', '', 'ban-nha-tai-ha-noi-duong-so-237', 'db652781fa07e94e75c9023c9de373cf.jpg', NULL),
(1, 1, 12, 1, 1234566, 1234333, '<p>n&ocirc;i dung m&ocirc; ta</p>\r\n', '', '', '', '<p>noi dung chi tiet</p>\r\n', NULL, 28, NULL, '<p>noi dung phu</p>\r\n', 5, 3, 0, 'vi', NULL, 1516353599, NULL, '30082017', NULL, NULL, 0, NULL, NULL, 3, NULL, NULL, 10, 'bán nhà tai hà nội viet nam', '', 'ban-nha-tai-ha-noi-viet-nam', '766564be313697c3bdae612b28a89d0a.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `raovat_category`
--

CREATE TABLE `raovat_category` (
  `id` int(11) NOT NULL,
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
  `description_seo` text CHARACTER SET utf8
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `raovat_category`
--

INSERT INTO `raovat_category` (`id`, `name`, `image`, `alias`, `parent_id`, `description`, `home`, `sort`, `hot`, `focus`, `lang`, `title_seo`, `keyword_seo`, `description_seo`) VALUES
(20, 'Điện thoại, viễn thông ', 'upload/img/phone.png', 'dien-thoai-vien-thong', 0, '                                                                                                                                                                                                            ', 0, 1, 0, 0, 'vi', NULL, NULL, NULL),
(27, 'Ô tô, xe máy, xe đạp', 'upload/img/oto.png', 'o-to-xe-may-xe-dap', 0, '', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(28, 'Xây dựng, công nghiệp', 'upload/img/connghiep.png', 'xay-dung-cong-nghiep', 0, '                                                                                                                                        ', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(29, 'Thời trang, phụ kiện', 'upload/img/thoitrang.png', 'thoi-trang-phu-kien', 0, '', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(30, 'Mẹ & Bé', 'upload/img/me_be.png', 'me-be', 0, '', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(31, 'Sức khỏe, sắc đẹp', 'upload/img/suckhoe.png', 'suc-khoe-sac-dep', 0, '', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(33, 'Nội thất, ngoại thất', 'upload/img/noithat.png', 'noi-that-ngoai-that', 0, '', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(34, 'Sách, đồ văn phòng', 'upload/img/sach.png', 'sach-do-van-phong', 0, '', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(35, 'Hoa, quà tặng, đồ chơi', 'upload/img/qua_tang.png', 'hoa-qua-tang-do-choi', 0, '', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(42, 'Khác', '', 'khac', 0, '', 0, 2, 1, 1, 'vi', '', NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `raovat_images`
--

CREATE TABLE `raovat_images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url` char(200) CHARACTER SET utf8 DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `raovat_images`
--

INSERT INTO `raovat_images` (`id`, `name`, `id_item`, `image`, `url`, `link`, `sort`) VALUES
(1, NULL, 3, 'upload/img/raovats_multi/f46482c87ab814e5d5ea59819e568564.jpg', NULL, NULL, NULL),
(2, NULL, 3, 'upload/img/raovats_multi/f4b467b6d383eb5d6062b2fa9c9c0708.jpg', NULL, NULL, NULL),
(3, NULL, 3, 'upload/img/raovats_multi/e86f742e7d986de26413443600fa8535.jpg', NULL, NULL, NULL),
(4, NULL, 3, 'upload/img/raovats_multi/d640c2db815fbba330306bdbdc9e9326.jpg', NULL, NULL, NULL),
(5, NULL, 2, 'upload/img/raovats_multi/3915f302b19fa28fc4001d6a66238681.jpg', NULL, NULL, NULL),
(6, NULL, 2, 'upload/img/raovats_multi/866917b6bab0b8c3eeb0f52f45efd867.jpg', NULL, NULL, NULL),
(7, NULL, 2, 'upload/img/raovats_multi/a8f9dbaa6c627b3a47a0f442cbe0c1ab.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `raovat_tag`
--

CREATE TABLE `raovat_tag` (
  `raovat_tag_id` int(11) NOT NULL,
  `raovat_id` int(11) NOT NULL,
  `lang` varchar(11) CHARACTER SET utf8 NOT NULL,
  `tag` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `alias` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `raovat_to_category`
--

CREATE TABLE `raovat_to_category` (
  `id` int(11) NOT NULL,
  `id_raovat` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `raovat_to_category`
--

INSERT INTO `raovat_to_category` (`id`, `id_raovat`, `id_category`) VALUES
(18, 3, 27),
(19, 3, 28),
(26, 2, 27),
(27, 2, 28),
(28, 2, 29);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `resource` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `active` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `resources`
--

INSERT INTO `resources` (`id`, `parent_id`, `resource`, `name`, `description`, `sort`, `icon`, `alias`, `active`) VALUES
(10, 0, 'product', 'Quản lý hàng thất lạc', NULL, 3, 'fa-bars', '', 1),
(11, 10, 'products', 'Danh sách', NULL, 1, 'fa-files-o', 'vnadmin/product/products', 1),
(13, 116, 'listColor', 'Màu sắc', NULL, 3, 'fa-circle-o', 'vnadmin/attribute/listColor', 0),
(14, 116, 'listprice', 'Khoảng giá', NULL, 4, 'fa-circle-o', 'vnadmin/attribute/listprice', 0),
(15, 116, 'listOption', 'Kích thước', NULL, 5, 'fa-circle-o', 'vnadmin/attribute/listOption', 0),
(17, 0, 'menu', 'Quản lý menu', NULL, 9, 'fa-bars', 'vnadmin/menu/menulist', 1),
(18, 10, 'category_pro', 'Danh mục sản phẩm', NULL, 2, 'fa-files-o', 'vnadmin/product/categories', 0),
(19, 173, 'comments', 'Đánh giá bình luận', NULL, 3, 'fa-comments-o', 'vnadmin/comment/comments', 0),
(20, 173, 'questions', 'Danh sách hỏi đáp', NULL, 4, 'fa-question-circle', 'vnadmin/comment/questions', 0),
(22, 174, 'tag', 'Thẻ tags sản phẩm', NULL, 5, 'fa-tag', 'vnadmin/tag/listtagpro', 0),
(25, 0, 'news', 'Quản lý tin bài', NULL, 11, 'fa-newspaper-o', '', 1),
(26, 25, 'newslist', 'Danh sách tin', NULL, 1, 'fa-file-text-o', 'vnadmin/news/newslist', 1),
(28, 25, 'tagsnews', 'Tags tin tức', NULL, 3, 'fa fa-tag', '', 0),
(29, 0, 'media', 'Quản lý media', NULL, 15, 'fa-picture-o', '', 0),
(30, 29, 'listAll', 'Danh sách media', NULL, 1, 'fa-file-image-o', 'vnadmin/media/listAll', 0),
(31, 25, 'categories', 'Danh mục tin', NULL, 2, 'fa-newspaper-o', 'vnadmin/news/categories', 1),
(32, 29, 'categories', 'Danh mục media', NULL, 2, 'fa-file-image-o', 'vnadmin/media/categories', 0),
(33, 0, 'users', 'Khách hàng', NULL, 7, 'fa-users', 'vnadmin/users/listusers', 1),
(34, 33, 'smslist', 'Tin Nhắn SMS', NULL, 6, 'fa-commenting-o', 'vnadmin/users/smslist', 0),
(39, 0, 'pages', 'Quản lý nội dung', NULL, 9, 'fa-file-o', 'vnadmin/pages/pagelist', 1),
(40, 0, 'video', 'Quản Lý Video', NULL, 18, 'fa-video-camera', '', 0),
(42, 40, 'listAll', 'Danh sách video', NULL, 1, 'fa-file-video-o', 'vnadmin/video/listAll', 0),
(43, 40, 'category_video', 'Danh mục video', NULL, 2, 'fa-video-camera', 'vnadmin/video/categories', 0),
(44, 107, 'listraovat', 'Danh sách rao vặt', NULL, 1, 'fa-files-o', 'vnadmin/raovat/listraovat', 0),
(49, 107, 'categories', 'Danh mục rao vặt', NULL, 2, 'fa-files-o', 'vnadmin/raovat/categories', 0),
(53, 0, 'imageupload', 'Quản lý banner', NULL, 14, 'fa-file-image-o', 'vnadmin/imageupload/banners', 1),
(54, 162, 'listWard', 'Quản lý phường xã', NULL, 3, 'fa-map-signs', 'vnadmin/province/listWard', 0),
(56, 162, 'listDistric', 'Quản lý quận huyện', NULL, 2, 'fa-map-marker', 'vnadmin/province/listDistric', 0),
(57, 162, 'street', 'Quản lý đường phố', NULL, 4, 'fa-road', 'vnadmin/province/listStreet', 0),
(58, 97, 'soldout', 'danh sách hết hàng', NULL, 1, 'fa-circle-o', 'admin/report/soldout', 0),
(63, 10, 'cat_add', 'Thêm - Sửa danh mục sp', NULL, 9, '', '', 0),
(64, 95, 'maps', 'Cấu hình bản đồ Maps', NULL, 1, ' fa-map-o', 'vnadmin/admin/bando_map', 1),
(65, 10, 'add', 'Thêm -Sửa sản phẩm', NULL, 7, '', '', 0),
(66, 17, 'delete', 'Xóa menu', NULL, 2, '', '', 0),
(67, 10, 'delete_once', 'Xóa sản phẩm', NULL, 8, '', '', 0),
(95, 0, 'admin', 'Hệ thống', NULL, 17, 'fa-gears text-red', '', 1),
(96, 95, 'site_option', 'Cấu hình hệ thống', NULL, 0, 'fa-circle-o text-red', 'vnadmin/admin/site_option', 1),
(97, 0, 'report', 'Báo cáo-Thống kê', NULL, 19, '', '', 0),
(99, 90, 'categories', 'Danh mục share', NULL, 0, NULL, NULL, NULL),
(100, 90, 'cat_add', 'Thêm danh mục share', NULL, 0, NULL, NULL, NULL),
(101, 90, 'cat_edit', 'Sửa danh mục share', NULL, 0, NULL, NULL, NULL),
(102, 90, 'delete_cat', 'Xóa danh mục share', NULL, 0, NULL, NULL, NULL),
(103, 97, 'bestsellers', 'Hàng bán chạy', NULL, 2, 'fa-circle-o', 'admin/report/bestsellers', 0),
(104, 0, 'order', 'Quản lý đơn hàng', NULL, 0, 'fa-shopping-cart', 'vnadmin/order/orders', 1),
(105, 104, 'orders', 'Danh sách đặt hàng', NULL, 1, 'fa fa-angle-double-right', 'vnadmin/order/orders', 1),
(190, 183, 'pay', 'Thanh toán đơn hàng', NULL, 30, '', 'vnadmin/exchange/pay', 0),
(107, 0, 'raovat', 'Quản lý rao vặt', NULL, 13, 'fa-bars', '', 0),
(108, 0, 'inuser', 'Ý kiến khách hàng', NULL, 12, 'fa-user-plus', 'vnadmin/inuser/categories', 0),
(109, 107, 'tagtinrao', 'Tags tin rao', NULL, 3, 'fa-tag', '', 0),
(110, 0, 'email', 'Quản lý email', NULL, 14, ' fa-envelope-o ', 'vnadmin/email/emails', 0),
(111, 0, 'support', 'Hỗ trợ  trực tuyến', NULL, 15, 'fa-life-ring', 'vnadmin/support/listSuport', 0),
(112, 95, 'store_shopping', 'Chuỗi cửa hàng', NULL, 5, 'fa-files-o', 'vnadmin/store/Ds_shopping', 0),
(113, 116, 'listBrand', 'Thương hiệu', NULL, 1, 'fa-circle-o', 'vnadmin/attribute/listBrand', 0),
(114, 116, 'listLocale', 'Xuất sứ', NULL, 2, 'fa-circle-o', 'vnadmin/attribute/listLocale', 0),
(115, 0, 'contact', 'Quản lý liên hệ', NULL, 10, 'fa-bars', 'vnadmin/contact/contacts', 1),
(116, 0, 'attribute', 'Thuộc tính sản phẩm', NULL, 9, 'fa-bars', '', 0),
(117, 108, 'cate_add', 'Thêm và Sửa', NULL, 2, '', '', 0),
(118, 108, 'delete_cat_once', 'Xóa', NULL, 3, '', '', 0),
(119, 108, 'categories', 'ý kiến khách hàng', NULL, 1, 'fa-files-o', 'vnadmin/inuser/categories', 0),
(120, 17, 'addmenu', 'Thêm - Sửa menu', NULL, 0, '', '', 0),
(121, 10, 'del_cat_once', 'Xóa danh mục sp', NULL, 10, '', '', 0),
(122, 29, 'add', 'Thêm -Sửa media', NULL, 3, '', '', 0),
(123, 29, 'delete_once', 'Xóa media', NULL, 4, '', '', 0),
(124, 29, 'cat_add', 'Thêm - Sửa danh mục media', NULL, 5, '', '', 0),
(125, 29, 'del_cat_once', 'Xóa danh mục media', NULL, 6, '', '', 0),
(126, 40, 'add', 'Thêm sửa video', NULL, 3, '', '', 0),
(127, 40, 'delete_once', 'Xóa video', NULL, 4, '', '', 0),
(128, 40, 'cat_add', 'Thêm danh mục video', NULL, 5, '', '', 0),
(129, 40, 'del_cat_once', 'Xóa danh mục video', NULL, 6, '', '', 0),
(130, 10, 'delete_once_question', 'Xóa hỏi đáp', NULL, 12, '', '', 0),
(131, 10, 'delete_once_comment', 'Xóa bình luận', NULL, 11, '', '', 0),
(132, 104, 'delete_once_orders', 'Xóa đơn hàng', NULL, 4, '', '', 0),
(188, 0, 'search', 'Tìm kiếm', NULL, 3, 'fa fa-search', 'vnadmin/search/index', 1),
(189, 188, 'index', 'Tìm kiếm đơn hàng', NULL, 29, '', 'vnadmin/search/index', 0),
(135, 116, 'addbrand', 'Thêm - Sửa thương hiệu', NULL, 6, '', '', 0),
(136, 116, 'delete_brand_once', 'Xóa thương hiệu', NULL, 7, '', '', 0),
(137, 116, 'addlocale', 'Thêm - Sửa xuất sứ', NULL, 7, '', '', 0),
(138, 116, 'delete_locale_once', 'Xóa xuất sứ', NULL, 8, '', '', 0),
(139, 116, 'addcolor', 'Thêm - Sửa màu sắc', NULL, 9, '', '', 0),
(140, 116, 'delete_color_once', 'Xóa màu sắc', NULL, 10, '', '', 0),
(141, 116, 'addprice', 'Thêm - Sửa khoản giá', NULL, 11, '', '', 0),
(142, 116, 'delete_price_once', 'Xóa khoảng giá', NULL, 12, '', '', 0),
(143, 116, 'addoption', 'Thêm - Sửa kích thước', NULL, 12, '', '', 0),
(144, 116, 'delete_option_once', 'Xóa kích thước', NULL, 13, '', '', 0),
(145, 25, 'addnews', 'Thêm - Sửa tin tức', NULL, 4, '', '', 0),
(146, 25, 'delete_once_news', 'Xóa tin tức', NULL, 5, '', '', 0),
(147, 25, 'cat_add_news', 'Thêm - Sửa danh mục tin', NULL, 6, '', '', 0),
(148, 25, 'del_catnews_once', 'Xóa danh mục tin', NULL, 7, '', '', 0),
(149, 53, 'addbanner', 'Thêm - Sửa banner', NULL, 1, '', '', 0),
(150, 53, 'delete_Banner_once', 'Xóa banner', NULL, 2, '', '', 0),
(151, 39, 'addpage', 'Thêm - Sửa nội dung', NULL, 1, '', '', 0),
(152, 39, 'delete_page_once', 'Xóa nội dung', NULL, 2, '', '', 0),
(153, 115, 'delete', 'Xóa liên hệ', NULL, 1, '', '', 0),
(154, 107, 'add', 'Thêm - Sửa rao vặt', NULL, 4, '', '', 0),
(155, 107, 'delete_raovat_once', 'Xóa tin rao', NULL, 5, '', '', 0),
(156, 107, 'cat_add', 'Thêm - Sửa danh mục tin rao', NULL, 6, '', '', 0),
(157, 107, 'del_cattinrao_once', 'Xóa danh mục tin rao', NULL, 7, '', '', 0),
(158, 110, 'delete', 'Xóa email', NULL, 1, '', '', 0),
(159, 111, 'add', 'Thêm - Sửa hỗ trợ trực tuyến', NULL, 1, '', '', 0),
(160, 111, 'delete_support_once', 'Xóa hỗ trợ trực tuyến', NULL, 2, '', '', 1),
(161, 33, 'delete_users_once', 'Xóa thành viên', NULL, 1, '', '', 0),
(162, 0, 'province', 'Danh sách quan huyện', NULL, 18, '', '', 0),
(163, 33, 'add_users', 'Thêm thành viên quan trị', NULL, 1, '', 'vnadmin/users/add_users', 0),
(164, 33, 'delete_users_once', 'Xóa thành viên quản trị', NULL, 10, '', '', 0),
(165, 33, 'listuser_admin', 'Danh sách tài khoản quản trị', NULL, 0, '', 'vnadmin/users/listuser_admin', 0),
(166, 33, 'listusers', 'Danh sách thành viên', NULL, 0, '', 'vnadmin/users/listusers', 0),
(167, 17, 'menulist', 'Danh sách menu', NULL, 1, '', 'vnadmin/menu/menulist', 0),
(168, 53, 'banners', 'Danh sách banner', NULL, 0, '', 'vnadmin/imageupload/banners', 0),
(169, 39, 'pagelist', 'Danh sách nội dung', NULL, 0, '', 'vnadmin/pages/pagelist', 0),
(170, 110, 'emails', 'Danh sách email', NULL, 0, '', 'vnadmin/email/emails', 0),
(171, 115, 'contacts', 'Danh sách liên hệ', NULL, 0, '', 'vnadmin/contact/contacts', 0),
(172, 111, 'listSuport', 'Danh sách support', NULL, 0, '', 'vnadmin/support/listSuport', 0),
(173, 0, 'comment', 'Quản lý bình luận', NULL, 7, 'fa-comments-o', '', 0),
(174, 0, 'tag', 'Quản lý thẻ tag', NULL, 6, 'fa-tags', '', 0),
(175, 174, 'tag', 'Thẻ tags tin tức', NULL, 2, 'fa-tag', 'vnadmin/tag/listnew', 0),
(177, 95, 'setup_product', ' Cấu hình sản phẩm', NULL, 20, 'fa-gears', 'vnadmin/admin/setup_product', 1),
(178, 0, 'depot', 'Kho hàng', NULL, 6, 'fa fa-building', 'vnadmin/depot/lists', 1),
(200, 178, 'statis', 'Thống kê ghi chú', NULL, 32, '', 'vnadmin/depot/statis', 1),
(182, 178, 'lists', 'Danh sách kho', NULL, 22, 'fa fa-angle-double-right', 'vnadmin/depot/lists', 1),
(183, 0, 'exchange', 'Giao dịch thanh toán', NULL, 1, 'fa fa-exchange', '', 1),
(184, 183, 'index', 'Danh sách giao dịch', NULL, 24, 'fa fa-angle-double-right', 'vnadmin/exchange/index', 1),
(185, 0, 'khieunai', 'Quản lý khiếu nại', NULL, 2, 'fa fa-info-circle', '', 1),
(186, 185, 'list_khieunai', 'Danh sách', NULL, 26, 'fa fa-angle-double-right', 'vnadmin/khieunai/list_khieunai', 1),
(187, 104, 'giaohang', 'Giao hàng', NULL, 27, 'fa fa-truck', 'vnadmin/order/giaohang', 1),
(191, 183, 'detail', 'Chi tiết', NULL, 31, '', 'vnadmin/exchange/detail', 0),
(192, 0, 'config', 'Cấu hình chi phí', NULL, 7, 'fa fa-cog', '', 1),
(193, 192, 'tygiacannang', 'Tỷ giá cân nặng', NULL, 1, '', 'vnadmin/config/tygiacannang', 1),
(194, 192, 'phimuahang', 'Phí mua hàng', NULL, 2, '', 'vnadmin/config/phimuahang', 1),
(195, 0, 'statistic', 'Thống kê', NULL, 8, 'fa fa-cubes', '', 1),
(196, 195, 'employees', 'Thống kê theo nhân viên', NULL, 1, 'fa fa-angle-double-right', 'vnadmin/statistic/employees', 1),
(197, 195, 'debt', 'Công nợ khách hàng', NULL, 2, '', 'vnadmin/statistic/debt', 1),
(198, 178, 'hang_order', 'Kiểm kho', NULL, 2, 'fa fa-angle-double-right', 'vnadmin/depot/hang_order', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site_log`
--

CREATE TABLE `site_log` (
  `site_log_id` int(10) UNSIGNED NOT NULL,
  `no_of_visits` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `requested_url` tinytext CHARACTER SET utf8,
  `referer_page` tinytext CHARACTER SET utf8,
  `page_name` tinytext CHARACTER SET utf8,
  `query_string` tinytext CHARACTER SET utf8,
  `user_agent` tinytext CHARACTER SET utf8,
  `is_unique` tinyint(1) DEFAULT '0',
  `access_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `visits_count` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `site_log`
--

INSERT INTO `site_log` (`site_log_id`, `no_of_visits`, `ip_address`, `requested_url`, `referer_page`, `page_name`, `query_string`, `user_agent`, `is_unique`, `access_date`, `visits_count`) VALUES
(57857, NULL, '64.233.172.151', '/ordergiatot/', '', 'home/index', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', 0, '2018-09-09 03:44:19', 1),
(57858, 1, '118.71.30.115', '/ordergiatot/vnadmin', '', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:38:41', 0),
(58053, 1, '118.70.74.179', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:41:47', 0),
(58054, 1, '118.70.74.179', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:41:48', 0),
(58055, 1, '118.70.74.179', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:41:48', 0),
(58056, 1, '118.70.74.179', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:52:03', 0),
(58057, 1, '118.70.74.179', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:52:03', 0),
(58058, 1, '118.70.74.179', '/ordergiatot/vnadmin/logout/index', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis?tungay=01%2F09%2F2018&denngay=11%2F09%2F2018', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/72.4.208 Chrome/66.4.3359.208 Safari/537.36', 0, '2018-09-10 01:52:33', 0),
(58059, 1, '118.70.74.179', '/ordergiatot/vnadmin', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis?tungay=01%2F09%2F2018&denngay=11%2F09%2F2018', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/72.4.208 Chrome/66.4.3359.208 Safari/537.36', 0, '2018-09-10 01:52:33', 0),
(58060, 1, '118.70.74.179', '/ordergiatot/vnadmin/depot/hang_order', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/72.4.208 Chrome/66.4.3359.208 Safari/537.36', 0, '2018-09-10 01:52:38', 0),
(58061, 1, '118.70.74.179', '/ordergiatot/vnadmin/depot/statis', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/statis', '/statis', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/72.4.208 Chrome/66.4.3359.208 Safari/537.36', 0, '2018-09-10 01:52:43', 0),
(58062, 1, '118.70.74.179', '/ordergiatot/vnadmin/logout/index', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/72.4.208 Chrome/66.4.3359.208 Safari/537.36', 0, '2018-09-10 01:52:46', 0),
(58063, 1, '118.70.74.179', '/ordergiatot/vnadmin', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/72.4.208 Chrome/66.4.3359.208 Safari/537.36', 0, '2018-09-10 01:52:46', 0),
(58064, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/employees', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:55:27', 0),
(58065, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/debt', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:55:46', 0),
(58066, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/employees', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:55:53', 0),
(58067, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/debt', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:56:02', 0),
(58068, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/debtCustomer?id=NjQ2', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/debtCustomer', 'ustomer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:56:06', 0),
(58069, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/employees', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debtCustomer?id=NjQ2&from=31%2F08%2F2018&to=31%2F08%2F2018', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:01:00', 0),
(58070, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/detail_order_employ', '_employ', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:01:02', 0),
(58135, 1, '118.70.74.179', '/ordergiatot/', 'http://thoitrangbellamoda.com/ordergiatot/', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 03:55:12', 0),
(58132, 1, '117.1.79.92', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/lists', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:27:51', 0),
(58133, 1, '118.70.74.179', '/ordergiatot/', 'http://thoitrangbellamoda.com/ordergiatot/', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 03:32:19', 0),
(58134, 1, '118.70.74.179', '/ordergiatot/vnadmin', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debtCustomer?id=NjQ2&from=26%2F08%2F2018&to=10%2F09%2F2018', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 03:54:46', 0),
(58130, 1, '117.1.79.92', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:27:22', 0),
(58131, 1, '117.1.79.92', '/ordergiatot/vnadmin/depot/lists', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'depot/lists', 't/lists', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:27:45', 0),
(58129, 1, '117.1.79.92', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders?filter=&key=linhnhi&khohang=', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:27:21', 0),
(58128, 1, '117.1.79.92', '/ordergiatot/vnadmin/order/orders', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/editUser?id=NjU4', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:27:10', 0),
(58127, 1, '117.1.79.92', '/ordergiatot/vnadmin/users/editUser?id=NjU4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'users/editUser', 'ditUser', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:27:06', 0),
(58124, 1, '117.1.79.92', '/ordergiatot/vnadmin/menu/menulist', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'menu/menulist', 'enulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:26:06', 0),
(58125, 1, '117.1.79.92', '/ordergiatot/vnadmin/menu/savelist', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/menu/menulist', 'menu/savelist', 'avelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:26:07', 0),
(58126, 1, '117.1.79.92', '/ordergiatot/vnadmin/order/orders', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/menu/menulist', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:26:51', 0),
(58123, 1, '117.1.79.92', '/ordergiatot/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:25:09', 0),
(58120, 1, '117.1.79.92', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:23:45', 0),
(58121, 1, '117.1.79.92', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:23:46', 0),
(58122, 1, '117.1.79.92', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:24:17', 0),
(58118, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/debtCustomer', 'ustomer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:23:15', 0),
(58119, 1, '117.1.79.92', '/ordergiatot/vnadmin/order/orders', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4&from=05%2F09%2F2018&to=05%2F09%2F2018', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:23:43', 0),
(58117, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/debt', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4&from=05%2F09%2F2018&to=05%2F09%2F2018', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:23:13', 0),
(58115, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/debt', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4&from=05%2F09%2F2018&to=05%2F09%2F2018', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:23:07', 0),
(58116, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/debtCustomer?id=NjQ2', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/debtCustomer', 'ustomer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:23:10', 0),
(58114, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/detail_order_employ', '_employ', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:21:49', 0),
(58113, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/employees', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:21:33', 0),
(58110, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/debtCustomer?id=NjQ2', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/debtCustomer', 'ustomer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:19:51', 0),
(58111, 1, '117.1.79.92', '/ordergiatot/vnadmin/users/listusers', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order?loaihang=&tungay=08%2F09%2F2018&denngay=08%2F09%2F2018', 'users/listusers', 'stusers', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:20:36', 0),
(58112, 1, '117.1.79.92', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/listusers', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:20:39', 0),
(58108, 1, '117.1.79.92', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debtCustomer?id=NjQ2', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:19:03', 0),
(58109, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/debt', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4&from=01%2F09%2F2018&to=05%2F09%2F2018', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:19:48', 0),
(58107, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/debtCustomer?id=NjQ2', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/debtCustomer', 'ustomer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:18:41', 0),
(58106, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/debt', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:18:38', 0),
(58105, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/detail_order_employ', '_employ', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:14:35', 0),
(58102, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/employees', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4&from=31%2F08%2F2018&to=10%2F09%2F2018', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:13:45', 0),
(58103, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/detail_order_employ', '_employ', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:13:46', 0),
(58104, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/employees', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4&from=05%2F09%2F2018&to=05%2F09%2F2018', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:14:33', 0),
(58101, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/detail_order_employ', '_employ', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:13:14', 0),
(58100, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/detail_order_employ', '_employ', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:13:13', 0),
(58098, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/employees', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4&from=31%2F08%2F2018&to=09%2F09%2F2018', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:13:10', 0),
(58099, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/employees', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:13:11', 0),
(58095, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/debtCustomer', 'ustomer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:12:14', 0),
(58096, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/employees', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:12:51', 0),
(58097, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/debt', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:12:53', 0),
(58094, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/debt', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4&from=31%2F07%2F2018&to=09%2F09%2F2018', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:12:09', 0),
(58092, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/employees', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:11:09', 0),
(58093, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/detail_order_employ', '_employ', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:11:11', 0),
(58088, 1, '117.1.79.92', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:10:19', 0),
(58089, 1, '117.1.79.92', '/ordergiatot/vnadmin/depot/statis', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/statis', '/statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:10:24', 0),
(58090, 1, '117.1.79.92', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis?tungay=05%2F09%2F2018&denngay=09%2F09%2F2018', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:10:57', 0),
(58091, 1, '117.1.79.92', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis?tungay=05%2F09%2F2018&denngay=09%2F09%2F2018', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:10:57', 0),
(58082, 1, '117.1.79.92', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4&from=31%2F08%2F2018&to=10%2F09%2F2018', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:09:11', 0),
(58083, 1, '117.1.79.92', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4&from=31%2F08%2F2018&to=10%2F09%2F2018', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:09:11', 0),
(58084, 1, '117.1.79.92', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:09:21', 0),
(58085, 1, '117.1.79.92', '/ordergiatot/vnadmin/depot/statis', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/statis', '/statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:09:24', 0),
(58086, 1, '117.1.79.92', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis?tungay=05%2F09%2F2018&denngay=05%2F09%2F2018', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:10:15', 0),
(58087, 1, '117.1.79.92', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis?tungay=05%2F09%2F2018&denngay=05%2F09%2F2018', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:10:15', 0),
(58081, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/debtCustomer', 'ustomer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:08:40', 0),
(58078, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/detail_order_employ', '_employ', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:08:13', 0),
(58079, 1, '118.70.74.179', '/ordergiatot/vnadmin/depot/hang_order', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/72.4.208 Chrome/66.4.3359.208 Safari/537.36', 0, '2018-09-10 02:08:14', 0),
(58080, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/debt', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4&from=31%2F08%2F2018&to=05%2F09%2F2018', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:08:38', 0),
(58071, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/employees', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4&from=05%2F09%2F2018&to=05%2F09%2F2018', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:03:27', 0),
(58072, 1, '118.70.74.179', '/ordergiatot/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:05:07', 0),
(58073, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/employees', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:06:52', 0),
(58074, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/detail_order_employ', '_employ', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:06:54', 0),
(58075, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/employees', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4&from=02%2F10%2F2018&to=09%2F09%2F2018', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:07:40', 0),
(58077, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/employees', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4&from=01%2F09%2F2018&to=09%2F09%2F2018', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:08:10', 0),
(58076, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/detail_order_employ', '_employ', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 02:07:41', 0),
(58050, 1, '118.70.74.179', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:40:22', 0),
(58051, 1, '118.70.74.179', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:40:22', 0),
(58052, 1, '118.70.74.179', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:41:46', 0),
(58046, 1, '117.1.79.92', '/ordergiatot/vnadmin/order/orders', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:38:48', 0),
(58047, 1, '117.1.79.92', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:38:50', 0),
(58048, 1, '117.1.79.92', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:38:51', 0),
(58049, 1, '118.70.74.179', '/ordergiatot/vnadmin/order/orders', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:38:54', 0),
(58039, 1, '117.1.79.92', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:36:45', 0),
(58040, 1, '117.1.79.92', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:36:46', 0),
(58041, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/debt', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:37:02', 0),
(58042, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/debtCustomer', 'ustomer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:37:07', 0),
(58043, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/debtCustomer', 'ustomer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:37:09', 0),
(58044, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/employees', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:37:35', 0),
(58045, 1, '117.1.79.92', '/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/detail_order_employ', '_employ', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:37:42', 0),
(58037, 1, '117.1.79.92', '/ordergiatot/vnadmin/depot/statis', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'depot/statis', '/statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:35:31', 0),
(58038, 1, '118.70.74.179', '/ordergiatot/vnadmin/depot/statis', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order?loaihang=2&tungay=05%2F09%2F2018&denngay=05%2F09%2F2018', 'depot/statis', '/statis', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/72.4.208 Chrome/66.4.3359.208 Safari/537.36', 0, '2018-09-10 01:35:43', 0),
(58035, 1, '117.1.79.92', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:34:24', 0),
(58036, 1, '117.1.79.92', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:34:24', 0),
(58034, 1, '117.1.79.92', '/ordergiatot/vnadmin', '', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:34:17', 0),
(58030, NULL, '64.233.172.151', '/ordergiatot/vnadmin', '', 'defaults/index', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', 0, '2018-09-10 01:31:09', 1),
(58031, NULL, '64.233.172.155', '/ordergiatot/', '', 'home/index', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', 0, '2018-09-10 01:31:09', 1),
(58032, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/employees', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/exchange/index?status=2', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:33:43', 0),
(58033, 1, '118.70.74.179', '/ordergiatot/vnadmin/statistic/debt', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:33:50', 0),
(58028, 1, '118.70.74.179', '/ordergiatot/vnadmin/depot/update_note', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order?loaihang=&tungay=05%2F09%2F2018&denngay=05%2F09%2F2018', 'depot/update_note', 'te_note', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/72.4.208 Chrome/66.4.3359.208 Safari/537.36', 0, '2018-09-10 01:31:06', 0),
(58029, 1, '118.70.74.179', '/ordergiatot/vnadmin/depot/hang_order?loaihang=&tungay=05%2F09%2F2018&denngay=05%2F09%2F2018', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order?loaihang=&tungay=05%2F09%2F2018&denngay=05%2F09%2F2018', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/72.4.208 Chrome/66.4.3359.208 Safari/537.36', 0, '2018-09-10 01:31:06', 0),
(58022, 1, '118.70.74.179', '/ordergiatot/vnadmin/order/orders', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:19:58', 0),
(58023, 1, '118.70.74.179', '/ordergiatot/vnadmin/search/index', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'search/index', 'h/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:20:33', 0),
(58024, 1, '118.70.74.179', '/ordergiatot/vnadmin/exchange/index', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin/search/index', 'exchange/index', 'e/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:28:33', 0),
(58025, 1, '118.70.74.179', '/ordergiatot/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/72.4.208 Chrome/66.4.3359.208 Safari/537.36', 0, '2018-09-10 01:30:19', 0),
(58026, 1, '118.70.74.179', '/ordergiatot/vnadmin', '', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/72.4.208 Chrome/66.4.3359.208 Safari/537.36', 0, '2018-09-10 01:30:26', 0),
(58027, 1, '118.70.74.179', '/ordergiatot/vnadmin/depot/hang_order', 'http://thoitrangbellamoda.com/ordergiatot/vnadmin', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/72.4.208 Chrome/66.4.3359.208 Safari/537.36', 0, '2018-09-10 01:30:29', 0),
(58021, 1, '118.70.74.179', '/ordergiatot/vnadmin', '', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-10 01:19:51', 0),
(58016, 1, '118.71.30.115', '/ordergiatot/vnadmin/users/listusers', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/product/products?code=&name=Th%E1%BB%B1c+ph%E1%BA%A9m+ch%E1%BB%A9c+n%C4%83ng&cate=&view=', 'users/listusers', 'stusers', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:35:50', 0),
(58017, 1, '118.71.30.115', '/ordergiatot/vnadmin/statistic/employees', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/listusers?fullname=B%C3%B9i+Hoa&email=&phone=&view=', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:36:30', 0),
(58018, 1, '118.71.30.115', '/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/detail_order_employ', '_employ', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:36:33', 0),
(58019, 1, '118.71.30.115', '/ordergiatot/vnadmin/statistic/debt', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:36:42', 0),
(58020, 1, '118.71.30.115', '/ordergiatot/vnadmin/statistic/debtCustomer?id=NjQ2', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/debtCustomer', 'ustomer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:36:47', 0),
(58015, 1, '118.71.30.115', '/ordergiatot/vnadmin/product/products', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/exchange/index?status=2', 'product/products', 'roducts', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:35:26', 0),
(58013, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/giaohang', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/giaohang', 'iaohang', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:35:05', 0),
(58014, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/giaohang', 'exchange/index', 'e/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:35:09', 0),
(58011, 1, '118.71.30.115', '/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/debtCustomer', 'ustomer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:34:46', 0),
(58012, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/orders', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:35:01', 0),
(58008, 1, '118.71.30.115', '/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/debtCustomer', 'ustomer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:34:42', 0),
(58009, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:34:43', 0),
(58010, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:34:43', 0),
(58007, 1, '118.71.30.115', '/ordergiatot/vnadmin/statistic/debt', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4&from=31%2F08%2F2018&to=09%2F09%2F2018', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:34:40', 0),
(58005, 1, '118.71.30.115', '/ordergiatot/vnadmin/statistic/debt', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:34:10', 0),
(58004, 1, '118.71.30.115', '/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/detail_order_employ', '_employ', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:34:04', 0),
(58006, 1, '118.71.30.115', '/ordergiatot/vnadmin/statistic/debtCustomer?id=NjU4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'statistic/debtCustomer', 'ustomer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:34:12', 0),
(58002, 1, '118.71.30.115', '/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/employees', 'statistic/detail_order_employ', '_employ', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:33:03', 0),
(58003, 1, '118.71.30.115', '/ordergiatot/vnadmin/statistic/employees', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/detail_order_employ?id=NjQ4&from=05%2F09%2F2018&to=05%2F09%2F2018', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:34:01', 0),
(58001, 1, '118.71.30.115', '/ordergiatot/vnadmin/statistic/employees', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'statistic/employees', 'ployees', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:33:00', 0),
(57999, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:30:15', 0),
(58000, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:30:15', 0),
(57996, 1, '118.71.30.115', '/ordergiatot/cart/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/don-hang', 'cart/detail', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:29:48', 0),
(57997, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:30:10', 0),
(57998, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:30:10', 0),
(57995, 1, '118.71.30.115', '/ordergiatot/don-hang', 'https://thoitrangbellamoda.com/ordergiatot/lich-su-giao-dich', 'users_frontend/acount_order', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:29:46', 0),
(57994, 1, '118.71.30.115', '/ordergiatot/lich-su-giao-dich', 'https://thoitrangbellamoda.com/ordergiatot/thanh-toan?id=ODI=', 'users_frontend/exchanges', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:29:14', 0),
(57993, 1, '118.71.30.115', '/ordergiatot/paydbt', 'https://thoitrangbellamoda.com/ordergiatot/thanh-toan?id=ODI=', 'users_frontend/updatePay', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:29:13', 0),
(57992, 1, '118.71.30.115', '/ordergiatot/thanh-toan?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/cart/detail?id=ODI=', 'users_frontend/transaction', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:28:53', 0),
(57991, 1, '118.71.30.115', '/ordergiatot/cart/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/don-hang', 'cart/detail', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:28:35', 0),
(57990, 1, '118.71.30.115', '/ordergiatot/don-hang', 'https://thoitrangbellamoda.com/ordergiatot/lich-su-giao-dich', 'users_frontend/acount_order', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:28:31', 0),
(57989, 1, '118.71.30.115', '/ordergiatot/lich-su-giao-dich', 'https://thoitrangbellamoda.com/ordergiatot/thanh-toan?id=ODI=', 'users_frontend/exchanges', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:28:18', 0),
(57987, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:28:06', 0),
(57988, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:28:06', 0),
(57986, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:27:53', 0),
(57985, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:27:53', 0);
INSERT INTO `site_log` (`site_log_id`, `no_of_visits`, `ip_address`, `requested_url`, `referer_page`, `page_name`, `query_string`, `user_agent`, `is_unique`, `access_date`, `visits_count`) VALUES
(57978, 1, '118.71.30.115', '/ordergiatot/cart/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/don-hang', 'cart/detail', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:25:51', 0),
(57979, 1, '118.71.30.115', '/ordergiatot/thanh-toan?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/cart/detail?id=ODI=', 'users_frontend/transaction', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:26:17', 0),
(57980, 1, '118.71.30.115', '/ordergiatot/paydbt', 'https://thoitrangbellamoda.com/ordergiatot/thanh-toan?id=ODI=', 'users_frontend/updatePay', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:26:39', 0),
(57981, 1, '118.71.30.115', '/ordergiatot/lich-su-giao-dich', 'https://thoitrangbellamoda.com/ordergiatot/thanh-toan?id=ODI=', 'users_frontend/exchanges', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:26:39', 0),
(57982, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:27:04', 0),
(57983, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:27:05', 0),
(57984, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/updateWeight', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/updateWeight', 'eWeight', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:27:51', 0),
(57977, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:25:37', 0),
(57976, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:25:37', 0),
(57974, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:25:25', 0),
(57975, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/update_weight_rate', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/update_weight_rate', 'ht_rate', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:25:36', 0),
(57973, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:25:25', 0),
(57970, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:24:59', 0),
(57971, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:24:59', 0),
(57972, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/updateWeight', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/updateWeight', 'eWeight', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:25:21', 0),
(57968, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:24:12', 0),
(57969, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/updateWeight', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/updateWeight', 'eWeight', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:24:58', 0),
(57966, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/update_weight_rate', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/update_weight_rate', 'ht_rate', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:24:10', 0),
(57967, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:24:11', 0),
(57964, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:23:16', 0),
(57965, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:23:17', 0),
(57960, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/orders', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:22:47', 0),
(57961, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:22:49', 0),
(57962, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:22:49', 0),
(57963, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/updateWeight', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'order/updateWeight', 'eWeight', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:23:15', 0),
(57959, 1, '118.71.30.115', '/ordergiatot/vnadmin', '', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:22:42', 0),
(57956, 1, '118.71.30.115', '/ordergiatot/', 'https://thoitrangbellamoda.com/ordergiatot/thong-ke-tai-chinh', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:22:50', 0),
(57957, 1, '118.71.30.115', '/ordergiatot/thong-tin-tai-khoan', 'https://thoitrangbellamoda.com/ordergiatot/', 'users_frontend/acount', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:22:10', 0),
(57958, 1, '118.71.30.115', '/ordergiatot/don-hang', 'https://thoitrangbellamoda.com/ordergiatot/thong-tin-tai-khoan', 'users_frontend/acount_order', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 16:22:13', 0),
(57954, 1, '118.71.30.115', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:20:37', 0),
(57955, 1, '118.71.30.115', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:20:37', 0),
(57951, 1, '118.71.30.115', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:16:50', 0),
(57952, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/statis', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'depot/statis', '/statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:17:05', 0),
(57953, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:19:16', 0),
(57949, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:12:52', 0),
(57950, 1, '118.71.30.115', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:16:50', 0),
(57948, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:12:49', 0),
(57945, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/orders', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/statistic/debt', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:12:14', 0),
(57946, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/giaohang', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/giaohang', 'iaohang', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:12:16', 0),
(57947, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/orders', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/giaohang', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:12:45', 0),
(57944, 1, '118.71.30.115', '/ordergiatot/vnadmin/statistic/debt', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/config/tygiacannang', 'statistic/debt', 'ic/debt', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:11:43', 0),
(57941, 1, '118.71.30.115', '/ordergiatot/vnadmin/khieunai/list_khieunai', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/exchange/index', 'khieunai/list_khieunai', 'hieunai', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:11:08', 0),
(57943, 1, '118.71.30.115', '/ordergiatot/vnadmin/config/tygiacannang', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'config/tygiacannang', 'cannang', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:11:25', 0),
(57942, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/khieunai/list_khieunai', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:11:15', 0),
(57938, 1, '118.71.30.115', '/ordergiatot/', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/rechangeHistory?id=658', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:10:09', 0),
(57939, 1, '118.71.30.115', '/ordergiatot/thong-ke-tai-chinh', 'https://thoitrangbellamoda.com/ordergiatot/thong-tin-tai-khoan', 'users_frontend/rechangeHistory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:10:14', 0),
(57940, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/rechangeHistory?id=658', 'exchange/index', 'e/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:10:52', 0),
(57937, 1, '118.71.30.115', '/ordergiatot/vnadmin/users/rechangeHistory?id=658', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/rechangeHistory?id=658', 'users/rechangeHistory', 'History', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:10:09', 0),
(57936, 1, '118.71.30.115', '/ordergiatot/vnadmin/users/addRechange', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/rechangeHistory?id=658', 'users/addRechange', 'echange', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:10:08', 0),
(57932, 1, '118.71.30.115', '/ordergiatot/vnadmin/users/rechangeHistory?id=658', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/rechangeHistory?id=658', 'users/rechangeHistory', 'History', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:07:50', 0),
(57933, 1, '118.71.30.115', '/ordergiatot/', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/rechangeHistory?id=658', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:07:50', 0),
(57934, 1, '118.71.30.115', '/ordergiatot/thong-tin-tai-khoan', 'https://thoitrangbellamoda.com/ordergiatot/', 'users_frontend/acount', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:08:08', 0),
(57935, 1, '118.71.30.115', '/ordergiatot/thong-ke-tai-chinh', 'https://thoitrangbellamoda.com/ordergiatot/thong-tin-tai-khoan', 'users_frontend/rechangeHistory', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:08:12', 0),
(57930, 1, '118.71.30.115', '/ordergiatot/admin/users/popupEditRechange', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/rechangeHistory?id=658', 'users/popupEditRechange', 'hange', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:07:26', 0),
(57931, 1, '118.71.30.115', '/ordergiatot/vnadmin/users/editRechange', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/rechangeHistory?id=658', 'users/editRechange', 'echange', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:07:50', 0),
(57929, 1, '118.71.30.115', '/ordergiatot/', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/rechangeHistory?id=658', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:07:18', 0),
(57928, 1, '118.71.30.115', '/ordergiatot/vnadmin/users/rechangeHistory?id=658', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/listusers', 'users/rechangeHistory', 'History', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:07:18', 0),
(57926, 1, '118.71.30.115', '/ordergiatot/vnadmin/users/editUser?id=NjU4', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/listusers', 'users/editUser', 'ditUser', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:07:02', 0),
(57927, 1, '118.71.30.115', '/ordergiatot/vnadmin/users/listusers', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/users/editUser?id=NjU4', 'users/listusers', 'stusers', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:07:14', 0),
(57925, 1, '118.71.30.115', '/ordergiatot/vnadmin/users/listusers', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'users/listusers', 'stusers', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:06:56', 0),
(57924, 1, '118.71.30.115', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:06:42', 0),
(57923, 1, '118.71.30.115', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:06:40', 0),
(57921, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODI=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:06:00', 0),
(57922, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODI=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:06:00', 0),
(57919, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/statis', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'depot/statis', '/statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:05:05', 0),
(57920, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/orders', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis?tungay=30%2F08%2F2018&denngay=31%2F08%2F2018', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:05:55', 0),
(57916, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:02:35', 0),
(57917, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/statis', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order?loaihang=2&tungay=08%2F09%2F2018&denngay=09%2F09%2F2018', 'depot/statis', '/statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:04:11', 0),
(57918, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/update_note_statis', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'depot/update_note_statis', '_statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:04:59', 0),
(57915, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/createOrderTracking', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/createOrderTracking', 'racking', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:02:34', 0),
(57910, 1, '118.71.30.115', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODE=', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:01:55', 0),
(57911, 1, '118.71.30.115', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODE=', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:01:55', 0),
(57912, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:02:09', 0),
(57913, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/createOrderTracking', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/createOrderTracking', 'racking', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:02:20', 0),
(57914, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:02:20', 0),
(57908, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODE=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:01:47', 0),
(57909, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODE=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:01:47', 0),
(57903, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/createOrderTracking', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/createOrderTracking', 'racking', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:01:30', 0),
(57904, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:01:30', 0),
(57905, 1, '118.71.30.115', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:01:37', 0),
(57906, 1, '118.71.30.115', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:01:37', 0),
(57907, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/orders', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:01:46', 0),
(57899, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:01:06', 0),
(57900, 1, '118.71.30.115', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:01:14', 0),
(57901, 1, '118.71.30.115', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:01:14', 0),
(57902, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:01:20', 0),
(57897, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:00:57', 0),
(57898, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/createOrderTracking', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/createOrderTracking', 'racking', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:01:06', 0),
(57895, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:00:50', 0),
(57896, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/createOrderTracking', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/createOrderTracking', 'racking', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:00:57', 0),
(57893, 1, '118.71.30.115', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODE=', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:00:40', 0),
(57889, 1, '118.71.30.115', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:00:23', 0),
(57890, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/orders', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:00:31', 0),
(57891, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODE=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:00:33', 0),
(57892, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODE=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:00:33', 0),
(57894, 1, '118.71.30.115', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODE=', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:00:40', 0),
(57885, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:00:04', 0),
(57886, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/createOrderTracking', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/createOrderTracking', 'racking', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:00:15', 0),
(57887, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:00:15', 0),
(57888, 1, '118.71.30.115', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 14:00:23', 0),
(57883, 1, '118.71.30.115', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODE=', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:59:47', 0),
(57884, 1, '118.71.30.115', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODE=', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:59:47', 0),
(57878, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODE=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:58:06', 0),
(57879, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODE=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:58:07', 0),
(57880, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/updateTracking', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODE=', 'order/updateTracking', 'racking', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:59:35', 0),
(57881, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODE=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODE=', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:59:41', 0),
(57882, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODE=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:59:41', 0),
(57877, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/orders', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:58:04', 0),
(57875, 1, '118.71.30.115', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:57:52', 0),
(57876, 1, '118.71.30.115', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:57:52', 0),
(57874, 1, '118.71.30.115', '/ordergiatot/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:50:59', 0),
(57871, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/delete_statis?id=Ng==', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'depot/delete_statis', '_statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:41:31', 0),
(57872, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/statis', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'depot/statis', '/statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:41:31', 0),
(57873, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis?tungay=&denngay=', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:44:14', 0),
(57870, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/statis', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/hang_order', 'depot/statis', '/statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:41:19', 0),
(57869, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/hang_order', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'depot/hang_order', 'g_order', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:41:14', 0),
(57868, 1, '118.71.30.115', '/ordergiatot/vnadmin', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:41:03', 0),
(57867, 1, '118.71.30.115', '/ordergiatot/vnadmin/logout/index', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'logout/index', 't/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:41:03', 0),
(57866, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/statis', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'depot/statis', '/statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:40:55', 0),
(57865, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/update_note_statis', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'depot/update_note_statis', '_statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:40:54', 0),
(57860, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/detail?id=ODE=', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/orders', 'order/detail', '/detail', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:38:57', 0),
(57863, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/delete_statis?id=NA==', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'depot/delete_statis', '_statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:39:43', 0),
(57864, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/statis', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/depot/statis', 'depot/statis', '/statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:39:43', 0),
(57862, 1, '118.71.30.115', '/ordergiatot/vnadmin/depot/statis', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODE=', 'depot/statis', '/statis', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:39:35', 0),
(57861, 1, '118.71.30.115', '/ordergiatot/vnadmin/exchange/updateTotalBill', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin/order/detail?id=ODE=', 'exchange/updateTotalBill', 'talBill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:38:57', 0),
(57859, 1, '118.71.30.115', '/ordergiatot/vnadmin/order/orders', 'https://thoitrangbellamoda.com/ordergiatot/vnadmin', 'order/orders', '/orders', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 0, '2018-09-09 13:38:49', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site_option`
--

CREATE TABLE `site_option` (
  `id` int(11) NOT NULL,
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
  `exchange` float DEFAULT NULL,
  `active` tinyint(3) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `site_option`
--

INSERT INTO `site_option` (`id`, `coppy_right`, `site_name`, `slogan`, `link_instagram`, `site_logo`, `site_title`, `name_language`, `site_keyword`, `site_keyword_en`, `site_description`, `link_sky`, `link_printer`, `link_linkedin`, `site_email`, `site_fanpage`, `site_video`, `WM_text`, `WM_color`, `WM_size`, `hotline1`, `hotline2`, `hotline3`, `address`, `link_tt`, `favicon`, `company_name`, `shipping`, `site_promo`, `thanhtoan_tienmat`, `thanhtoan_chuyenkhoan`, `hdfMap`, `map_title`, `map_adrdress`, `map_phone`, `dia_chi_timkiem`, `lang`, `link_gg`, `link_youtube`, `face_id`, `timeopen`, `chat`, `site_logo_footer`, `map_iframe`, `input_text_1`, `domain`, `map_footer`, `icon_language`, `config_pro`, `config_pro_content`, `exchange`, `active`) VALUES
(1, NULL, 'ORDERGIATOT.VN', NULL, NULL, 'upload/img/logo/logo7.png', 'Order Giá Tốt | Đặt hàng quảng châu | order hàng quảng châu', 'Việt Nam', 'Order Giá Tốt, Đặt hàng quảng châu, dat hang quang chau, order hang quang chau, order hàng quảng châu, hàng order', '0', 'Chuyên hàng order, đặt hàng quảng châu uy tín, hàng quảng châu sỉ giá gốc, hàng quảng châu, hàng order, order nhanh rẻ an toàn.', NULL, NULL, NULL, 'sumi1092009@gmail.com', 'https://www.facebook.com/ordergiatot.vn', '', NULL, NULL, NULL, '012 99 44 66 88 (Ms Linh) ', 'Hotline: 012 99 44 66 88 (Ms Linh)', NULL, 'Số 515 Hoàng Hoa Thám, Vĩnh Phúc, Ba Đình, Hà Nội', NULL, 'upload/img/logo/Untitled-2.png', NULL, '', NULL, NULL, NULL, '(21.0449658,105.81191530000001)', 'ORDERGIATOT.VN ', 'Số 3 ngõ 515, ngách 13/4 Hoàng Hoa Thám, Ba Đình, Hà Nội', '012.99.44.66.88', 'ngõ 515 Hoàng Hoa Thám, Vĩnh Phúc, Ba Đình, Hà Nội, Vietnam', 'vi', '', '', NULL, NULL, NULL, 'upload/img/logo/logo1.png', NULL, '', 'https://ordergiatot.vn', NULL, 'img/vi.gif', '[]', '[]', 3480, 1),
(2, NULL, 'JSC polygon media', '', NULL, 'upload/img/logo4.png', '', 'English', '', '0', '', '0', NULL, NULL, 'hanhnh@polygonmedia.vn', '', 'uI2wcf05wq0', '', '', 0, '', '', '0', '', '', '0', NULL, '', '', NULL, NULL, '(21.0218044, 105.79087200000004)', 'Công ty', '', '', 'Yên hòa', 'en', '', '', '', '', '', NULL, '', NULL, '', '', 'img/en.gif', '[]', '', NULL, 1),
(3, '0', '1', '0', '0', '1', '1', '', '1', '1', '1', '0', '0', '0', '1', '1', '0', '0', '0', 0, '1', '1', '0', '1', '0', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', 'config', '1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '1', '', '1', NULL, 0),
(4, 'coppy right', 'tên đơn vị', 'slogan', 'Instagram', NULL, 'Tiêu đề website', NULL, NULL, NULL, NULL, 'link skype', 'link printer', 'link linkedin', NULL, 'fanpage facebook', 'Video (Youtube)', 'Chữ Nổi Warter Mark', 'Màu Chữ (Hex Color VD : #ed1c2', 1, 'Hotline', 'Hotline 2', 'điên thoại bàn', 'địa chỉ', 'link twitter', NULL, NULL, 'Thông tin chân trang', 'khuyến mại', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'conf_text', 'link google', 'link youtube', 'id ap facebook', 'thời gian mở cửa', 'mã chát online', 'logo chân trang', 'Mã nhúng bản đồ chân trang', 'mã số thuê', 'tên miền', 'mã nhúng javascript', '', '', '', NULL, 0),
(5, NULL, NULL, NULL, NULL, NULL, NULL, 'japanese', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ja', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'upload/img/logo/ja4.jpg', '[]', '', NULL, 1),
(6, NULL, NULL, NULL, NULL, NULL, NULL, 'Korean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ko', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'upload/img/logo/lag21.png', '[]', '', NULL, 1),
(7, NULL, NULL, NULL, NULL, NULL, NULL, 'hungary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hu', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'upload/img/logo/hungary.png', '[]', '', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staticpage`
--

CREATE TABLE `staticpage` (
  `id` int(11) NOT NULL,
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
  `page_footer` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `staticpage`
--

INSERT INTO `staticpage` (`id`, `name`, `alias`, `description`, `content`, `image`, `lang`, `home`, `hot`, `focus`, `contact_page`, `title_seo`, `keyword_seo`, `description_seo`, `parent_id`, `page_footer`) VALUES
(39, 'Giới thiệu về ORDERGIATOT.VN', 'gioi-thieu-ve-ordergiatot-vn', '', '<p style=\"text-align:justify\"><span style=\"color:#ff0000\"><span style=\"font-size:20px\"><strong>ORDERGIATOT.VN</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>ORDERGIATOT.VN</strong>&nbsp;chuy&ecirc;n đặt h&agrave;ng trực tuyến tr&ecirc;n website thương mại h&agrave;ng đầu Trung Quốc (Taobao.com, Alibaba.com, Tmall.com, paipai.com, 1688.com, ...)﻿</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">L&agrave; một trong những c&ocirc;ng ty h&agrave;ng đầu trong lĩnh vực giao nhận vận tải kh&ocirc;ng to&agrave;n cầu, ordergiatot.vn vượt trội trong việc cung cấp c&aacute;c giải ph&aacute;p vận chuyển ph&ugrave; hợp cho nhu cầu của từng kh&aacute;ch h&agrave;ng.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>ORDERGIATOT.VN</strong>&nbsp;lu&ocirc;n kh&ocirc;ng ngừng ph&aacute;t triển quy m&ocirc; cũng như chất lượng dịch vụ. ﻿Với mục ti&ecirc;u trở th&agrave;nh nh&agrave; cung cấp dịch vụ thương mại tốt nhất Việt Nam. Lu&ocirc;n chủ động lắng nghe chia sẻ những &yacute; kiến phản hồi từ kh&aacute;ch h&agrave;ng. Tạo dựng thương hiệu bằng uy t&iacute;n v&agrave; niềm tin với đối t&aacute;c c&ugrave;ng triết l&yacute; kinh doanh</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e74c3c\"><span style=\"font-size:18px\"><strong>&quot;ĐỦ LỚN ĐỂ XỬ L&Yacute; - ĐỦ NHỎ ĐỂ QUAN T&Acirc;M&quot;</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">QU&Yacute; KH&Aacute;CH SẼ ĐƯỢC G&Igrave; KHI ĐẾN VỚI <strong>ORDERGIATOT.VN</strong> :</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">- Tư vấn khởi nghiệp kinh doanh nhỏ với số vốn &iacute;t gi&uacute;p bạn th&agrave;nh c&ocirc;ng</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">- Cung cấp dịch vụ nhập h&agrave;ng nhanh &amp; số lượng sản phẩm lớn cho những b&ecirc;n đang chuẩn bị l&agrave;m chương tr&igrave;nh tri &acirc;n kh&aacute;ch h&agrave;ng, ng&agrave;y th&agrave;nh lập c&ocirc;ng ty &hellip;.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">- Đ&agrave;m ph&aacute;n kinh doanh với nh&agrave; cung cấp : tư vấn t&igrave;m nguồn h&agrave;ng, xưởng sản xuất uy t&iacute;n Quảng Ch&acirc;u &ndash; Quảng Đ&ocirc;ng , Chiết Giang - H&agrave;ng Ch&acirc;u , Thượng Hải , Bắc Kinh</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">﻿- Tăng hiệu quả c&ocirc;ng việc bằng c&aacute;ch tối ưu h&oacute;a c&aacute;c quy tr&igrave;nh : &Aacute;p dụng hệ thống phần mềm đặt h&agrave;ng th&ocirc;ng minh, qu&yacute; kh&aacute;ch chủ động chọn h&agrave;ng trực tiếp tr&ecirc;n website của xưởng b&ecirc;n Trung Quốc m&agrave; kh&ocirc;ng phải qua bất kỳ b&ecirc;n trung gian kh&aacute;c</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">- Đội ngũ tư vấn chuy&ecirc;n nghiệp, nhiệt t&igrave;nh, am hiểu c&aacute;c loại nguồn h&agrave;ng Trung Quốc v&agrave; c&aacute;c dịch vụ vận chuyển k&yacute; gửi h&agrave;ng ho&aacute; Trung Quốc &lt;=&gt; Việt Nam</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">- Gi&aacute; cả dịch vụ ch&uacute;ng t&ocirc;i đưa ra lu&ocirc;n cạnh tranh tốt hơn, mức gi&aacute; rẻ hơn cạnh tranh thị trường Việt Nam</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">- Quy tr&igrave;nh l&agrave;m việc chuy&ecirc;n nghiệp, tr&aacute;ch nhiệm v&agrave; minh bạch.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">- Cam kết thời gian v&agrave; đảm bảo đơn h&agrave;ng cho qu&yacute; kh&aacute;ch.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://dathangchina247.com/web/demo_hoachat/upload/images/Untitled-1.jpg\" /><img alt=\"\" src=\"https://dathangchina247.com/upload/images/Untitled-1.jpg\" style=\"width:80%\" /></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">GIỚI THIỆU QUY TR&Igrave;NH L&Agrave;M VIỆC TR&Ecirc;N HỆ THỐNG <strong>ORDERGIATOT.VN</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">- C&agrave;i đặt c&ocirc;ng cụ: C&agrave;i đặt extensions cho tr&igrave;nh duyệt của bạn</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">- T&igrave;m sản phẩm: T&igrave;m sản phẩm cần mua h&agrave;ng tr&ecirc;n website (taobao.com, alibaba.com, tmall.com, 1688.com, ...) v&agrave; đặt v&agrave;o giỏ h&agrave;ng sau khi đ&atilde; c&agrave;i đặt c&ocirc;ng cụ</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">- Tạo đơn h&agrave;ng: Sau khi t&igrave;m đủ những sản phẩm cần đặt bạn v&agrave;o phần giỏ h&agrave;ng ri&ecirc;ng kiểm tra lại sản phẩm v&agrave; t&iacute;ch v&agrave;o &ocirc; chọn sản phẩm trong giỏ h&agrave;ng rồi gửi đơn h&agrave;ng cho ch&uacute;ng t&ocirc;i chờ x&aacute;c nhận</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">- Thanh to&aacute;n: Kết đơn h&agrave;ng bạn cần thanh to&aacute;n số tiền ứng với sản phẩm đ&atilde; đặt</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">- Trả ph&iacute; ship v&agrave; nhận h&agrave;ng: Khi h&agrave;ng đ&atilde; về b&ecirc;n c&ocirc;ng ty sẽ th&ocirc;ng b&aacute;o kh&aacute;ch h&agrave;ng gi&aacute; ph&iacute; ship, ph&iacute; c&acirc;n nặng cần th&ecirc;m</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><u><img alt=\"\" src=\"https://dathangchina247.com/upload/images/Untitled-2.jpg\" style=\"width:80%\" /></u></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>ORDERGIATOT.VN</strong> XIN CAM KẾT VỚI QU&Yacute; KH&Aacute;CH:</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">- Đảm bảo h&agrave;ng ho&aacute; đến tay kh&aacute;ch h&agrave;ng theo đ&uacute;ng y&ecirc;u cầu đơn h&agrave;ng</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">- Tư vấn, giải đ&aacute;p thắc mắc của qu&yacute; kh&aacute;ch li&ecirc;n quan đến đặt h&agrave;ng mua h&agrave;ng online tr&ecirc;n website thương mại điện tử của Trung Quốc (alibaba.com, taobao.com, 1688.com, tmall.com, ...), vận chuyển h&agrave;ng ho&aacute; Trung Quốc &lt;=&gt; Việt Nam, đ&aacute;nh h&agrave;ng tại kho b&ecirc;n Trung Quốc.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">&nbsp;&nbsp;&nbsp; - Ho&agrave;n tiền 100% nếu mất h&agrave;ng hoặc nếu qu&aacute; 30 ng&agrave;y kh&aacute;ch chưa nhận được h&agrave;ng ho&aacute; m&agrave; kh&ocirc;ng c&oacute; th&ocirc;ng b&aacute;o từ Order Trung Quốc</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">&nbsp;&nbsp;&nbsp; - Hỗ trợ khiếu nại xưởng sản xuất Trung quốc nếu h&agrave;ng giao sai mẫu m&atilde;, chất lượng.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#ff0000\"><span style=\"font-size:20px\">H&Atilde;Y ĐẾN VỚI <strong>ORDERGIATOT.VN</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#ff0000\"><span style=\"font-size:20px\">&quot;ĐỦ LỚN ĐỂ XỬ L&Yacute; - ĐỦ NHỎ ĐỂ QUAN T&Acirc;M&rdquo;</span></span></p>\r\n', NULL, 'vi', 0, NULL, NULL, 0, '', '', '', 0, 0),
(40, 'Đặt hàng Trung Quốc - Việt Nam', 'dat-hang-trung-quoc-viet-nam', '<p>Đặt h&agrave;ng tr&ecirc;n c&aacute;c website Thương mại điện tử lớn của Trung Quốc như : taobao.com, tmall.com 1688.com, eelly.com, alibaba.com</p>\r\n', '', NULL, 'vi', NULL, NULL, 0, 0, '', '', '', 0, 0),
(41, 'Vận chuyển hàng Trung Quốc - Việt Nam', 'van-chuyen-hang-trung-quoc-viet-nam', '<p>Dịch vụ vận chuyển Trung Quốc - Việt Nam mang đến sự thuận tiện, tiết kiệm thời gian chi ph&iacute; v&agrave; sự y&ecirc;n t&acirc;m của kh&aacute;ch h&agrave;ng</p>\r\n', '', NULL, 'vi', NULL, NULL, 0, 0, '', '', '', 0, 0),
(42, 'Tư vấn và hỗ trợ nguồn hàng Trung Quốc', 'tu-van-va-ho-tro-nguon-hang-trung-quoc', '<p>Phục vụ tư vấn chuy&ecirc;n nghiệp am hiểu nguồn h&agrave;ng Trung Quốc. Dễ d&agrave;ng thương lượng gi&aacute; cả tiết kiệm chi ph&iacute; tối đa cho kh&aacute;ch h&agrave;ng.</p>\r\n', '', NULL, 'vi', NULL, NULL, 0, 0, '', '', '', 0, 0),
(43, 'Chuyển dổi tiền tệ Việt Nam - Trung Quốc', 'chuyen-doi-tien-te-viet-nam-trung-quoc', '<p>Dịch vụ chuyển khoản nạp tiền Alipay, Taobao nhanh ch&oacute;ng</p>\r\n', '', NULL, 'vi', NULL, NULL, 0, 0, '', '', '', 0, 0),
(44, 'Chính sách quy định', 'chinh-sach-quy-dinh', '', '', NULL, 'vi', NULL, NULL, NULL, 0, '', '', '', 0, 0),
(45, 'Hướng dẫn', 'huong-dan', '', '', NULL, 'vi', NULL, NULL, NULL, 0, '', '', '', 0, 0),
(46, 'Bảng giá', 'bang-gia', '', '<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/images/price1(2).png\" style=\"height:584px; width:649px\" /></p>\r\n', NULL, 'vi', NULL, NULL, NULL, 0, '', '', '', 0, 0),
(47, 'Quy định thanh toán', 'quy-dinh-thanh-toan', '', '<ul>\r\n	<li><span style=\"font-size:medium\">H&agrave;ng chỉ thật sự được đặt mua sau khi kh&aacute;ch h&agrave;ng đặt cọc.</span></li>\r\n	<li><span style=\"font-size:medium\">Kh&aacute;ch cọc từ&nbsp;<strong>50 - 100%&nbsp;</strong>số tiền của đơn h&agrave;ng.</span></li>\r\n	<li><span style=\"font-size:medium\">H&agrave;ng về sau<strong>&nbsp;1-2&nbsp;ng&agrave;y </strong>kể từ khi kho Trung Quốc k&yacute; nhận</span></li>\r\n	<li><span style=\"font-size:medium\">M&agrave;u sắc c&oacute; thể đậm hoặc nhạt hơn tr&ecirc;n h&igrave;nh do đ&egrave;n flash v&agrave; photoshop.</span></li>\r\n	<li><span style=\"font-size:medium\">Shop sẽ thanh l&yacute; đơn h&agrave;ng nếu sau&nbsp;<strong>1 tuần</strong>&nbsp;kh&aacute;ch h&agrave;ng kh&ocirc;ng thanh to&aacute;n tiền nhận h&agrave;ng kể từ khi nhận được th&ocirc;ng b&aacute;o h&agrave;ng về, kh&ocirc;ng ho&agrave;n trả lại tiền kh&aacute;ch đ&atilde; cọc.</span></li>\r\n</ul>\r\n', NULL, 'vi', NULL, NULL, NULL, 0, '', '', '', 0, 0),
(48, 'Quy định bảo hiểm hàng hoá', 'quy-dinh-bao-hiem-hang-hoa', '', '<ul>\r\n	<li><span style=\"font-size:medium\">Gi&aacute; trị sản phẩm tr&ecirc;n&nbsp;<strong>200 tệ</strong>&nbsp;sẽ bị mất ph&iacute; bảo hiểm&nbsp;<strong>3%</strong>&nbsp;(kh&ocirc;ng bắt buộc, KH c&oacute; thể hủy ở bước Chưa thanh to&aacute;n)</span></li>\r\n	<li>\r\n	<div><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif\"><span style=\"font-size:medium\"><span style=\"font-family:RobotoCondensed-Regular,Helvetica,Arial,sans-serif\">Rủi ro h&agrave;ng h&oacute;a xảy ra nếu sản phẩm bị r&aacute;ch n&aacute;t, sai m&agrave;u sai cỡ.... nếu mua bảo hiểm h&agrave;ng h&oacute;a sẽ được đền b&ugrave; 100% tiền h&agrave;ng (TH n&agrave;y qu&yacute; kh&aacute;ch trả lại h&agrave;ng cho ch&uacute;ng t&ocirc;i)</span></span></span></span></span></div>\r\n\r\n	<div><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif\"><span style=\"font-size:15px\"><span style=\"font-family:RobotoCondensed-Regular,Helvetica,Arial,sans-serif\">Lưu &yacute;: Đối với những h&agrave;ng h&oacute;a đặc biệt,h&agrave;ng kỹ thuật, h&agrave;ng kh&oacute; vận chuyển vui l&ograve;ng li&ecirc;n hệ với bộ phận CSKH để biết th&ecirc;m chi tiết.</span></span></span></span></span></div>\r\n	</li>\r\n</ul>\r\n', NULL, 'vi', NULL, NULL, NULL, 0, '', '', '', 0, 0),
(49, 'Chính sách giải quyết khiếu nại', 'chinh-sach-giai-quyet-khieu-nai', '', '<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:RobotoCondensed-Regular,Helvetica,Arial,sans-serif\">Dưới đ&acirc;y l&agrave; quy định giải quyết khiếu nại của ORDERGIATOT.VN. Mọi kh&aacute;ch h&agrave;ng phải đồng &yacute; với quy định sử dụng n&agrave;y mới c&oacute; thể bắt đầu mua h&agrave;ng v&agrave; thanh to&aacute;n.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:RobotoCondensed-Regular,Helvetica,Arial,sans-serif\">Mọi khiếu nại chỉ được giải quyết khi c&oacute; h&iacute;nh ảnh đi k&egrave;m bao gồm ảnh : tag m&aacute;c, m&atilde;... sản phẩm khiếu nại, ảnh bao b&igrave; c&oacute; m&atilde; bill của shop v&agrave; h&igrave;nh ảnh của tất cả sản phẩm nhận được của shop đ&oacute; v&agrave; ảnh c&acirc;n nặng. Nếu kh&ocirc;ng c&oacute; h&igrave;nh ảnh th&igrave; c&aacute;c khiếu nại sẽ kh&ocirc;ng được giải quyết.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:RobotoCondensed-Regular,Helvetica,Arial,sans-serif\">1. Đối với h&agrave;ng hết, h&agrave;ng bị thất lạc đ&atilde; được&nbsp;ORDERGIATOT.VN&nbsp;l&agrave;m r&otilde; nguy&ecirc;n do sẽ được bồi thường 100% tiền h&agrave;ng (bao gồm cả ph&iacute; vận chuyển)<br />\r\n<br />\r\n2. Đối với h&agrave;ng sai m&agrave;u, sai k&iacute;ch cỡ, sai mẫu mức độ nhẹ (v&iacute; dụ h&igrave;nh ảnh tr&ecirc;n &aacute;o quần kh&aacute;c m&ocirc; tả, đặt d&agrave;i tay về cọc tay...) sẽ được bồi thường&nbsp;<strong>10%</strong>&nbsp;gi&aacute; th&agrave;nh sản phẩm, kh&ocirc;ng chấp nhận TRẢ LẠI H&Agrave;NG<br />\r\n<br />\r\n3. Đối với h&agrave;ng sai mẫu mức độ nặng (kh&aacute;c ho&agrave;n to&agrave;n với h&igrave;nh m&ocirc; tả) sẽ được bồi thường&nbsp;<strong>50%</strong>&nbsp;kh&ocirc;ng trả lại h&agrave;ng, hoặc bồi thường&nbsp;<strong>100%</strong>&nbsp;tiền h&agrave;ng (kh&ocirc;ng bao gồm ph&iacute; vận chuyển, ph&iacute; dịch vụ) v&agrave; được trả lại h&agrave;ng. Trường hợp n&agrave;y&nbsp;ORDERGIATOT.VN&nbsp;sẽ thỏa thuận nhờ kh&aacute;ch b&aacute;n gi&uacute;p<br />\r\n4. Đối với h&agrave;ng r&aacute;ch n&aacute;t, mốc, nh&ograve;e m&agrave;u..gửi kh&aacute;ch h&agrave;ng khắc phục v&agrave; b&aacute;n gi&uacute;p, nếu kh&ocirc;ng thể khắc phục được sẽ được bồi thường&nbsp;<strong>100%</strong>&nbsp;tiền h&agrave;ng (kh&ocirc;ng bao gồm ph&iacute; vận chuyển, ph&iacute; dịch vụ) v&agrave; trả lại h&agrave;ng cho&nbsp;ORDERGIATOT.VN<br />\r\n<br />\r\n5. Đối với h&agrave;ng về muộn qu&aacute; 1 th&aacute;ng kể từ thời điểm mua h&agrave;ng&nbsp;ORDERGIATOT.VN&nbsp;sẽ bồi thường&nbsp;<strong>30%</strong>&nbsp;gi&aacute; trị h&agrave;ng hoặc nhận lại h&agrave;ng v&agrave; bồi thường&nbsp;<strong>100%</strong>&nbsp;gi&aacute; trị h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng TRẢ LẠI H&Agrave;NG cho ch&uacute;ng t&ocirc;i<br />\r\n<br />\r\n6. Đối với h&agrave;ng đ&atilde; mua bảo hiểm m&agrave; h&agrave;ng về bị sai m&agrave;u, sai cỡ, sai mẫu, r&aacute;ch n&aacute;t,...sẽ được bồi thường&nbsp;<strong>100%</strong>&nbsp;gi&aacute; trị tiền h&agrave;ng. Nếu h&agrave;ng tr&ecirc;n&nbsp;<strong>200 tệ</strong>&nbsp;kh&ocirc;ng mua bảo hiểm m&agrave; về c&oacute; vấn đề g&igrave; sẽ chỉ được bồi thường&nbsp;<strong>10%</strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:RobotoCondensed-Regular,Helvetica,Arial,sans-serif\">7. Đối với h&agrave;ng phụ kiện( gi&aacute; dưới 10 tệ),&nbsp;ORDERGIATOT.VN&nbsp;chỉ kiểm số lượng chứ kh&ocirc;ng kiểm sai m&agrave;u, sai cỡ hay hỏng h&oacute;c...do vậy chỉ chấp nhận Khiếu nại thiếu Số Lượng, c&aacute;c khiếu nại kh&aacute;c ở h&agrave;ng phụ kiện kh&ocirc;ng được chấp nhận</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:RobotoCondensed-Regular,Helvetica,Arial,sans-serif\">8. Đối với h&agrave;ng điện tử, m&aacute;y m&oacute;c...ORDERGIATOT.VN&nbsp;kh&ocirc;ng cam kết kiểm h&agrave;ng theo t&iacute;nh năng hoặc th&ocirc;ng số sản phẩm. Nếu h&agrave;ng lỗi do vận chuyển sẽ được đền b&ugrave; theo mục 3 v&agrave; 6.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:RobotoCondensed-Regular,Helvetica,Arial,sans-serif\">CH&Uacute; &Yacute; : Những sản phẩm bị lỗi kĩ thuật, kh&aacute;c chất liệu, kh&aacute;c chất lượng.&nbsp;ORDERGIATOT.VN&nbsp;KH&Ocirc;NG CHỊU TR&Aacute;CH NHIỆM.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:RobotoCondensed-Regular,Helvetica,Arial,sans-serif\">9. Đối với h&agrave;ng mua ở WECHAT: KH&Aacute;CH PHẢI CỌC 100% GI&Aacute; TRỊ ĐƠN H&Agrave;NG. Mức&nbsp;độ rủi do cao ro kh&ocirc;ng c&oacute; b&ecirc;n thứ 3 bảo hộ (như b&ecirc;n Alibaba v&agrave; 1 số trang uy t&iacute;n của b&ecirc;n Trung Quốc), V&igrave; vậy trong trường hợp xảy ra sự cố như mất m&aacute;t h&agrave;ng h&oacute;a hoặc sai mẫu m&atilde; kiểu d&aacute;ng ..... Ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu tr&aacute;ch nhiệm, những vẫn sẽ hỗ trợ kh&aacute;ch h&agrave;ng&nbsp;đ&agrave;m ph&aacute;n với ph&iacute;a&nbsp;Wechat, nếu kh&ocirc;ng&nbsp;được th&igrave; kh&aacute;ch h&agrave;ng sẽ phải chấp nhận r&ugrave;i ro n&agrave;y.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:RobotoCondensed-Regular,Helvetica,Arial,sans-serif\">&nbsp;Đối với h&agrave;ng mua ở c&aacute;c h&atilde;ng: HM, ZARa, Forerver21.Bershka...&nbsp; ORDERGIATOT.VN&nbsp; kh&ocirc;ng chịu tr&aacute;ch nhiệm giải quyết&nbsp; khiếu nại, kh&aacute;ch h&agrave;ng phải chịu mọi rủi ro. ( nghĩa l&agrave; chỉ mua h&agrave;ng, kiểm h&agrave;ng v&agrave; vận chuyển về Việt Nam).&nbsp;</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:RobotoCondensed-Regular,Helvetica,Arial,sans-serif\">ORDERGIATOT.VN kh&ocirc;ng c&oacute; h&igrave;nh thức đổi trả h&agrave;ng, kh&aacute;ch h&agrave;ng phải l&agrave;m lại đơn h&agrave;ng kh&aacute;c.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:RobotoCondensed-Regular,Helvetica,Arial,sans-serif\">Khiếu nại chỉ được giai quyết trong v&ograve;ng&nbsp;<strong>3 ng&agrave;y</strong>&nbsp;kể từ ng&agrave;y giao h&agrave;ng tại kho Việt Nam, nếu qu&aacute; thời gian&nbsp;<strong>3 ng&agrave;y</strong>&nbsp;ORDERGIATOT.VN&nbsp;ko giải quyết.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><br />\r\n<span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"font-family:RobotoCondensed-Regular,Helvetica,Arial,sans-serif\">Tất cả kh&aacute;ch h&agrave;ng trước khi mua h&agrave;ng phải đồng &yacute; với bản cam kết Trả h&agrave;ng &amp; Ho&agrave;n tiền tr&ecirc;n. Mỗi khiếu nại chỉ được giải quyết theo quy định.</span></span></span></p>\r\n', NULL, 'vi', NULL, NULL, NULL, 0, '', '', '', 0, 0),
(50, 'Chính sách giao hàng', 'chinh-sach-giao-hang', '', '<ul>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:14px\">H&agrave;ng được giao ngay sau khi đ&atilde; kiểm xong (c&oacute; thẻ kiểm h&agrave;ng tại TQ hoặc VN)</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:14px\">Kh&aacute;ch h&agrave;ng thanh to&aacute;n tiền theo c&ocirc;ng nợ tr&ecirc;n t&agrave;i ch&iacute;nh trước khi h&agrave;ng được chuyển</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:14px\">T&ugrave;y khoảng c&aacute;ch kho h&agrave;ng tới kh&aacute;ch h&agrave;ng bao xa để c&oacute; thẻ &aacute;p ph&iacute; vận chuyển, sẽ được nh&acirc;n vi&ecirc;n ODHANG b&aacute;o trước. Nội th&agrave;nh HN từ 30-60K. Chuyển xe kh&aacute;ch qu&yacute; kh&aacute;ch chịu ph&iacute; v&agrave;o bến v&agrave; tiền xe từ bến tới điểm nhận h&agrave;ng&nbsp;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:14px\">&nbsp;Nếu h&agrave;ng CPN sẽ mất 1-2 ng&agrave;y qu&yacute; kh&aacute;ch mới nhận được. Trường hợp n&agrave;y cũng sẽ được nh&acirc;n vi&ecirc;n GIAO H&Agrave;NG&nbsp;b&aacute;o trước</span></li>\r\n</ul>\r\n', NULL, 'vi', NULL, NULL, NULL, 0, '', '', '', 0, 0),
(51, 'Hướng dẫn mua hàng', 'huong-dan-mua-hang', '', '', NULL, 'vi', NULL, NULL, NULL, 0, '', '', '', 0, 0),
(52, 'Hướng dẫn ship hàng', 'huong-dan-ship-hang', '', '', NULL, 'vi', NULL, NULL, NULL, 0, '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statis`
--

CREATE TABLE `statis` (
  `id` int(11) NOT NULL,
  `note_vn` text CHARACTER SET utf8,
  `note_cn` text CHARACTER SET utf8,
  `date` int(11) NOT NULL,
  `time_update` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `statis`
--

INSERT INTO `statis` (`id`, `note_vn`, `note_cn`, `date`, `time_update`) VALUES
(3, '<p>?<p>oke</p>', '<p>C<p>Có hai mã</p><p>ngày 80 tháng 8</p>', 1535562000, 1535622729),
(5, '<p>ok hang da nhan du</p><p>ok hang da nhan du</p>', '<p>gui 3 bao 30 kg. tien u lieu 50 te</p>', 1536080400, 1536112931),
(7, '<p>hhgghhhht</p><p>hhgghhhht</p>', NULL, 1536426000, 1536501903);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `street`
--

CREATE TABLE `street` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pre` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `districtid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `support_online`
--

CREATE TABLE `support_online` (
  `id` int(11) NOT NULL,
  `yahoo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `skype` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `image` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `support_online`
--

INSERT INTO `support_online` (`id`, `yahoo`, `phone`, `skype`, `email`, `name`, `active`, `image`, `type`, `address`) VALUES
(19, 'https://id.zalo.me/account/login?continue=https%3A', '0936236786', 'skype_trantrung', 'trunag123@gmail.com', 'Mr Trung', 1, NULL, 2, 'abc'),
(20, 'yahoo_tranmanh', '0977160509', 'https://www.facebook.com/', 'tranmanh@gmail.com', 'đặng trần mạnh', 1, NULL, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `alias`, `lang`, `time`, `title_seo`, `keyword_seo`, `description_seo`, `sort`) VALUES
(1, 'manh', 'manh', 'vi', 1526529820, NULL, NULL, NULL, 0),
(2, 'tuyen', 'tuyen', 'vi', 1526529820, NULL, NULL, NULL, 0),
(3, 'tin tức', 'tin-tuc', 'vi', 1526530190, '', '', '', 1),
(4, 'Kem bb', 'kem-bb', 'vi', 1526530223, '', '', '', 2),
(5, 'kem', 'kem', 'vi', 1526530670, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags_news`
--

CREATE TABLE `tags_news` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags_to_news`
--

CREATE TABLE `tags_to_news` (
  `id` int(11) NOT NULL,
  `id_raovat` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags_to_product`
--

CREATE TABLE `tags_to_product` (
  `id` int(11) NOT NULL,
  `id_tags` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags_to_product`
--

INSERT INTO `tags_to_product` (`id`, `id_tags`, `id_product`) VALUES
(1, 1, 101),
(2, 2, 101),
(3, 5, 100),
(4, 4, 100),
(5, 3, 100),
(6, 1, 100),
(7, 2, 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_xnt`
--

CREATE TABLE `tbl_xnt` (
  `id` int(11) NOT NULL,
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
  `price_import` int(11) DEFAULT NULL COMMENT 'Giá Nhập Hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_ke_online`
--

CREATE TABLE `thong_ke_online` (
  `id` int(11) NOT NULL,
  `access_date` int(11) NOT NULL,
  `today` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thong_ke_online`
--

INSERT INTO `thong_ke_online` (`id`, `access_date`, `today`) VALUES
(37, 1517850000, 0),
(38, 1517936400, 1),
(39, 1518022800, 29),
(40, 1518109200, 20),
(41, 1519578000, 9),
(42, 1519664400, 15),
(43, 1519750800, 5),
(44, 1521046800, 55),
(45, 1521133200, 9),
(46, 1521219600, 233),
(47, 1526317200, 332),
(48, 1526403600, 258),
(49, 1526490000, 541),
(50, 1526835600, 251),
(51, 1526922000, 245),
(52, 1527008400, 95),
(53, 1527094800, 114),
(54, 1527181200, 51),
(55, 1527267600, 378),
(56, 1527440400, 265),
(57, 1527699600, 427),
(58, 1527786000, 20),
(59, 1528045200, 41),
(60, 1528131600, 43),
(61, 1528218000, 120),
(62, 1528390800, 182),
(63, 1528477200, 37),
(64, 1528736400, 336),
(65, 1528822800, 128),
(66, 1528995600, 435),
(67, 1529341200, 15),
(68, 1529427600, 105),
(69, 1529514000, 272),
(70, 1529600400, 73),
(71, 1529946000, 299),
(72, 1530032400, 610),
(73, 1530118800, 31),
(74, 1530205200, 103),
(75, 1530464400, 1424),
(76, 1530550800, 1532),
(77, 1530637200, 3000),
(78, 1530723600, 468),
(79, 1530896400, 2458),
(80, 1531069200, 804),
(81, 1531155600, 4388),
(82, 1531242000, 209),
(83, 1531328400, 2093),
(84, 1531414800, 2),
(85, 1531674000, 4907),
(86, 1531760400, 344),
(87, 1531846800, 128),
(88, 1531933200, 20),
(89, 1532019600, 543),
(90, 1532278800, 740),
(91, 1532538000, 77),
(92, 1532710800, 1),
(93, 1533834000, 200),
(94, 1534093200, 290),
(95, 1534179600, 1604),
(96, 1534266000, 2165),
(97, 1534352400, 1266),
(98, 1534438800, 139),
(99, 1534525200, 731),
(100, 1534698000, 36),
(101, 1534784400, 70),
(102, 1534957200, 242),
(103, 1535043600, 11),
(104, 1535302800, 265),
(105, 1535389200, 184),
(106, 1535562000, 481),
(107, 1535648400, 736),
(108, 1535994000, 2),
(109, 1536080400, 742),
(110, 1536166800, 106),
(111, 1536253200, 359),
(112, 1536339600, 109),
(113, 1536426000, 102),
(114, 1536512400, 112);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracking`
--

CREATE TABLE `tracking` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` varchar(255) DEFAULT NULL,
  `shop_sku` varchar(255) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `tracking_id` varchar(255) DEFAULT NULL,
  `phi_noi_dia` float(10,2) DEFAULT NULL,
  `weight` float(11,1) DEFAULT NULL,
  `weight_rate` int(11) DEFAULT '0',
  `phi_ngoai_cn` float(10,2) DEFAULT NULL,
  `phi_ngoai_vn` float(10,2) DEFAULT NULL,
  `thanh_toan_thuc` float(10,2) DEFAULT NULL,
  `message` text,
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0.Khởi tạo,1.trung quoc nhận hàng,2.việt nam nhận hàng',
  `status_shop` int(11) DEFAULT '1' COMMENT '1-10, trạng thai shop'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tracking`
--

INSERT INTO `tracking` (`id`, `order_id`, `user_id`, `shop_id`, `shop_sku`, `shop_name`, `tracking_id`, `phi_noi_dia`, `weight`, `weight_rate`, `phi_ngoai_cn`, `phi_ngoai_vn`, `thanh_toan_thuc`, `message`, `status`, `status_shop`) VALUES
(79, 79, 646, '1643850934', NULL, '新宇服装店', '123456789', 5.00, 5.0, NULL, 15.00, 50000.00, 35.00, NULL, 2, 1),
(78, 79, 646, '3358485477', NULL, '东莞市二人前贸易有限公司', '8936040490230', 5.00, 2.0, NULL, 4.00, 20000.00, 1100.00, NULL, 6, 7),
(80, 80, 646, '1945009891', NULL, '米米你官方旗舰店', '456456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL),
(81, 81, 646, '3216110911', '654321', '泗阳县美淘电子商务有限公司', '191142250870', 4.00, 1.0, NULL, 2.00, 10000.00, 20.00, NULL, 6, 3),
(82, 82, 658, 'ab932bedc00f6f3a49be40936b1ccb8e', '456456', 'dlenp众合嘉信专卖', '123123', 15.00, 10.0, 20000, 28.00, 100000.00, 0.00, NULL, 8, 1),
(83, 82, 658, '7d03caefcfae32101e06cc5db5a4ae39', '123804860', 'ab内衣旗舰店', '987654', 5.00, 2.8, 20000, 10.00, 50000.00, 0.00, NULL, 6, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price` float(255,0) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `admin_user` int(11) DEFAULT NULL,
  `form` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `note` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `type`, `price`, `time`, `id_user`, `admin_user`, `form`, `image`, `note`) VALUES
(4, '0', 30000000, 1530776566, 649, 2, 'Chuyển khoản', NULL, ''),
(5, '0', 100000, 1530936648, 647, 2, 'Chuyển khoản', NULL, ''),
(6, '0', 1000000, 1530936656, 647, 2, 'Chuyển khoản', NULL, ''),
(7, '0', 1000000000, 1530945712, 647, 2, 'Chuyển khoản', NULL, ''),
(9, '0', 50000000, 1531194462, 646, 2, 'Chuyển khoản', NULL, ''),
(10, '0', 500000000, 1531204394, 646, 2, 'Chuyển khoản', NULL, ''),
(11, '1', 50000000, 1531276456, 646, 2, 'Chuyển khoản', NULL, ''),
(12, '0', 50000000, 1531276500, 646, 2, 'Chuyển khoản', NULL, ''),
(14, '1', 634545024, 1531706178, 646, 2, 'Chuyển khoản', NULL, ''),
(15, '1', 6694400, 1531706334, 646, 2, 'Chuyển khoản', NULL, 'Thanh toán hóa đơn DH51'),
(16, '1', 1400415, 1531820742, 649, 2, 'Chuyển khoản', NULL, 'Thanh toán hóa đơn DH53'),
(17, '0', 5000000, 1531880490, 654, 2, 'Chuyển khoản', NULL, ''),
(18, '0', 1000000, 1535345005, 657, 2, 'Chuyển khoản', 'upload/img/transactions/price2.png', ''),
(19, '0', 200000, 1535345245, 657, 2, 'Chuyển khoản', 'upload/img/transactions/price1.png', ''),
(20, '1', 3013962, 1535699561, 646, 2, 'Chuyển khoản', NULL, 'Thanh toán hóa đơn DH79'),
(21, '0', 1000000, 1535715570, 658, 2, 'Chuyển khoản', NULL, 'nạp ngày 31/8'),
(22, '0', 10000, 1536114093, 658, 2, 'Chuyển khoản', 'upload/img/transactions/vw2wyy-simg-de2fe0-500x500-maxb.jpg', ''),
(23, '0', 1000000, 1536502070, 658, 2, 'Chuyển khoản', 'upload/img/transactions/40492172-319057505534619-502486013713580032-n.jpg', 'nap tien ngay 5.9'),
(24, '0', 0, 1536118222, 646, 2, 'Chuyển khoản', 'upload/img/transactions/d3xmsf-simg-de2fe0-500x500-maxb.jpg', ''),
(25, '0', 5000000, 1536502208, 658, 2, 'Chuyển khoản', 'upload/img/transactions/40492172-319057505534619-502486013713580032-n1.jpg', 'nạp tiền ngày 9.9');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `block` tinyint(3) UNSIGNED DEFAULT NULL,
  `birthday` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` int(1) UNSIGNED DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address_province` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `address_district` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `address_ward` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `use_mobile` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `use_face` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `use_yahoo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `use_skype` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `use_group` int(3) UNSIGNED DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT NULL,
  `use_key` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `smskey` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `token` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `deleted` tinyint(3) UNSIGNED DEFAULT NULL,
  `use_regisdate` int(11) UNSIGNED DEFAULT NULL,
  `use_enddate` int(11) UNSIGNED DEFAULT NULL,
  `lastest_login` int(11) UNSIGNED DEFAULT NULL,
  `signup_date` int(11) DEFAULT NULL,
  `lever` tinyint(1) DEFAULT '0',
  `fee` float DEFAULT '8',
  `wallet` float DEFAULT NULL,
  `depot` int(5) DEFAULT NULL,
  `weight_exchange` float DEFAULT NULL,
  `group` int(5) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `id_admin` int(11) NOT NULL,
  `kho_hang` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `md5_id`, `username`, `phone`, `email`, `password`, `fullname`, `use_salt`, `shop_name`, `avt_dir`, `avatar`, `use_logo`, `block`, `birthday`, `sex`, `address`, `address_province`, `address_district`, `address_ward`, `use_mobile`, `use_face`, `use_yahoo`, `use_skype`, `use_group`, `active`, `use_key`, `smskey`, `token`, `deleted`, `use_regisdate`, `use_enddate`, `lastest_login`, `signup_date`, `lever`, `fee`, `wallet`, `depot`, `weight_exchange`, `group`, `sale_id`, `id_admin`, `kho_hang`) VALUES
(2, NULL, 'admin', 'admin', 'daibkz@gmail.com', 'c26be8aaf53b15054896983b43eb6a65', 'Admin', 'Wm8KT06E', NULL, NULL, NULL, NULL, NULL, '0000-00-00', 1, 'Ninh Binh', '66', NULL, NULL, '0986839102', NULL, 'dainguyen', '', 4, 1, '9671508f22c9982fbac60ffc130f9b7811ec2b4d7f6e9f253679a3b950a3f5c8', NULL, NULL, NULL, 1498496400, 1814029200, 1536545463, NULL, 2, 8, NULL, NULL, NULL, 1, NULL, 0, NULL),
(651, '55743cc0393b1cb4b8b37d09ae48d097', 'hongtuyen', '43264264327272754', 'hongquyen@info.qts.com', 'c26be8aaf53b15054896983b43eb6a65', 'LE HONG TUYEN', 'Kfv4MyE6', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4516ec7a8910d6c676391d17ef1678b82aeb59fd767ee66ff4a658cdee7f0ef7', NULL, '9fd95abfa880515f1b90b756b958de8d', NULL, 1531674000, 1531674000, 1531820517, NULL, 1, 8, NULL, NULL, NULL, 3, NULL, 0, 1),
(652, '30ef30b64204a3088a26bc2e6ecf7602', 'ketoan', '1234354646', 'trangnguyen@gmail.com', 'c26be8aaf53b15054896983b43eb6a65', 'TRANG NGUYỄN', 'kft_bbgs', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '71df0ad09e888fe3b81e19b0a91ede89724e2cb2f19633aa6c2480bd1442dd94', NULL, '1c44f8d9b5865e0a27cc234f339721fb', NULL, 1531674000, 1531674000, 1531731666, NULL, 1, 8, NULL, NULL, NULL, 2, NULL, 0, NULL),
(643, '9b698eb3105bd82528f23d0c92dedfc0', 'taikhoan', '0977160509', 'kythuatqts@gmail.com', '6054ab63b50061d8bc40e6433e2958d3', 'test qts', 'farc5l8U', NULL, NULL, NULL, NULL, 0, NULL, 1, 'daka o nha so 99 duong le trong tan', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '65fe406241980fee4234747606fbb0fcbfb927eb021f16a5de230d9a36629012', NULL, '5689741d0d7c9a3824d297446fe57f9a', NULL, 1506272400, NULL, 1506333363, NULL, 0, 8, NULL, 1, 20000, NULL, NULL, 648, NULL),
(648, '443cb001c138b2561a0d90720d6ce111', 'thamhaivan', '1234354646', 'thamhaivan@gmail.com', 'c26be8aaf53b15054896983b43eb6a65', 'thamhaivan', 'RQnrLz8O', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'daf89cc37217eb91d8b2dbec67ad2529406965ad287639602564cfbbd15b274c', NULL, 'bdaf7b52d624c74a80bacdcb258acc91', NULL, 1530550800, 1530550800, 1536545361, NULL, 1, 8, NULL, NULL, NULL, 3, NULL, 0, 2),
(649, '55b37c5c270e5d84c793e486d798c01d', 'taikhoan', '01688708565', 'nguyenthucqts@gmail.com', 'a8bd53a5bca16f16802dd90b777ac5e2', 'Nguyễn Thức', 'bVZ8O9j-', NULL, NULL, NULL, NULL, 0, NULL, 1, '', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1d4d3be0fa3e2394937e23cc2dc29f52bf315c8804dd911e5d9733002c24b292', NULL, 'a8469c49ab8d10c3ff52bf66d1b99a29', NULL, 1530723600, NULL, 1531880375, NULL, 0, 8, 27979500, 1, 25000, NULL, NULL, 648, NULL),
(640, '4ffce04d92a4d6cb21c1494cdfcd6dc1', 'taikhoan', '0982221989', 'cskhqts@gmail.com', '2a810c88e3cb947e85bbab2728102f0d', 'Test', 'K7Un7sVB', NULL, NULL, NULL, NULL, 0, NULL, 1, '', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9afeb87c5bfc4b34fc5741ceb2fa3f551bfebd97824d343e4ea4717935810b40', NULL, '2d9e84fec0ac40a1ee3220abb13714f3', NULL, 1505926800, NULL, NULL, NULL, 0, 8, NULL, 1, 20000, NULL, NULL, 648, NULL),
(646, '0ff39bbbf981ac0151d340c9aa40e63e', 'taikhoan', '0986839102', 'daibbr@gmail.com', 'cdb6962bc528e37a4b44d77bba500f71', 'nguyendai dinh', 'Rk0rbL9R', NULL, NULL, NULL, NULL, 0, '28/08/2018', 1, '100 Le Trọng Tấn - Nam Từ Liêm - Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '048f4d03401f37093690f5e6ae21cbb05383e8d1c416406b843d1b6360a22cdb', NULL, '90031374a3880c58acff66afb230e14a', NULL, 1529946000, NULL, 1536119560, NULL, 0, 5, -1062200000, 1, 20000, NULL, NULL, 648, NULL),
(647, '303ed4c69846ab36c2904d3ba8573050', 'taikhoan', '01634923482', 'tuyenlehongqts@gmail.com', 'c26be8aaf53b15054896983b43eb6a65', 'abc', 'vfnqObdI', NULL, NULL, NULL, NULL, 0, NULL, 1, '', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '7c64ed01c162e9400ad2aa39e60ae7f04d5b81bef058964d42d5e4d1656796c0', NULL, '3840b55b9223af9c2deac0e4d13f444e', NULL, 1530464400, NULL, NULL, NULL, 0, 8, 995824000, 1, 20000, NULL, NULL, 0, NULL),
(655, '3d2d8ccb37df977cb6d9da15b76c3f3a', 'taikhoan', '0976118793', 'kimhao176@gmail.com', 'c26be8aaf53b15054896983b43eb6a65', 'Nguyễn Kim Hào', 'zK70-HC4', NULL, NULL, NULL, NULL, 0, NULL, 1, '', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3e66e745b7e9f1e9a1e885c5cbd3601a6d1a6b1e30a34b558ad284d475fc884d', NULL, '53c914113dac1d7686e9393d10eca022', NULL, 1532710800, NULL, NULL, NULL, 0, 8, NULL, 1, 20000, NULL, NULL, 652, NULL),
(654, 'ab233b682ec355648e7891e66c54191b', 'taikhoan', '0962963189', 'vietanh211190@gmail.com', 'c26be8aaf53b15054896983b43eb6a65', 'ly', 'aHhZxdsP', NULL, NULL, NULL, NULL, 0, NULL, 1, '', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '698d0d3f5de315921dd5702bd0225b87e01b630539c03d2d77967ab665dfe4d4', NULL, 'e11e8b26e8bfbd63092c51171857250f', NULL, 1531846800, NULL, 1531880543, NULL, 0, 10, 5000000, 1, 20000, NULL, NULL, 651, NULL),
(659, '0ff8033cf9437c213ee13937b1c4c455', 'taikhoan', '1679925138', 'cucmuaha@gmail.com', 'cdb6962bc528e37a4b44d77bba500f71', 'Bùi Hoa', 'fS2OqRC1', NULL, NULL, NULL, NULL, 0, '03/01/2018', 0, 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'abd406ae0ddf374de223eb946eaa34cb1f20f7b72508953356d879dbb0196bc2', NULL, 'f4885d3fca195d6b3d6df700fffc776a', NULL, 1534698000, NULL, NULL, NULL, 0, 8, NULL, 1, NULL, NULL, NULL, 0, NULL),
(657, 'b4288d9c0ec0a1841b3b3728321e7088', 'taikhoan', '382046403286', 'leanh.qts@gmail.com', 'c26be8aaf53b15054896983b43eb6a65', 'leanh', '4Y-TThAZ', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'cf2c86c3d87990ff5ad36380ae6d2c7ec0c719a4f816b6a11bc5b3de76d573aa', NULL, '80ec19d978a9d0e34b59add37da30147', NULL, 1534525200, NULL, 1534994131, NULL, 0, 8, 1200000, NULL, NULL, NULL, NULL, 0, NULL),
(658, '2f37d10131f2a483a8dd005b3d14b0d9', 'taikhoan', '0123456789', 'linhnhi@gmaIL.COM', 'c26be8aaf53b15054896983b43eb6a65', 'linhnhi', 'GA95Oubc', NULL, NULL, NULL, NULL, 0, NULL, 0, '', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '6c43c8883ed70e756ec50b5288458fd0002f62de10aaa551072d310f7ebc2bca', NULL, '03292dc4f7b8b65a90aa676ae79fb8b6', NULL, 1534525200, NULL, 1536312981, NULL, 0, 8, 3685230, 1, 2, NULL, NULL, 0, NULL),
(661, '3a066bda8c96b9478bb0512f0a43028c', 'khovn', '6430286436', 'khovn@gmail.com', 'c26be8aaf53b15054896983b43eb6a65', 'khovn', 'wvJbkj7o', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '598cdc24f2b808a89e8483b23869dc186f695c8c5585023db5fa54e8a9bf1fa2', NULL, 'bad0f342f09c35cb181f81c23283da0e', NULL, 1535562000, 1535562000, 1536545419, NULL, 1, 8, NULL, NULL, NULL, 1, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_sms`
--

CREATE TABLE `user_sms` (
  `id` int(11) NOT NULL,
  `smsid` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8,
  `result` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `error` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `comment` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `create_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_sms`
--

INSERT INTO `user_sms` (`id`, `smsid`, `userid`, `phone`, `content`, `result`, `count`, `error`, `comment`, `create_at`) VALUES
(5, '1130b1db-ffcb-477b-862b-040e60174a888', 76, '0974901590', 'Mã Kích Hoạt SMS : 5950ac70440c6', 100, 0, NULL, NULL, '2017-06-26 13:40:48'),
(6, '3141f19d-e25d-46fb-9cff-9c1cdd3371fb8', 76, '0974901590', 'abc test gửi lại', 100, 0, NULL, 'gửi lại', '2017-06-26 13:41:39'),
(7, NULL, 610, '0986839102', 'Mã Kích Hoạt SMS : 5954a8af5779f', 103, 0, 'Balance not enough to send message', NULL, '2017-06-29 14:13:53'),
(8, NULL, 611, '0986839102', 'Mã Kích Hoạt SMS : 5954a9ed7f497', 103, 0, 'Balance not enough to send message', NULL, '2017-06-29 14:19:09'),
(9, NULL, 612, '0965986385', 'Mã Kích Hoạt SMS : 5954b39739ebb', 103, 0, 'Balance not enough to send message', NULL, '2017-06-29 15:00:23'),
(10, NULL, 613, '01649962597', 'Mã Kích Hoạt SMS : 5955bbaedda8d', 103, 0, 'Balance not enough to send message', NULL, '2017-06-30 09:47:11'),
(11, NULL, 614, '987654321', 'Mã Kích Hoạt SMS : 595606e747183', 103, 0, 'Balance not enough to send message', NULL, '2017-06-30 15:08:07'),
(12, NULL, 615, '324234234', 'Mã Kích Hoạt SMS : 5956074367a46', 99, 0, 'Phone not valid:324234234', NULL, '2017-06-30 15:09:39'),
(13, NULL, 616, '0915460000', 'Mã Kích Hoạt SMS : 595a22e73caf4', 103, 0, 'Balance not enough to send message', NULL, '2017-07-03 17:56:39'),
(14, NULL, 617, '01649962597', 'Mã Kích Hoạt SMS : 595ae9294eb32', 103, 0, 'Balance not enough to send message', NULL, '2017-07-04 08:02:33'),
(15, NULL, 618, '0985088848', 'Mã Kích Hoạt SMS : 595b3b0287471', 103, 0, 'Balance not enough to send message', NULL, '2017-07-04 13:51:46'),
(16, NULL, 619, '0985088848', 'Mã Kích Hoạt SMS : 595c4381c1481', 103, 0, 'Balance not enough to send message', NULL, '2017-07-05 08:40:19'),
(17, NULL, 620, '0986126561', 'Mã Kích Hoạt SMS : 595f3520d9e2e', 103, 0, 'Balance not enough to send message', NULL, '2017-07-07 14:15:45'),
(18, NULL, 621, '0987999947', 'Mã Kích Hoạt SMS : 5960999273327', 103, 0, 'Balance not enough to send message', NULL, '2017-07-08 15:36:34'),
(19, NULL, 622, '0869118060', 'Mã Kích Hoạt SMS : 59638b308df68', 103, 0, 'Balance not enough to send message', NULL, '2017-07-10 21:12:00'),
(20, NULL, 623, '0983003484', 'Mã Kích Hoạt SMS : 59661988955c0', 103, 0, 'Balance not enough to send message', NULL, '2017-07-12 19:43:52'),
(21, NULL, 624, '01652724972', 'Mã Kích Hoạt SMS : 5966e56f21617', 103, 0, 'Balance not enough to send message', NULL, '2017-07-13 10:13:51'),
(22, NULL, 625, '09164278201', 'Mã Kích Hoạt SMS : 59697ab70dbfb', 99, 0, 'Phone not valid:09164278201', NULL, '2017-07-15 09:15:19'),
(23, NULL, 626, '0964278201', 'Mã Kích Hoạt SMS : 59697b7e356e4', 103, 0, 'Balance not enough to send message', NULL, '2017-07-15 09:18:38'),
(24, NULL, 627, '09642728201', 'Mã Kích Hoạt SMS : 59697cba3fe16', 99, 0, 'Phone not valid:09642728201', NULL, '2017-07-15 09:23:54'),
(25, NULL, 628, '0964278201', 'Mã Kích Hoạt SMS : 5969ae9b73f4e', 103, 0, 'Balance not enough to send message', NULL, '2017-07-15 12:56:43'),
(26, NULL, 629, '0975279573', 'Mã Kích Hoạt SMS : 5972f6b2ed53b', 103, 0, 'Balance not enough to send message', NULL, '2017-07-22 13:54:43'),
(27, NULL, 630, '01648464081', 'Mã Kích Hoạt SMS : 5974f19ddd13a', 103, 0, 'Balance not enough to send message', NULL, '2017-07-24 01:57:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
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
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `name`, `description`, `link_video`, `title_seo`, `description_seo`, `keyword_seo`, `lang`, `category_id`, `home`, `hot`, `focus`, `sort`, `image`, `active`, `alias`) VALUES
(1, 'video cho em gần anh thêm chút nữa', '<p>n&ocirc;i dung video h&aacute;t rất hay nh&eacute;</p>\r\n', 'OcpO-cjIKYM', '', '', '', 'vi', 3, 1, NULL, NULL, 1, 'upload/img/video/dia-diem-du-lich-5.jpg', 1, 'video-cho-em-gan-anh-them-chut-nua'),
(2, 'Bài hát giành cho người đang yêu', '<p>nội dung m&ocirc; tả</p>\r\n', 'EcgL7jBEclc', '', '', '', 'vi', 5, 1, NULL, 1, 2, 'upload/img/video/dia-diem-du-lich-3.jpg', 1, 'bai-hat-gianh-cho-nguoi-dang-yeu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video_category`
--

CREATE TABLE `video_category` (
  `id` int(11) NOT NULL,
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
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `video_category`
--

INSERT INTO `video_category` (`id`, `name`, `alias`, `sort`, `home`, `hot`, `focus`, `image`, `title_seo`, `description_seo`, `keyword_seo`, `lang`, `description`, `parent_id`) VALUES
(3, 'Danh mục video của năm', 'danh-muc-video-cua-nam', 1, 1, NULL, NULL, 'upload/img/video/dia-diem-du-lich-4.jpg', '', '', NULL, 'vi', '<p>nội dung m&ocirc; tả</p>\r\n', NULL),
(4, 'danh mục video của năm 2018', 'danh-muc-video-cua-nam-2018', 2, 1, 1, NULL, 'upload/img/video/dia-diem-du-lich-41.jpg', '', '', NULL, 'vi', '<p>nội dung m&ocirc; tả</p>\r\n', NULL),
(5, 'video năm 2019', 'video-nam-2019', 3, 1, NULL, NULL, NULL, '', '', NULL, 'vi', '<p>n&ocirc;i dung m&ocirc; tả</p>\r\n', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ward`
--

CREATE TABLE `ward` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `districtid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `pro_id` decimal(21,0) DEFAULT NULL,
  `user_id` decimal(21,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `alias`
--
ALTER TABLE `alias`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banking`
--
ALTER TABLE `banking`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `code_sale`
--
ALTER TABLE `code_sale`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments_binhluan`
--
ALTER TABLE `comments_binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config_banner`
--
ALTER TABLE `config_banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config_checkpro`
--
ALTER TABLE `config_checkpro`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config_menu`
--
ALTER TABLE `config_menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config_phimuahang`
--
ALTER TABLE `config_phimuahang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config_tygiacannang`
--
ALTER TABLE `config_tygiacannang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config_wiget`
--
ALTER TABLE `config_wiget`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer_debt`
--
ALTER TABLE `customer_debt`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `depots`
--
ALTER TABLE `depots`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exchanges`
--
ALTER TABLE `exchanges`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `inuser`
--
ALTER TABLE `inuser`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `inuser_category`
--
ALTER TABLE `inuser_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `inuser_to_category`
--
ALTER TABLE `inuser_to_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoices_detail`
--
ALTER TABLE `invoices_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ips`
--
ALTER TABLE `ips`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khohang_kygui`
--
ALTER TABLE `khohang_kygui`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khohang_order`
--
ALTER TABLE `khohang_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `map_shopping`
--
ALTER TABLE `map_shopping`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `media_category`
--
ALTER TABLE `media_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `media_images`
--
ALTER TABLE `media_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_to_category`
--
ALTER TABLE `news_to_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_transaction`
--
ALTER TABLE `order_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_locale`
--
ALTER TABLE `product_locale`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_old`
--
ALTER TABLE `product_old`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_price`
--
ALTER TABLE `product_price`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`product_tag_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `language_id` (`lang`),
  ADD KEY `tag` (`tag`);

--
-- Chỉ mục cho bảng `product_to_category`
--
ALTER TABLE `product_to_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_to_color`
--
ALTER TABLE `product_to_color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_to_option`
--
ALTER TABLE `product_to_option`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_to_season`
--
ALTER TABLE `product_to_season`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_to_size`
--
ALTER TABLE `product_to_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pro_size`
--
ALTER TABLE `pro_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `p_images`
--
ALTER TABLE `p_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `raovat`
--
ALTER TABLE `raovat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `raovat_category`
--
ALTER TABLE `raovat_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `raovat_images`
--
ALTER TABLE `raovat_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `raovat_tag`
--
ALTER TABLE `raovat_tag`
  ADD PRIMARY KEY (`raovat_tag_id`);

--
-- Chỉ mục cho bảng `raovat_to_category`
--
ALTER TABLE `raovat_to_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `site_log`
--
ALTER TABLE `site_log`
  ADD PRIMARY KEY (`site_log_id`);

--
-- Chỉ mục cho bảng `site_option`
--
ALTER TABLE `site_option`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `staticpage`
--
ALTER TABLE `staticpage`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statis`
--
ALTER TABLE `statis`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `street`
--
ALTER TABLE `street`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `support_online`
--
ALTER TABLE `support_online`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags_news`
--
ALTER TABLE `tags_news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags_to_news`
--
ALTER TABLE `tags_to_news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags_to_product`
--
ALTER TABLE `tags_to_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_xnt`
--
ALTER TABLE `tbl_xnt`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thong_ke_online`
--
ALTER TABLE `thong_ke_online`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_sms`
--
ALTER TABLE `user_sms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `video_category`
--
ALTER TABLE `video_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `alias`
--
ALTER TABLE `alias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT cho bảng `banking`
--
ALTER TABLE `banking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `code_sale`
--
ALTER TABLE `code_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `comments_binhluan`
--
ALTER TABLE `comments_binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `config_banner`
--
ALTER TABLE `config_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `config_checkpro`
--
ALTER TABLE `config_checkpro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `config_menu`
--
ALTER TABLE `config_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `config_phimuahang`
--
ALTER TABLE `config_phimuahang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `config_tygiacannang`
--
ALTER TABLE `config_tygiacannang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `config_wiget`
--
ALTER TABLE `config_wiget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `customer_debt`
--
ALTER TABLE `customer_debt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `depots`
--
ALTER TABLE `depots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=698;

--
-- AUTO_INCREMENT cho bảng `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `exchanges`
--
ALTER TABLE `exchanges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT cho bảng `inuser`
--
ALTER TABLE `inuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `inuser_category`
--
ALTER TABLE `inuser_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `inuser_to_category`
--
ALTER TABLE `inuser_to_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `invoices_detail`
--
ALTER TABLE `invoices_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `ips`
--
ALTER TABLE `ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khohang_kygui`
--
ALTER TABLE `khohang_kygui`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `khohang_order`
--
ALTER TABLE `khohang_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `map_shopping`
--
ALTER TABLE `map_shopping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `media_category`
--
ALTER TABLE `media_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `media_images`
--
ALTER TABLE `media_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `news_category`
--
ALTER TABLE `news_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `news_to_category`
--
ALTER TABLE `news_to_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT cho bảng `order_transaction`
--
ALTER TABLE `order_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `product_img`
--
ALTER TABLE `product_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_locale`
--
ALTER TABLE `product_locale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `product_old`
--
ALTER TABLE `product_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_price`
--
ALTER TABLE `product_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `product_tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_to_category`
--
ALTER TABLE `product_to_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `product_to_color`
--
ALTER TABLE `product_to_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `product_to_option`
--
ALTER TABLE `product_to_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_to_season`
--
ALTER TABLE `product_to_season`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_to_size`
--
ALTER TABLE `product_to_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `pro_size`
--
ALTER TABLE `pro_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `p_images`
--
ALTER TABLE `p_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `raovat`
--
ALTER TABLE `raovat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `raovat_category`
--
ALTER TABLE `raovat_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `raovat_images`
--
ALTER TABLE `raovat_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `raovat_tag`
--
ALTER TABLE `raovat_tag`
  MODIFY `raovat_tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `raovat_to_category`
--
ALTER TABLE `raovat_to_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT cho bảng `site_log`
--
ALTER TABLE `site_log`
  MODIFY `site_log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58136;

--
-- AUTO_INCREMENT cho bảng `site_option`
--
ALTER TABLE `site_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `staticpage`
--
ALTER TABLE `staticpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `statis`
--
ALTER TABLE `statis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `street`
--
ALTER TABLE `street`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `support_online`
--
ALTER TABLE `support_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tags_news`
--
ALTER TABLE `tags_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tags_to_news`
--
ALTER TABLE `tags_to_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tags_to_product`
--
ALTER TABLE `tags_to_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_xnt`
--
ALTER TABLE `tbl_xnt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT cho bảng `thong_ke_online`
--
ALTER TABLE `thong_ke_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=662;

--
-- AUTO_INCREMENT cho bảng `user_sms`
--
ALTER TABLE `user_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `video_category`
--
ALTER TABLE `video_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `ward`
--
ALTER TABLE `ward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
