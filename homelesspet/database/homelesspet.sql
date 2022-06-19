-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 27, 2021 lúc 02:21 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `homelesspet`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`, `created`) VALUES
(1, 'Homeles Pet', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, 2147483647),
(3, 'Mạnh Nguyễn', 'ng@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, 1639542951);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `description`, `parent_id`, `sort_order`, `created`) VALUES
(34, 'Thức ăn cho mèo', '', 26, 2, '0000-00-00 00:00:00'),
(33, 'Thức ăn cho chó', '', 26, 1, '0000-00-00 00:00:00'),
(32, 'Thú cưng khác', '', 25, 4, '0000-00-00 00:00:00'),
(30, 'Hamster', '', 25, 3, '0000-00-00 00:00:00'),
(29, 'Mèo kiểng', '', 25, 2, '0000-00-00 00:00:00'),
(28, 'Chó kiểng', '', 25, 1, '0000-00-00 00:00:00'),
(27, 'PHỤ KIỆN', '', 1, 3, '0000-00-00 00:00:00'),
(26, 'THỨC ĂN', '', 1, 2, '0000-00-00 00:00:00'),
(25, 'THÚ CƯNG', '', 1, 1, '0000-00-00 00:00:00'),
(35, 'Phụ kiện cho chó', '', 27, 1, '0000-00-00 00:00:00'),
(36, 'Phụ kiện cho mèo', '', 27, 2, '0000-00-00 00:00:00'),
(37, 'Phụ kiện ngày lễ', '', 27, 3, '0000-00-00 00:00:00'),
(38, 'NHÀ VÀ GIƯỜNG GỖ', '', 1, 5, '0000-00-00 00:00:00'),
(39, 'SỮA TẮM CHO THÚ', '', 1, 4, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `transaction_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL DEFAULT 0,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`) VALUES
(19, 17, 49, 2, '23600.00', 0),
(18, 16, 49, 1, '11800.00', 0),
(17, 14, 49, 1, '11800.00', 0),
(16, 13, 49, 1, '11800.00', 0),
(20, 18, 51, 1, '70000.00', 0),
(21, 18, 55, 1, '85000.00', 0),
(22, 19, 87, 2, '6140000.00', 0),
(23, 19, 85, 1, '24570000.00', 0),
(24, 20, 87, 1, '3070000.00', 0),
(25, 21, 87, 1, '3070000.00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` int(11) DEFAULT 0,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL DEFAULT 4,
  `rate_count` int(255) NOT NULL DEFAULT 1,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(51, 37, 'BỘ NÓN VÀ ÁO CHOÀNG NOEL A67', '<p>Bộ n&oacute;n v&agrave; khăn cho&agrave;ng Noel đậm chất gi&aacute;ng sinh, sẽ gi&uacute;p c&aacute;c b&eacute; ho&aacute; th&acirc;n th&agrave;nh những &ocirc;ng gi&agrave; Noel v&ocirc; c&ugrave;ng đ&aacute;ng y&ecirc;u. N&oacute;n v&agrave; khăn cho&agrave;ng được may bằng vải b&ocirc;ng c&oacute; thể vừa l&agrave;m đẹp vừa giữ ấm cho c&aacute;c b&eacute; đấy ạ.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; nhu cầu đ&oacute;n Bộ n&oacute;n v&agrave; khăn cho&agrave;ng Noel hoặc c&aacute;c bộ quần &aacute;o Noel kh&aacute;c hay đồ Tết cho ch&oacute; m&egrave;o th&igrave; nhanh ch&oacute;ng đến với HomelessPet&nbsp;nha!</p>\r\n', '70000.00', 0, 'grande1.jpg', '[]', 5, 1, 9, 2, 1639795463),
(52, 37, 'Quần áo giáng sinh cho chó mèo', '<p>TH&Ocirc;NG TIN CƠ BẢN</p>\r\n\r\n<ul>\r\n	<li><strong>Chất vải:</strong>&nbsp;Nỉ</li>\r\n	<li><strong>M&agrave;u sắc</strong>&nbsp;Trắng đỏ</li>\r\n	<li><strong>K&iacute;ch thước</strong>&nbsp;2XS</li>\r\n</ul>\r\n\r\n<p>Gợi &yacute; chọn size &aacute;o ch&oacute; m&egrave;o:</p>\r\n\r\n<ul>\r\n	<li>XS : &lt;1,2kg</li>\r\n	<li>S : cho c&uacute;n từ 1-2,5kg</li>\r\n	<li>M : cho c&uacute;n từ 2-3kg</li>\r\n	<li>L : cho c&uacute;n từ 3,5-5kg</li>\r\n	<li>XL : cho c&uacute;n từ 5,5-8kg</li>\r\n	<li>XXL : cho c&uacute;n từ 8-11kg</li>\r\n</ul>\r\n\r\n<p>Lưu &yacute;: Số liệu tr&ecirc;n chỉ mang t&iacute;nh chất tương đối. Size &aacute;o c&ograve;n phụ thuộc v&agrave;o giống c&uacute;n v&agrave; độ d&agrave;y l&ocirc;ng. Để chọn ch&iacute;nh x&aacute;c cỡ &aacute;o cho ch&oacute; m&egrave;o, bạn vui l&ograve;ng chat trực tiếp cho shop để được tư vấn tốt nhất. Xin cảm ơn!</p>\r\n', '90000.00', 75000, 'Y4SPpX.jpg', '[]', 4, 0, 9, 2, 1639798633),
(83, 33, 'Thức ăn hỗn hợp thịt cừu - Natural Core Lamb', '<p>Thức ăn cho ch&oacute; hữu cơ Natural&nbsp;Lamb &amp; Potato Organic thịt cừu được chế biến từ c&aacute;c loại thịt tươi v&agrave; c&aacute;c nguy&ecirc;n liệu được chứng nhận hữu cơ ECOCERT: thịt Cừu, rau bina, c&aacute;c loại ngũ cốc hữu cơ. Với nhiều chất dinh dưỡng tốt cho sức khỏe th&uacute; cưng, ECO1 c&oacute; t&aacute;c dụng nổi bật với hệ ti&ecirc;u h&oacute;a, da v&agrave; l&ocirc;ng ch&uacute; ch&oacute;.</p>\r\n\r\n<ul>\r\n	<li>D&agrave;nh cho c&aacute;c giống ch&oacute; thuộc mọi lứa tuổi, c&acirc;n nặng</li>\r\n	<li>Th&agrave;nh phần: thịt Cừu, rau bina, khoai lang hữu cơ, c&aacute;c loại ngũ cốc hữu cơ</li>\r\n	<li>Tạo sự ngon miệng, tối đa h&oacute;a khả năng hấp thụ</li>\r\n	<li>Đặc biệt tốt cho da v&agrave; l&ocirc;ng, hỗ trợ điều trị c&aacute;c bệnh về da</li>\r\n	<li>Ph&ograve;ng ngừa l&atilde;o ho&aacute; v&agrave; nhiều bệnh kh&aacute;c nhau</li>\r\n	<li>Gi&uacute;p tăng sức đề kh&aacute;ng v&agrave; hỗ trợ ti&ecirc;u h&oacute;a</li>\r\n	<li>Giảm thiểu m&ugrave;i ph&acirc;n v&agrave; m&ugrave;i cơ thể</li>\r\n	<li>L&agrave;m đẹp da, đẹp l&ocirc;ng</li>\r\n</ul>\r\n', '240000.00', 110000, 'thuc-an-cho-cho-huu-co-natural-core-lamb-potato-organic-400x400.jpg', '[\"puppy1.jpg\",\"thuc-an-cho-cho-con-huu-co-natural-core-lamb-puppy1-400x4001.jpg\",\"thuc-an-cho-cho-huu-co-natural-core-400x4001.jpg\",\"thuc-an-cho-cho-huu-co-natural-core-lamb-potato-organic1-400x400.jpg\"]', 2, 0, 9, 2, 1640526875),
(84, 29, 'Mèo bi lông dài', '<p>Anh l&ocirc;ng d&agrave;u Giới t&iacute;nh đực 8 th&aacute;ng M&agrave;u bicolor</p>\r\n', '3500000.00', 0, '9f56e0c02d0bfba6a96c39ca9d9a7862-2752345581201386731.jpg', '[]', 0, 0, 4, 1, 1640527531),
(55, 35, 'Rọ Mõm Nhựa Cho Chó Mềm Mại Cho Chó', '<p>Thương hiệu:&nbsp;<a href=\"http://localhost/homelesspet/thuc-an-cho-cho-c33\">No Brand</a></p>\r\n\r\n<p>M&atilde; sản phẩm:&nbsp;P01749607</p>\r\n\r\n<p>T&igrave;nh trạng:&nbsp;C&ograve;n h&agrave;ng</p>\r\n\r\n<p>Xuất xứ thương hiệu:&nbsp;Việt Nam</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>- Thiết kế mềm mại v&agrave; đầu rọ được thiết kế tho&aacute;ng gi&uacute;p mang đến cho ch&uacute; c&uacute;n cưng cảm gi&aacute;c thoải m&aacute;i v&agrave; &ecirc;m &aacute;i khi đeo.</p>\r\n\r\n<p>- Thiết kế kh&oacute;a nới linh động gi&uacute;p bạn dễ d&agrave;ng canh chỉnh sao cho ch&uacute; c&uacute;n cưng cảm thấy thoải m&aacute;i nhất</p>\r\n\r\n<p>- C&oacute; nhiều k&iacute;ch thước kh&aacute;c nhau ph&ugrave; hợp cho th&uacute; cưng nh&agrave; bạn</p>\r\n', '85000.00', 0, 'ro-mom-nhua-cho-cho-mem-mai-cho-cho-lon-nho-5f6c67dfce072-24092020163319.jpg', '[]', 1, 1, 4, 1, 1640513069),
(54, 35, 'Quần Áo Hình Sư Tử', '<p>Thương hiệu:&nbsp;<a href=\"http://localhost/homelesspet/phu-kien-cho-cho-c35\">No Brand</a></p>\r\n\r\n<p>M&atilde; sản phẩm:&nbsp;P01779101</p>\r\n\r\n<p>T&igrave;nh trạng:&nbsp;C&ograve;n h&agrave;ng</p>\r\n\r\n<p>Xuất xứ thương hiệu:&nbsp;Trung Quốc</p>\r\n', '175000.00', 50000, 'quan-ao-hinh-su-tu-ho-cho-thu-cung-5f8e81aa1cb2c-201020201320262.jpg', '[]', 1, 0, 4, 1, 1640512808),
(56, 35, 'RỌ MÕM CHÓ THÚ MỎ VỊT - QD345', '<p>Thương hiệu: No Brand</p>\r\n\r\n<p>M&atilde;: QD345</p>\r\n\r\n<p>Xuất xứ: Việt Nam</p>\r\n\r\n<p>T&igrave;nh trạng: c&ograve;n h&agrave;ng</p>\r\n\r\n<p>M&ocirc; tả sản phẩm:</p>\r\n\r\n<ul>\r\n	<li>Chiếc rọ m&otilde;m sẽ l&agrave; phụ kiện kh&ocirc;ng thể thiếu gi&uacute;p đảm bảo an to&agrave;n cho người xung quanh khi bạn đưa c&uacute;n y&ecirc;u đến những nơi c&ocirc;ng cộng.</li>\r\n	<li>Với thiết kế chắc chắn nhưng mềm mại, đồng thời đầu rọ được thiết kế tho&aacute;ng.&nbsp;</li>\r\n</ul>\r\n', '76000.00', 17000, '9Kfi3f_simg_d0daf0_800x1200_max.jpg', '[]', 1, 0, 4, 1, 1640513660),
(59, 38, 'NHÀ NỆM GỖ CHO THÚ CƯNG KIỂU ỐNG KHÓI - XANH 52X47X50CM', '<h3><strong>Đặc điểm nổi bật</strong></h3>\r\n\r\n<p>- L&agrave;m từ chất liệu vải cao cấp, kh&ocirc;ng xổ l&ocirc;ng.</p>\r\n\r\n<p>- Gỗ tốt gi&uacute;p nhiệt độ b&ecirc;n trong lu&ocirc;n m&aacute;t mẻ</p>\r\n\r\n<p>- Gi&uacute;p th&uacute; cưng c&oacute; kh&ocirc;ng gian ri&ecirc;ng tư</p>\r\n\r\n<p>- Nhiều m&agrave;u sắc, kiểu d&aacute;ng dễ thương</p>\r\n\r\n<p>- Dễ d&agrave;ng vệ sinh</p>\r\n', '818000.00', 490800, 'grande11.jpg', '[]', 0, 0, 4, 1, 1640516990),
(60, 38, 'GIƯỜNG GỖ CHO MÈO - XANH DƯƠNG 48X37X20CM', '<h1>Đặc điểm nổi bật</h1>\r\n\r\n<p>- Chất liệu gỗ v&agrave; nệm v&ocirc; c&ugrave;ng bền</p>\r\n\r\n<p>- M&agrave;u sắc bắt mắt, hợp với kh&ocirc;ng gian trong nh&agrave;</p>\r\n\r\n<p>- Kiểu d&aacute;ng v&ocirc; c&ugrave;ng dễ thương</p>\r\n\r\n<p>- Dễ d&agrave;ng vệ sinh, dọn dẹp</p>\r\n\r\n<p>- Lắp r&aacute;p đơn giản</p>\r\n\r\n<p>- Thương hiệu: LoffePet</p>\r\n', '323000.00', 193800, 'c3680360a6644ac5984996cc75bfc6dc_5345c643158f489790a1a232c0f0120c_grande.jpg', '[]', 0, 0, 4, 1, 1640520244),
(64, 38, 'NHÀ NỆM GỖ VUÔNG KIỂU ĐẦU MÈO - XANH NHẠT 39X47X38CM', '<h3><strong>Đặc điểm nổi bật</strong></h3>\r\n\r\n<p>- L&agrave;m từ chất liệu vải cao cấp, kh&ocirc;ng xổ l&ocirc;ng.</p>\r\n\r\n<p>- Gi&uacute;p th&uacute; cưng c&oacute; kh&ocirc;ng gian ri&ecirc;ng tư</p>\r\n\r\n<p>- Nhiều m&agrave;u sắc, kiểu d&aacute;ng dễ thương</p>\r\n\r\n<p>- Dễ d&agrave;ng vệ sinh</p>\r\n\r\n<h3><strong>Th&ocirc;ng tin chi tiết</strong></h3>\r\n\r\n<p>Một căn nh&agrave; ri&ecirc;ng sẽ gi&uacute;p th&uacute; cưng của bạn c&oacute; một kh&ocirc;ng gian sống ri&ecirc;ng thật chất lượng với đầy đủ tiện nghi để đem đến cảm gi&aacute;c thoải m&aacute;i v&agrave; dễ chịu, gi&uacute;p c&aacute;c b&eacute; vui vẻ hơn v&agrave; tr&aacute;nh cắn ph&aacute; đồ đặc trong nh&agrave;.</p>\r\n\r\n<p>Những chiếc nh&agrave; d&agrave;nh cho th&uacute; cưng của LoffePet&nbsp;được thiết kế với k&iacute;ch thước rộng r&atilde;i, t&ugrave;y loại ch&oacute; m&egrave;o m&agrave; sẽ c&oacute; dạng nh&agrave; kh&aacute;c nhau thật ph&ugrave; hợp với vẻ bề ngo&agrave;i v&agrave; đặc t&iacute;nh của ch&uacute;ng.</p>\r\n\r\n<p>Đa phần c&aacute;c loại nh&agrave; n&agrave;y đều được l&agrave;m từ c&aacute;c vật liệu cứng, chắc, d&ugrave; những ch&uacute; ch&oacute; m&egrave;o của bạn c&oacute; nghịch đến cỡ n&agrave;o th&igrave; cũng kh&ocirc;ng thể khiến ch&uacute;ng hư hỏng.</p>\r\n', '621000.00', 372600, '2fa408d9cacb4fd192a4bd002230bd17_6fd3a590d1d743d6a905d0759ad8eb08_grande.jpg', '[]', 0, 0, 4, 1, 1640521131),
(57, 35, 'VÁY THỦY THỦ MẶT TRĂNG CHO THÚ CƯNG - QA029', '<p>T&igrave;nh trạng: c&ograve;n h&agrave;ng</p>\r\n\r\n<p>M&ocirc; tả sản phẩm:</p>\r\n\r\n<p>Size: (V.ngực*C.d&agrave;i &aacute;o)</p>\r\n\r\n<ul>\r\n	<li>XS: 30cm*20cm (c&uacute;n 1.3 - 2.4kg)</li>\r\n	<li>S：35cm*25cm (c&uacute;n 2.4 - 4kg)</li>\r\n	<li>M：40cm*30cm (c&uacute;n 4 - 6kg)</li>\r\n	<li>L：45cm*35cm (c&uacute;n 6 - 8.5kg)</li>\r\n	<li>XL: 50cm*40cm (c&uacute;n 8.5 - 12kg</li>\r\n</ul>\r\n', '120000.00', 0, '19554941_109243799641354_8377493817698359242_n.jpg', '[]', 0, 0, 4, 1, 1640513886),
(62, 38, 'NHÀ GỖ CHỮ NHẬT CHO THÚ CƯNG 60X42X39CM ', '<h3><strong>Đặc điểm nổi bật</strong></h3>\r\n\r\n<p>- L&agrave;m từ chất liệu vải cao cấp, kh&ocirc;ng xổ l&ocirc;ng.</p>\r\n\r\n<p>- Gỗ tốt gi&uacute;p nhiệt độ b&ecirc;n trong lu&ocirc;n m&aacute;t mẻ</p>\r\n\r\n<p>- Gi&uacute;p th&uacute; cưng c&oacute; kh&ocirc;ng gian ri&ecirc;ng tư</p>\r\n\r\n<p>- Nhiều m&agrave;u sắc, kiểu d&aacute;ng dễ thương</p>\r\n\r\n<p>- Dễ d&agrave;ng vệ sinh</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1070000.00', 642000, '85ec66cf175c45ff83add5501f84f125_11e977ec1e8b4f509bca2aaf606b8350_grande1.jpg', '[]', 1, 0, 4, 1, 1640520521),
(63, 37, 'Đồ Noel Có Nón Cho Chó Mèo', '<h3>M&ocirc; Tả Sản Phẩm:</h3>\r\n\r\n<p>&ndash; Gi&aacute;ng sinh l&agrave; 1 trong những dịp lễ lớn trong năm, cũng l&agrave; dịp lễ được trang tr&iacute; đẹp nhất, rực rỡ nhất, ba mẹ đừng bỏ qua dịp lễ n&agrave;y &agrave;m h&atilde;y c&ugrave;ng c&aacute;c b&eacute; nh&agrave; m&igrave;nh lưu lại những khoảnh khắc tươi đẹp nhất n&agrave;y nh&eacute;.</p>\r\n\r\n<p>&ndash; Ba mẹ diện đẹp cũng đừng qu&ecirc;n cho c&aacute;c b&eacute; nh&agrave; m&igrave;nh &ldquo;l&agrave;m điệu&rdquo; với &Aacute;o ch&oacute; m&egrave;o Gi&aacute;ng Sinh Christmas c&oacute; n&oacute;n n&agrave;y nh&eacute;.</p>\r\n\r\n<p>&ndash; Đồ Noel C&oacute; N&oacute;n Cho Ch&oacute; M&egrave;o c&oacute; n&oacute;n đậm chất gi&aacute;ng sinh, sẽ gi&uacute;p c&aacute;c b&eacute; ho&aacute; th&acirc;n th&agrave;nh những &ocirc;ng gi&agrave; Noel v&ocirc; c&ugrave;ng đ&aacute;ng y&ecirc;u.</p>\r\n\r\n<p>&ndash; Đồ Noel C&oacute; N&oacute;n Cho Ch&oacute; M&egrave;o được may bằng vải nỉ b&ocirc;ng gi&uacute;p b&eacute; giữ ấm, mềm mại dễ chịu cho b&eacute; y&ecirc;u nh&agrave; bạn</p>\r\n', '185000.00', 86000, '77265649_2564905877073626_6515462119561887744_n-600x600.jpg', '[]', 1, 0, 4, 1, 1640520884),
(65, 36, 'Bát ăn chó mèo hình tròn D-200 | IRIS', '<h3><strong>Đăc điểm nổi bật</strong></h3>\r\n\r\n<p>- Được l&agrave;m từ chất li&ecirc;u nhựa cứng, an to&agrave;n kh&ocirc;ng g&acirc;y hại</p>\r\n\r\n<p>- Thiết kế nhỏ gọn, tiện lợi dễ d&agrave;ng khi di chuyển</p>\r\n\r\n<p>- Bề mặt s&aacute;ng b&oacute;ng, trơn gi&uacute;p dễ rửa v&agrave; lau ch&ugrave;i sạch sẽ</p>\r\n\r\n<p>-&nbsp;Hỗ trợ huấn luyện th&uacute; cưng ăn uống đ&uacute;ng chỗ.</p>\r\n\r\n<p>- Thương hiệu: IRIS Japan</p>\r\n', '23000.00', 0, 'upload_f10a89e739a549bfb68696fc97cccb09_grande_e1264a25b35d4d7fa18cd9e4df41ecc4_grande.jpg', '[]', 1, 0, 4, 1, 1640521287),
(58, 36, 'Bát ăn chó mèo hình tròn PD-240 | IRIS', '<h3><strong>Đăc điểm nổi bật</strong></h3>\r\n\r\n<p>- Được l&agrave;m từ chất li&ecirc;u nhựa cứng, an to&agrave;n kh&ocirc;ng g&acirc;y hại</p>\r\n\r\n<p>- C&oacute; khả năng giữ ấm thức ăn được l&acirc;u hơn</p>\r\n\r\n<p>- Thiết kế nhỏ gọn, tiện lợi dễ d&agrave;ng khi di chuyển</p>\r\n\r\n<p>- Bề mặt s&aacute;ng b&oacute;ng, trơn gi&uacute;p dễ rửa v&agrave; lau ch&ugrave;i sạch sẽ</p>\r\n\r\n<p>-&nbsp;Hỗ trợ huấn luyện th&uacute; cưng ăn uống đ&uacute;ng chỗ.</p>\r\n\r\n<p>- Thương hiệu: IRIS Japan</p>\r\n', '73000.00', 0, 'upload_dafdff37c1e14950bed799ba007e1d05_grande_bba77ece11544cbda870d4fcb8a4b3ae_grande.jpg', '[]', 1, 0, 4, 1, 1640521667),
(70, 36, 'Bát ăn gắn chuồng thú cưng 14.2x10.2x4.8cm | JCB', '<h3>Đặc điểm nổi bật</h3>\r\n\r\n<p>- Chất liệu nhựa cao cấp, kh&ocirc;ng đổ m&agrave;u, độ bền cao.</p>\r\n\r\n<p>- C&oacute; thể th&aacute;o rời gi&uacute;p vệ sinh dễ d&agrave;ng.</p>\r\n\r\n<p>-&nbsp;Hỗ trợ huấn luyện th&uacute; cưng ăn uống đ&uacute;ng chỗ.</p>\r\n\r\n<p>- Gắn v&aacute;o chuồng tr&aacute;nh t&igrave;nh trạng th&uacute; cưng l&agrave;m rơi đồ ăn</p>\r\n\r\n<p>- Thương hiệu: JCB</p>\r\n', '10000.00', 0, 'c7ee8287587340f89c1abf7108d376ef_3d39e38fc19b4fb084be3d792e5fcc01_grande.jpg', '[]', 0, 0, 4, 1, 1640523436),
(50, 39, 'DẦU GỘI CHO CHÓ MÈO AROMA MILD SHAMPOO 4000G PRUNUS', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM:</strong></p>\r\n\r\n<p>Sen c&oacute; biết th&uacute; cưng kh&ocirc;ng thể sử dụng chung sữa tắm với con người v&igrave; ch&uacute;ng c&oacute; thể bị k&iacute;ch ứng da bởi c&aacute;c th&agrave;nh phần c&oacute; trong đ&oacute;. Điều n&agrave;y c&oacute; thể g&acirc;y n&ecirc;n c&aacute;c bệnh về da l&ocirc;ng &agrave; c&ograve;n giảm sức đề kh&aacute;ng của b&eacute;.</p>\r\n\r\n<p>Dầu gội cho ch&oacute; m&egrave;o Aroma Mild Shampoo Prunus được l&agrave;m từ&nbsp;c&aacute;c th&agrave;nh phần thảo mộc tự nhi&ecirc;n như tr&agrave; xanh, vỏ c&acirc;y punica granatum, ngải cứu, equisetum giganteum, hoa c&uacute;c họa mi, l&ocirc; hội&nbsp;với c&ocirc;ng thức l&agrave;m sạch tự nhi&ecirc;n chuy&ecirc;n d&ugrave;ng cho th&uacute; cưng sẽ gi&uacute;p ch&uacute;ng l&agrave;m sạch dịu nhẹ, kh&aacute;ng khuẩn v&agrave; c&oacute; hương thơm v&ocirc; c&ugrave;ng dễ chịu.</p>\r\n', '1070000.00', 0, 'prunus_aroma_mild_shampoo_-_4000g_066df2d3acdd4e9fa8824163f35e3fad_grande.jpg', '[]', 0, 0, 4, 1, 1640521543),
(69, 38, 'Chuồng cho mèo XL 99x63x195cm | JCB', '<h3><strong>Đặc điểm nổi bật</strong></h3>\r\n\r\n<p>- Cạnh th&eacute;p sơn tĩnh điện chắc chắn c&oacute; độ bền cao.</p>\r\n\r\n<p>- C&oacute; cầu thang gi&uacute;p c&aacute;c b&eacute; l&ecirc;n xuống dễ d&agrave;ng</p>\r\n\r\n<p>- Cửa k&eacute;o ngang lớn, cực &ecirc;m v&agrave; chắc chắn.</p>\r\n\r\n<p>- Ph&ugrave; hợp với to&agrave;n bộ giống m&egrave;o</p>\r\n\r\n<p>- Chuồng lắp r&aacute;p dễ d&agrave;ng, dễ d&agrave;ng để l&agrave;m sạch.</p>\r\n\r\n<p>- Thương hiệu: JCB</p>\r\n', '1220000.00', 221000, 'chuong-meo-bang-go-2-ngan-san-nhua-richell-rc18.jpg', '[]', 1, 0, 4, 1, 1640523206),
(49, 34, 'Pate cho mèo Cherman 85g (gói)', '<h2><strong>ĐẶC ĐIỂM NỔI BẬT</strong></h2>\r\n\r\n<ul>\r\n	<li>Pate cho m&egrave;o Cherman 85g l&agrave; thức ăn dạng mềm thơm ngon bổ dưỡng v&agrave; l&agrave; sản phẩm b&aacute;n chạy nhất ở Thailand, tiện sử dụng, nhiều chất dinh dưỡng, tăng cường hệ miễn dịch, hỗ trợ ti&ecirc;u h&oacute;a, l&agrave; m&oacute;n kho&aacute;i khẩu của c&aacute;c ch&uacute; m&egrave;o.</li>\r\n	<li>Trọng lượng : 85g - dạng g&oacute;i</li>\r\n</ul>\r\n', '17000.00', 0, 'cherman_hang_thai_pate_97f1d0e4e5f740ceaa2cf63b3b2d56c5_grande.jpg', '[]', 2, 0, 4, 1, 1640521896),
(71, 35, 'Vớ chân cho cún từ nhỏ đến lớn', '<p>&ndash; Vớ ch&acirc;n cho c&uacute;n từ nhỏ đến lớn c&aacute;c b&eacute; nhỏ hơn 60kg đều c&oacute; size.<br />\r\n&ndash; Giữ cho c&uacute;n lu&ocirc;n lu&ocirc;n sạch ch&acirc;n khi đi ra đường, tr&aacute;nh ve.</p>\r\n', '10.00', 0, '12726489_1285985654759926_42990499_n.jpg', '[]', 0, 0, 4, 1, 1640523648),
(72, 28, 'Husky', '<ul>\r\n	<li>Husky Sibir</li>\r\n	<li>Nguồn gốc:Nga</li>\r\n	<li>Ph&acirc;n loại:Ch&oacute; k&eacute;o xe</li>\r\n	<li>Kiểu l&ocirc;ng:L&ocirc;ng d&agrave;i</li>\r\n	<li>M&agrave;u l&ocirc;ng:Trắng, Đen, N&acirc;u đen, V&agrave;ng cam, Bạc, X&aacute;m, N&acirc;u, Đỏ</li>\r\n	<li>Đặc điểm ngoại h&igrave;nh:Mắt hỏa tiễn, mặt ng&aacute;o</li>\r\n	<li>C&acirc;n nặng:16-27kg</li>\r\n	<li>Tuổi thọ:12-15 năm</li>\r\n	<li>Tuổi sinh sản:1-9 tuổi</li>\r\n	<li>Số lượng sinh:6-8 con/lứa</li>\r\n</ul>\r\n', '13090000.00', 0, 'husky6_0.jpg', '[]', 1, 0, 4, 1, 1640523839),
(73, 36, 'TRỤ CÀO MÓNG CHO MÈO HÌNH CON SỨA - JELLYFISH - ICLE', '<p><strong>M&ocirc; tả sản phẩm:</strong></p>\r\n\r\n<p>C&agrave;o m&oacute;ng vốn l&agrave; bản năng tự nhi&ecirc;n của lo&agrave;i m&egrave;o, do đ&oacute; với những ch&uacute; m&egrave;o con mới nhận nu&ocirc;i&nbsp;Trụ c&agrave;o m&oacute;ng l&agrave; sản phẩm kh&ocirc;ng thể thiếu nếu bạn muốn Sofa nh&agrave; bạn kh&ocirc;ng bị c&agrave;o r&aacute;ch, đồ đạc nh&agrave; bạn kh&ocirc;ng bị lộn xộn. V&agrave; sản phẩm thế&nbsp;n&agrave;o vừa g&acirc;y điểm nhấn cho m&egrave;o m&agrave; vừa khiến m&egrave;o th&iacute;ch th&uacute;. Tại Dog Paradise&nbsp;Trụ c&agrave;o m&oacute;ng cho m&egrave;o h&igrave;nh con mực - Jellyfish - ICLE l&agrave; sản phẩm rất&nbsp;được ưa chuộng.&nbsp;</p>\r\n\r\n<p>Vừa cho m&egrave;o c&agrave;o m&oacute;ng, vừa trang tr&iacute; nh&agrave; cửa c&ograve;n g&igrave; tuyệt bằng.</p>\r\n', '624000.00', 0, 'upload_351871aa2ca244bb941d70e5c80813b4_1024x1024.jpg', '[]', 2, 0, 4, 1, 1640523951),
(74, 35, 'Thẻ tên cho chó', '<p><strong>M&ocirc; tả sản phẩm:</strong></p>\r\n\r\n<p>&ndash; Cực kỳ dễ thương khi kết hợp với v&ograve;ng cổ.<br />\r\n&ndash; Lưu lại th&ocirc;ng tin số điện thoại hoặc t&ecirc;n trường hợp c&uacute;n bị thất lạc sẽ c&oacute; ai đ&oacute; t&igrave;m được v&agrave; b&aacute;o cho bạn biết c&uacute;n của bạn đang ở đ&acirc;u.</p>\r\n', '10.00', 5, '12330008_1101891889869449_533689114_n.png', '[]', 1, 0, 4, 1, 1640524581),
(75, 28, 'BECGIE BỈ', '<p><strong>Ch&oacute; Malinois</strong></p>\r\n\r\n<p>Giống ch&oacute; Malinois (hay c&ograve;n gọi l&agrave; Becgie Bỉ) l&agrave; một th&agrave;nh vi&ecirc;n cực k&igrave; nổi trội trong đại gia đ&igrave;nh ch&oacute; nghiệp vụ. Ch&uacute;ng nhanh ch&oacute;ng trở th&agrave;nh t&acirc;m điểm thu h&uacute;t được nhiều sự ch&uacute; &yacute; bởi tr&iacute; th&ocirc;ng minh vốn c&oacute; v&agrave; l&ograve;ng trung th&agrave;nh tuyệt đối.</p>\r\n\r\n<p><strong>Nguồn Gốc</strong></p>\r\n\r\n<p>Ch&oacute; Malinois l&agrave; giống ch&oacute; c&oacute; nguồn gốc từ th&agrave;nh phố Malinois ở Bỉ. Ch&uacute;ng l&agrave; hậu duệ của giống ch&oacute; Becgie Đức (German Shepherd) nhưng c&oacute; khả năng phản ứng nhanh, linh hoạt hơn. Becgie Bỉ l&agrave; 1 trong 4 giống ch&oacute; chăn cừu Bỉ.</p>\r\n\r\n<p>Giống ch&oacute; n&agrave;y rất dễ dẫn dắt, dẻo dai v&agrave; cực k&igrave; nhạy b&eacute;n n&ecirc;n ch&uacute;ng được đ&agrave;o tạo để trở th&agrave;nh ch&oacute; nghiệp vụ điển h&igrave;nh. Hiện nay, Becgie Bỉ đ&atilde; v&agrave; đang l&agrave; một th&agrave;nh vi&ecirc;n chủ chốt trong lực lượng K9.</p>\r\n', '24570000.00', 0, 'malinois-4.jpg', '[\"huan-luyen-cho-malinois-becgie-bi.jpg\",\"mua-ban-becgie-bi.jpg\"]', 1, 0, 4, 1, 1640524835),
(76, 28, 'ALASKA', '<p>CH&Oacute; ALASKA</p>\r\n\r\n<p>Alaska (hay Alaskan Malamute) l&agrave; giống ch&oacute; tuyết đ&atilde; đồng h&agrave;nh c&ugrave;ng con người suốt h&agrave;ng ng&agrave;n năm về trước. Ch&uacute;ng lu&ocirc;n được con người tin tưởng bởi tr&iacute; th&ocirc;ng minh, sự dẻo dai v&agrave; l&ograve;ng trung th&agrave;nh tuyệt đối với chủ nh&acirc;n của m&igrave;nh.</p>\r\n\r\n<p>NGUỒN GỐC CH&Oacute; ALASKA</p>\r\n\r\n<p>Tổ ti&ecirc;n của ch&oacute; Alaska l&agrave; giống ch&oacute; tuyết hoang d&atilde;. Trải qua bao cuộc lai tạo với c&aacute;c giống ch&oacute; kh&aacute;c nhau như St Bernard đ&atilde; cho ra đời giống ch&oacute; Alaska với nhiều ưu điểm vượt trội như hiện nay.</p>\r\n\r\n<p>Giống ch&oacute; n&agrave;y chủ yếu được nu&ocirc;i dưỡng ở v&ugrave;ng Alaska, nơi c&oacute; kh&iacute; hậu v&ocirc; c&ugrave;ng lạnh gi&aacute; v&agrave; khắc nghiệt.</p>\r\n', '32220000.00', 2600000, '1-alaska.jpg', '[]', 3, 0, 4, 1, 1640525070),
(77, 28, 'AKITA INU', '<p>CH&Oacute; AKITA INU</p>\r\n\r\n<p>Nhắc đến giống ch&oacute; Akita Inu chắc hẳn mọi người d&acirc;n Nhật Bản đều rất tự h&agrave;o v&igrave; l&agrave; c&aacute;i n&ocirc;i sinh ra ch&uacute;ng.</p>\r\n\r\n<p>Sở dĩ họ tự h&agrave;o như vậy l&agrave; do Akita rất th&ocirc;ng minh, mạnh mẽ v&agrave; đặc biệt l&agrave; cực k&igrave; trung th&agrave;nh với chủ nh&acirc;n của m&igrave;nh. Nhờ những đức t&iacute;nh đ&oacute;, ch&uacute;ng đ&atilde; trở th&agrave;nh niềm cảm hứng của biết bao t&aacute;c phẩm nghệ thuật nổi tiếng.</p>\r\n\r\n<p>NGUỒN GỐC CH&Oacute; AKITA INU</p>\r\n\r\n<p>Ch&oacute; Akita Inu được t&igrave;m thấy từ h&agrave;ng ng&agrave;n năm trước tr&ecirc;n h&ograve;n đảo Honsu, tỉnh Akita, Nhật Bản. Ch&uacute;ng l&agrave; một trong những giống ch&oacute; cổ xưa nhất thế giới.</p>\r\n\r\n<p>Năm 1931, Akita ch&iacute;nh thức được c&ocirc;ng nhận l&agrave; Quốc Khuyển của Nhật Bản. Đến năm 1964, ch&uacute;ng được Hiệp Hội ch&oacute; giống Thế Giới FCI c&ocirc;ng nhận l&agrave; một giống ch&oacute; ri&ecirc;ng biệt</p>\r\n', '22220000.00', 20000, 'mua-ban-akita_0.jpg', '[]', 1, 0, 4, 1, 1640525188),
(78, 28, 'BECGIE ĐỨC', '<p><strong>CHẤT LƯỢNG</strong></p>\r\n\r\n<p>Ti&ecirc;u chuẩn của Becgie Đức xuất chuồng tại Homeless Pet phải tr&ecirc;n 2 th&aacute;ng tuổi, kh&ocirc;ng c&oacute; tật lỗi v&agrave; đ&atilde; được ti&ecirc;m ph&ograve;ng v&agrave; tẩy giun đ&uacute;ng định kỳ, c&uacute;n đ&atilde; ăn được cơm thịt, ch&aacute;o thịt, v&agrave; hạt kh&ocirc;. Khi xuất chuồng c&uacute;n sẽ c&oacute; sổ theo d&otilde;i sức khỏe, trong sổ c&oacute; ghi lịch tẩy giun v&agrave; lịch ti&ecirc;m ph&ograve;ng.</p>\r\n', '25920000.00', 0, 'mua-ban-becgie-duc.jpg', '[]', 3, 0, 4, 1, 1640525425),
(79, 28, 'CHÓ ĐỐM', '<p>NGUỒN GỐC CH&Oacute; ĐỐM</p>\r\n\r\n<p>Ch&oacute; Đốm c&oacute; xuất xứ từ v&ugrave;ng Dalmatian nhờ vậy ch&uacute;ng c&ograve;n c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; ch&oacute; Dalmatian. Tuy nhi&ecirc;n đến ng&agrave;y nay vẫn c&oacute; nhiều tranh c&atilde;i về nguồn gốc của giống ch&oacute; n&agrave;y.</p>\r\n\r\n<p>Đến năm 1988, ch&oacute; Đốm ch&iacute;nh thức được Hiệp hội nu&ocirc;i ch&oacute; Mỹ (ACK) c&ocirc;ng nhận l&agrave; giống ch&oacute; ri&ecirc;ng.</p>\r\n', '11175000.00', 110000, 'mua-ban-cho-dom.jpg', '[\"Binka_10_06.jpg\",\"cho-dom-dalmatian-thuong-gap-rac-roi-voi-van-de-suc-khoe-cua-minh-1024x7622.jpg\"]', 3, 0, 4, 1, 1640525926),
(80, 30, 'Chuột kiểng hamster', '<p><strong>M&ocirc; tả:</strong></p>\r\n\r\n<p>Trang trại chuột kiểng hamster q11, hcm chuy&ecirc;n sỉ v&agrave; lẻ số lượng lớn mỗi tuần, nhận chuyển h&agrave;ng to&agrave;n quốc. Gi&aacute; tuỳ theo m&agrave;u l&ocirc;ng. cac B&eacute; xuất trại 3-4 tuần tuổi, ăn khoẻ, mập, l&ocirc;ng mượt..</p>\r\n', '33000.00', 0, '4db813c738c1613b519abfca5e785205-2655230746763766465.jpg', '[]', 1, 0, 4, 1, 1640526230),
(81, 29, 'Mèo ALN Tabby siêu xinh', '<p>Nh&agrave; m&igrave;nh c&oacute; đ&agrave;n ALN tabby 1,5 th&aacute;ng tuổi, mập mạp,sức khoẻ tốt, ăn mạnh hạt canin, pate, g&agrave; x&eacute;, s&uacute;p ciao... C&aacute;c b&eacute; đ&atilde; được xổ giun v&agrave; sẽ ti&ecirc;m vacxin khi đủ 2 th&aacute;ng tuổi, bảo h&agrave;nh sức khoẻ khi về nh&agrave; mới, ai y&ecirc;u thương li&ecirc;n hệ m&igrave;nh nha.</p>\r\n', '3500000.00', 0, 'c949f1348096e0ec081e5622e71d799b-2751195963168411340.jpg', '[]', 0, 0, 4, 1, 1640526427),
(82, 29, 'Bi tabby blu cái', '<p><strong>M&ocirc; tả:</strong></p>\r\n\r\n<p>M&egrave;o anhl&ocirc;ng ngắn</p>\r\n\r\n<p>2 th&aacute;ng tuổi</p>\r\n\r\n<p>M&agrave;u Tabby</p>\r\n\r\n<p>Đ&atilde; ti&ecirc;m ph&ograve;ng 1 mũi</p>\r\n', '3224000.00', 0, 'bb334010133d20be893fe19290512dad-2745968027504107091.jpg', '[]', 0, 0, 4, 1, 1640526627),
(85, 29, 'Bi tabby blu đực', '<p>Anh l&ocirc;ng ngắn</p>\r\n\r\n<p>2 th&aacute;ng</p>\r\n\r\n<p>M&agrave;u Bi tabby blu đực</p>\r\n', '24570000.00', 0, '1fb877a83cf278c659c49d482aa4a613-2746275918363112163.jpg', '[]', 1, 0, 4, 1, 1640527682),
(86, 28, 'Bầy chó Poodle', '<p>Đ&agrave;n Poodle thuần chủng nh&agrave; đẻ. 1 c&aacute;i 3 đực. Si&ecirc;u dễ thương.L&ocirc;ng xoăn t&iacute;t.</p>\r\n\r\n<p>Gi&aacute; từ 3,5 triệu tuỳ b&eacute;&hellip; Đ&atilde; được ti&ecirc;m ph&ograve;ng tẩy giun, c&oacute; sổ ti&ecirc;m.</p>\r\n\r\n<p>Xem ch&oacute; tại nh&agrave;. Nhận ship tận nơi!</p>\r\n', '3500000.00', 0, 'unnamed.jpg', '[\"unnamed_(1).jpg\"]', 3, 0, 4, 1, 1640527829),
(87, 28, 'Poode tiny nhà đẻ thuần chủng', '<p>C&uacute;n được gần 3 th&aacute;ng tuổi ăn cơm ăn ch&aacute;o tốt.Tinh nghịch quấn chủ ch&oacute; đ&atilde; ti&ecirc;m ph&ograve;ng mũi 5 bệnh v&agrave; tẩy run bảo h&agrave;nh 2 bệnh care v&agrave; pravo trong v&ograve;ng 7 ng&agrave;y ưu ti&ecirc;n qua xem trực tiếp</p>\r\n', '3070000.00', 0, '9dae6974428441550fd3fcfd084f89ae-2694744353727374014.jpg', '[\"1-1.jpg\",\"95c627f7ba9d6505e44beae55f590fa6-2733138637669377666.jpg\"]', 3, 1, 9, 2, 1640528456);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `name`, `image_link`, `link`, `sort_order`, `created`) VALUES
(6, 'Thức ăn cho chó NATURAL CORE sale 50%', 'rsz_1slider_3.png', 'http://localhost/homelesspet/thuc-an-hon-hop-thit-cuu---natural-core-lamb-p83', 3, '2021-12-26 10:07:20'),
(7, 'Sale giáng sinh', 'rsz_21d274907349244-today-cat-dog-xmas-141202_jpg.png', 'http://localhost/homelesspet/phu-kien-ngay-le-c37', 1, '2021-12-26 10:11:18'),
(8, 'Nhà gỗ giảm 50%', 'rsz_1anhbaner1cc.png', 'http://localhost/homelesspet/nha-go-giuong-go-c38', 2, '2021-12-26 12:13:04'),
(9, 'Thức ăn cho Pet sale 50%', 'rsz_banner_collection.jpg', 'http://localhost/homelesspet/thuc-an-c26', 4, '2021-12-26 12:20:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `amount`, `payment`, `created`) VALUES
(18, 1, 10, 'Lê Thị Nhật Lệ', 'admin@gmail.com', '02818239273', 'Hải Phòng', 'Hello', '155000.00', '', 1640528296),
(19, 0, 10, 'Lê Thị Nhật Lệ', 'admin@gmail.com', '02818239273', 'Hải Phòng', 'hello', '30710000.00', '', 1640528593),
(20, 0, 10, 'Lê Thị Nhật Lệ', 'admin@gmail.com', '02818239273', 'Hải Phòng', 'bffbfb', '3070000.00', '', 1640532844),
(21, 1, 10, 'Lê Thị Nhật Lệ', 'admin@gmail.com', '02818239273', 'Hải Phòng', 'hffhfh', '3070000.00', '', 1640543962);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`, `created`) VALUES
(8, 'Nguyễn Hữu Mạnh', 'shinichi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0387542577', 'chương mỹ', 2021),
(10, 'Lê Thị Nhật Lệ', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '02818239273', 'Hải Phòng', 2021);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
