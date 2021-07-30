-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 30, 2021 lúc 04:20 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vjcogroup_tap`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(250) NOT NULL,
  `blog_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `blog_img` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `blog_detail` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_name`, `blog_img`, `blog_detail`) VALUES
(1, 'Ung thư không đáng sợ nếu bạn biết những điều này ', 'ungthu.png', '<h1>Ung thư kh&ocirc;ng đ&aacute;ng sợ nếu bạn biết những điều n&agrave;y</h1>\r\n\r\n<p><big>C&agrave;ng ng&agrave;y c&agrave;ng nhiều người mắc bệnh ung thư tại Việt Nam. Những người trẻ ở tuổi 20 đ&atilde; mắc căn bệnh ung thư qu&aacute;i &aacute;c. Vậy l&agrave;m thế n&agrave;o để tho&aacute;t khỏi bệnh ung thư, Koremom sẽ cung cấp đầy đủ c&aacute;c mẹo gi&uacute;p giảm thiểu nguy cơ mắc bệnh ung thư tại b&agrave;i viết dưới đ&acirc;y.</big></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><big>Ở Việt Nam, bệnh ung thư được xem l&agrave; căn bệnh nguy hiểm v&agrave; c&oacute; tỉ lệ tử vong cao, mọi người cũng c&oacute; nguy cơ mắc phải căn bệnh qu&aacute;i &aacute;c n&agrave;y. Đ&aacute;ng lo ngại hơn l&agrave; ng&agrave;y c&agrave;ng c&oacute; nhiều người trẻ tuổi mắc bệnh ung thư. Một điều lu&ocirc;n cần ghi nhớ l&agrave; kh&ocirc;ng bao giờ được chủ quan về sức khỏe của bản th&acirc;n, mầm mống bệnh ung thư lu&ocirc;n r&igrave;nh rập. Tuy chưa c&oacute; thuốc ti&ecirc;m ph&ograve;ng bệnh ung thư, nhưng nếu bạn ch&uacute; &yacute; đến những c&aacute;ch ph&ograve;ng tr&aacute;nh bệnh ung thư dưới đ&acirc;y, c&oacute; thể bạn vừa tho&aacute;t khỏi ngưỡng mắc bệnh rồi đ&oacute;.&nbsp;</big></p>\r\n'),
(2, 'Những công dụng thần kì của nghệ đối với sức khỏe', 'congdungcuanghe.jpg', '<p><big>C&aacute;c c&ocirc;ng dụng thần k&igrave; của nghệ ...</big></p>\r\n'),
(3, '10 Tập đoàn lớn nhất Việt Nam', 'top10tapdoan.png', '<p><big>C&aacute;c tập đo&agrave;n lớn nhất Việt Nam ...</big></p>\r\n'),
(5, 'Chế độ ăn uống cho người tiểu đường', 'anuongtieuduong.jpg', '<p><big>Chế độ ăn uống cho người tiểu đường...&nbsp;</big></p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_kibie`
--

CREATE TABLE `blog_kibie` (
  `blogki_id` int(250) NOT NULL,
  `catki_id` int(250) NOT NULL,
  `blogki_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `blogki_img` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `blogki_detail` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_kibie`
--

INSERT INTO `blog_kibie` (`blogki_id`, `catki_id`, `blogki_name`, `blogki_img`, `blogki_detail`) VALUES
(1, 1, '5 cách \"Nâng cấp vòng 1 sau sinh\" hiệu quả tại nhà', 'nangvong1.jpg', '5 cách'),
(2, 1, 'Sai lầm khi uống thuốc bổ - Mẹ bầu nào cũng gặp phải', 'sailamthuocbo.png', '<p>C&aacute;c sai lầm khi uống thuốc bổ&nbsp;</p>\r\n'),
(3, 1, '5 nguyên tắc ăn dặm đúng cách cho bé', 'andamdungcach.png', '<p>5 nguy&ecirc;n tắc ăn dặm đ&uacute;ng c&aacute;ch</p>\r\n'),
(4, 2, 'Chiều cao cân nặng chuẩn trẻ sơ sinh', 'chieucaocannang.jpg', '<p>Chiều cao c&acirc;n nặng chuẩn trẻ sơ sinh ...</p>\r\n'),
(5, 2, '5 lợi ích bất ngờ khi nuôi thú cưng cho bé', '5loiichthucung.png', '<p>Lợi &iacute;ch khi nu&ocirc;i th&uacute; cưng ...</p>\r\n'),
(6, 3, 'test', 'nuoicon.jpg', '<p><big>test</big></p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(2, 'Khuyến mại'),
(1, 'Tã quần cho bé');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cat_blogkibie`
--

CREATE TABLE `cat_blogkibie` (
  `catki_id` int(250) NOT NULL,
  `catki_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cat_blogkibie`
--

INSERT INTO `cat_blogkibie` (`catki_id`, `catki_name`) VALUES
(1, 'Lần đầu làm cha mẹ'),
(2, 'Cha mẹ và con cái'),
(3, 'Kế hoạch chi tiêu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comm_id` int(11) NOT NULL,
  `prd_id` int(11) NOT NULL,
  `comm_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comm_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comm_date` datetime NOT NULL,
  `comm_details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comm_id`, `prd_id`, `comm_name`, `comm_mail`, `comm_date`, `comm_details`) VALUES
(1, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(2, 2, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(3, 3, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(4, 4, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(5, 5, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(6, 6, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(7, 7, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(8, 8, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(9, 9, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(10, 10, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(11, 11, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(12, 12, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(13, 13, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(14, 14, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(15, 15, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(16, 16, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(17, 17, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(18, 18, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(19, 19, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(20, 20, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(21, 21, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(22, 22, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(23, 23, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(24, 24, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(25, 25, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(26, 26, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(27, 27, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(28, 28, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(29, 29, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(30, 30, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gift_code`
--

CREATE TABLE `gift_code` (
  `id` int(250) NOT NULL,
  `gift_code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `create_at` datetime NOT NULL,
  `end_at` datetime NOT NULL,
  `use_at` datetime NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gift_code`
--

INSERT INTO `gift_code` (`id`, `gift_code`, `amount`, `type`, `create_at`, `end_at`, `use_at`, `status`) VALUES
(1, '#002', '2', '%', '2021-07-16 18:18:00', '2021-07-31 15:20:00', '2021-07-16 19:22:00', 0),
(2, '#002', '2', '%', '2021-07-14 15:18:00', '2021-07-29 15:18:00', '2021-07-26 15:19:00', 0),
(3, '#001', '3', 'vnd', '2021-07-09 15:43:00', '2021-07-23 15:43:00', '2021-07-20 15:43:00', -1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `introduce`
--

CREATE TABLE `introduce` (
  `intro_id` int(25) NOT NULL,
  `intro_introduce` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `introduce`
--

INSERT INTO `introduce` (`intro_id`, `intro_introduce`) VALUES
(1, '<h2>C&Ocirc;NG TY CỔ PHẦN THƯƠNG MẠI KOREA H&Agrave; NỘI</h2>\r\n\r\n<h2>Ph&acirc;n phối độc quyền Koremom tại Việt Nam</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&quot;Th&agrave;nh c&ocirc;ng đến từ sự Ph&aacute;t triển Bền vững&quot;</h2>\r\n\r\n<p><big>KOREA H&Agrave; NỘI&nbsp; l&agrave; một trong những c&ocirc;ng ty h&agrave;ng đầu Việt Nam chuy&ecirc;n về c&aacute;c sản phẩm chăm s&oacute;c c&aacute; nh&acirc;n, chăm s&oacute;c gia đ&igrave;nh. KOREA H&Agrave; NỘI hiện đang ph&acirc;n phối độc quyền nhiều mặt h&agrave;ng ti&ecirc;u d&ugrave;ng nhập khẩu với cam kết n&acirc;ng cao chất lượng cuộc sống của&nbsp; người d&acirc;n Việt Nam th&ocirc;ng qua những sản phẩm v&agrave; dịch vụ của m&igrave;nh.&nbsp;</big></p>\r\n\r\n<p><big>Bắt đầu hoạt động kinh doanh tại Việt Nam, th&ocirc;ng qua mạng lưới với khoản hơn nh&agrave; ph&acirc;n phối v&agrave; nh&agrave; b&aacute;n lẻ rộng khắp, KOREA H&Agrave; NỘI đ&atilde; cung cấp việc l&agrave;m trực tiếp cho hơn 1000 người v&agrave; cung cấp hơn 1500 việc l&agrave;m gi&aacute;n tiếp cho những người l&agrave;m việc trong c&aacute;c b&ecirc;n thứ ba, nh&agrave; cung cấp v&agrave; nh&agrave; ph&acirc;n phối của ch&uacute;ng t&ocirc;i.</big></p>\r\n\r\n<p><big>Ng&agrave;y nay, c&aacute;c nh&atilde;n h&agrave;ng của ch&uacute;ng t&ocirc;i như Bỉm trẻ em KOREMOM, Bỉm trẻ em KIBIE đ&atilde; trở th&agrave;nh những c&aacute;i t&ecirc;n quen thuộc với c&aacute;c gia đ&igrave;nh c&oacute; con nhỏ tại Việt Nam. Đ&atilde; v&agrave; đang c&oacute; rất nhiều b&agrave; mẹ Việt Nam cho con sử dụng sản phẩm của KOREA H&Agrave; NỘI, ch&iacute;nh điều n&agrave;y gi&uacute;p cải thiện sức khỏe v&agrave; điều kiện vệ sinh cho c&aacute;c b&eacute;.&nbsp;</big></p>\r\n\r\n<p><big>KOREA H&Agrave; NỘI tự h&agrave;o l&agrave; người bạn đồng h&agrave;nh trong cuộc sống của mỗi người d&acirc;n Việt Nam kh&ocirc;ng chỉ th&ocirc;ng qua c&aacute;c sản phẩm của c&ocirc;ng ty m&agrave; c&ograve;n th&ocirc;ng qua mối quan t&acirc;m s&acirc;u sắc của ch&uacute;ng t&ocirc;i đối với cộng đồng v&agrave; m&ocirc;i trường. Ch&uacute;ng t&ocirc;i tin tưởng một c&aacute;ch s&acirc;u sắc rằng tr&aacute;ch nhiệm x&atilde; hội của doanh nghiệp l&agrave; một phần kh&ocirc;ng thể thiếu trong kinh doanh v&agrave; l&agrave; ch&igrave;a kh&oacute;a cho sự ph&aacute;t triển bền vững.&nbsp;</big></p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(250) NOT NULL,
  `order_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `order_phone` int(12) NOT NULL,
  `order_mail` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `order_add` text COLLATE utf8_unicode_ci NOT NULL,
  `order_note` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(25) NOT NULL,
  `prd_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `prd_qtt` int(25) NOT NULL,
  `order_check` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `order_name`, `order_phone`, `order_mail`, `order_add`, `order_note`, `price`, `prd_name`, `prd_qtt`, `order_check`) VALUES
(1, 'a', 1233442422, 'a@gmail.com', 'aaaaa', 'aaaa', 2240000, '[COMBO 7 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', 1, 0),
(2, 'dadad', 1233442422, 'a@gmail.com', 'ada', 'adad', 2240000, '[COMBO 7 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', 1, 0),
(3, 'dadad', 1233442422, 'a@gmail.com', 'ada', 'adad', 2880000, '[COMBO 2 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', 1, 0),
(4, 'dadad', 1233442422, 'a@gmail.com', 'ada', 'adad', 4160000, '[COMBO 4 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', 1, 0),
(5, 'dadad', 1233442422, 'a@gmail.com', 'ada', 'adad', 8000000, '[COMBO 6 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', 2, 0),
(6, 'dadad', 1233442422, 'a@gmail.com', 'ada', 'adad', 9920000, '[COMBO 3 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', 2, 0),
(7, 'a', 1233442422, 'a@gmail.com', 'aaaaa', 'aaaa', 2240000, '[COMBO 7 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', 1, 0),
(8, 'a', 1233442422, 'a@gmail.com', 'aaaaa', 'aaaa', 640000, '[COMBO 2 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', 1, 0),
(13, 'le dinh dat ', 123456666, 'test@gmail.com', 'ha dong ', 'aaaaaaaa', 2240000, '[COMBO 7 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', 1, 0),
(17, 'dat', 1233442422, 'test@gmail.com', 'ha dong', 'aaaaaaaaaaaaaaaa', 320000, 'Bỉm - Tã quần Koremom cao cấp size XXL (bé 17 - 23kg)', 1, 0),
(19, 'a', 1233442422, 'test@gmail.com', 'ha dong ', 'sSsssSsSsSsS', 960000, '[COMBO 3 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', 1, 0),
(20, 'test', 11111111, 'a', 'adad', '', 320000, 'Bỉm - Tã quần Koremom cao cấp size M (bé từ 6-10kg)', 1, 0),
(22, 'test', 1233442422, 'a@gmail.com', 'ha dong', 'sSsssSsSsSsS', 627200, 'Bỉm - Tã quần Koremom cao cấp size M (bé từ 6-10kg)', 2, 0),
(30, 'test', 1233442422, 'test@gmail.com', 'ha dong ', 'aaaaaaaaaaaaaaaa', 313600, 'Bỉm - Tã quần Koremom cao cấp size XXL (bé 17 - 23kg)', 1, 0),
(31, 'test', 1233442422, 'test@gmail.com', 'ha dong ', 'aaaaaaaaaaaaaaaa', 1881600, '[COMBO 2 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `prd_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prd_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_price` int(11) UNSIGNED NOT NULL,
  `prd_status` int(1) NOT NULL,
  `prd_code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `prd_details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`prd_id`, `cat_id`, `prd_name`, `prd_image`, `prd_price`, `prd_status`, `prd_code`, `prd_details`) VALUES
(1, 1, '[COMBO 7 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', '7.png', 2240000, 1, '#148419', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n'),
(2, 1, '[COMBO 2 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', '2.png', 640000, 1, '#148339', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n'),
(3, 1, 'Bỉm - Tã quần Koremom cao cấp size L (bé từ 10-14kg)', '10-14kg.png', 320000, 1, '#001', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n'),
(4, 1, 'Bỉm - Tã quần Koremom cao cấp size XL (bé từ 12-17kg)', '12-17kg.png', 320000, 1, '#002', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n'),
(5, 1, 'Bỉm - Tã quần Koremom cao cấp size XXL (bé 17 - 23kg)', '17-23kg.png', 320000, 0, '#003', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n'),
(6, 1, '[COMBO 4 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', '4.png', 1280000, 1, '#004', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n'),
(7, 1, '[COMBO 6 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', '6.png', 1920000, 1, '#005', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n'),
(8, 1, '[COMBO 3 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', '3.png', 960000, 1, '#006', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n'),
(9, 1, 'Bỉm - Tã quần Koremom cao cấp size M (bé từ 6-10kg)', '6-10kg.png', 320000, 1, '#007', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n'),
(10, 1, '[COMBO 5 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', '5.png', 1600000, 0, '#008', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n'),
(11, 2, '[COMBO 7 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', '7.png', 2240000, 1, '#148419', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n'),
(12, 2, '[COMBO 2 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', '2.png', 640000, 1, '#148339', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n'),
(13, 2, '[COMBO 4 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', '4.png', 1280000, 1, '#004', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n');
INSERT INTO `product` (`prd_id`, `cat_id`, `prd_name`, `prd_image`, `prd_price`, `prd_status`, `prd_code`, `prd_details`) VALUES
(14, 2, '[COMBO 6 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', '6.png', 1920000, 1, '#005', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n'),
(15, 2, '[COMBO 3 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', '3.png', 960000, 1, '#006', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n'),
(31, 2, '[COMBO 5 BỊCH BẤT KỲ] Bỉm quần Koremom - Tã quần cao cấp Hàn Quốc', '5.png', 1600000, 1, '#008', '<p>- Theo nghi&ecirc;n cứu từ c&aacute;c nh&agrave; khoa học, Bỉm t&atilde; c&oacute; ảnh hưởng rất lớn đến sự ph&aacute;t triển v&agrave; vận động của trẻ nhỏ v&agrave; tr&ecirc;n thị trường hiện nay c&oacute; rất rất nhiều c&aacute;c sp bỉm kh&aacute;c nhau cho b&eacute; với đủ c&aacute;c mẫu m&atilde; đa dạng, l&agrave; một b&agrave; mẹ đang trực tiếp nu&ocirc;i dạy trẻ nhỏ t&ocirc;i thấu hiểu được sự quan trọng của việc lựa chọn bỉm cho b&eacute; vậy n&ecirc;n đội ngũ c&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; trăn trở v&agrave; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu sản phẩm để mang lại cho bạn sp bỉm tốt nhất cho sức khỏe của b&eacute; - Bỉm quần Koremom với chất liệu b&ocirc;ng si&ecirc;u mỏng, si&ecirc;u thấm c&ugrave;ng c&aacute;c hạt khử m&ugrave;i gi&uacute;p da b&eacute; kh&ocirc; r&aacute;o, mịn m&agrave;ng, tr&aacute;nh được c&aacute;c bệnh về da do phải mặc t&atilde; thường xuy&ecirc;n. Hơn nữa, với thiết kế mới tho&aacute;ng kh&iacute;, mẹ kh&ocirc;ng c&ograve;n lo b&eacute; bị hăm t&atilde; hay vi&ecirc;m da. T&atilde; quần Koremom gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng như kh&ocirc;ng mặc t&atilde;.</p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>1/. Thấm h&uacute;t mạnh mẽ</p>\r\n\r\n<p>&bull; Sử dụng c&ocirc;ng nghệ 3D ti&ecirc;n tiến, bỉm Koremom nhanh ch&oacute;ng thấm h&uacute;t chất lỏng, gi&uacute;p da trẻ lu&ocirc;n kh&ocirc; r&aacute;o v&agrave; sạch sẽ, &ecirc;m &aacute;i, gi&uacute;p trẻ lu&ocirc;n thấy thoải m&aacute;i nhất.</p>\r\n\r\n<p>&bull; Mỗi miếng t&atilde; Koremom đều được thiết kế với m&agrave;ng đ&aacute;y tho&aacute;ng kh&iacute; cao cấp. Nhờ đ&oacute;, d&ugrave; thấm h&uacute;t một lượng lớn chất lỏng nhưng kh&ocirc;ng kh&iacute; vẫn lưu th&ocirc;ng dễ d&agrave;ng, đem lại cho b&eacute; l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; kh&ocirc;ng sợ ẩm ướt, ngăn chặn t&igrave;nh trạng hăm t&atilde; hiệu quả.</p>\r\n\r\n<p>2/. Hệ thống chống tr&agrave;n k&eacute;p</p>\r\n\r\n<p>&bull; Với hệ thống chống tr&agrave;n k&eacute;p, bỉm Koremom kh&ocirc;ng để nước tr&agrave;n sang hai b&ecirc;n, gi&uacute;p trẻ lu&ocirc;n thoải m&aacute;i khi vận động.</p>\r\n\r\n<p>&bull; Th&ocirc;ng qua c&aacute;c h&igrave;nh hoa văn th&ocirc;ng minh tr&ecirc;n bề mặt bỉm bị mờ dần để c&oacute; thể thay bỉm cho trẻ đ&uacute;ng l&uacute;c, kịp thời.</p>\r\n\r\n<p>3/. Đai bỉm si&ecirc;u mềm</p>\r\n\r\n<p>&bull; Được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại với c&aacute;c chất liệu cao cấp, tu&acirc;n thủ quy định nghi&ecirc;m ngặt về sự an to&agrave;n theo ti&ecirc;u chuẩn H&agrave;n Quốc. Bỉm Koremom được sử dụng chất liệu an to&agrave;n, mềm mại, l&agrave;n da b&eacute; khi tiếp x&uacute;c lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; dễ chịu.</p>\r\n\r\n<p>&bull; Thiết kế đai bỉm v&agrave; bẹn quần si&ecirc;u mềm mại, đ&agrave;n hồi, &ocirc;m kh&iacute;t gi&uacute;p trẻ thoải m&aacute;i vận động m&agrave; vẫn giữ chắc chắn, kh&ocirc;ng bị x&ocirc; lệch.</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>1/. Size M 52 miếngcho b&eacute; từ 6 - 10 kg.</p>\r\n\r\n<p>2/. Size L 48 miếng cho b&eacute; từ 10 - 14 kg.</p>\r\n\r\n<p>3/. Size XL 44 miếng cho b&eacute; từ 12 - 17 kg.</p>\r\n\r\n<p>4/. Size XXL 40 miếng cho b&eacute; 17 - 23 kg.</p>\r\n\r\n<p>TH&Ocirc;NG TIN THƯƠNG HIỆU</p>\r\n\r\n<p>Sản phẩm được nhập khẩu nguy&ecirc;n chiếc từ Malaysia với c&ocirc;ng nghệ H&agrave;n Quốc, Koremom mang đến sản phẩm chất lượng quốc tế, gi&aacute; cả Việt Nam, gi&uacute;p mẹ lu&ocirc;n an t&acirc;m khi chọn Koremom cho b&eacute;.</p>\r\n\r\n<p>HSD: 5 năm kể từ NSX</p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `signup_test`
--

CREATE TABLE `signup_test` (
  `signup_id` int(250) NOT NULL,
  `signup_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `signup_birthday` date NOT NULL,
  `signup_phone` int(12) NOT NULL,
  `signup_add` text COLLATE utf8_unicode_ci NOT NULL,
  `signup_weight` text COLLATE utf8_unicode_ci NOT NULL,
  `signup_size` text COLLATE utf8_unicode_ci NOT NULL,
  `signup_note` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `signup_test`
--

INSERT INTO `signup_test` (`signup_id`, `signup_name`, `signup_birthday`, `signup_phone`, `signup_add`, `signup_weight`, `signup_size`, `signup_note`) VALUES
(1, 'dat', '2021-07-21', 123456789, 'aaaaaaaaaaaaaa', '10', 'a', 'aaaaaaaaaaaaaaaa'),
(2, 'aaaaa', '2021-07-20', 0, 'aaaaa', 'aaaa', 'aaaa', 'aaaaaaaaa'),
(3, 'abcde', '2021-07-20', 12345678, 'aaaaa', 'aaaaa', 'aaa', 'aaaaaaaaa'),
(4, 'test', '2021-07-16', 12345678, 'aaaaaaaaaaaaaa', '12', 's', 'hello'),
(5, 'aaaaa', '2021-07-08', 12345678, 'aaaaaaaaaaaaaa', '10', 'aaaa', 'hello');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_full` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_full`, `user_mail`, `user_pass`, `user_level`) VALUES
(1, 'Kibie', 'kibie@gmail.com', '123456', 1),
(2, 'Administrator', 'admin@gmail.com', '123456', 1),
(3, 'Nguyễn Van A', 'nguyenvana@gmail.com', '123456', 2),
(4, 'Nguyễn Van B', 'nguyenvanb@gmail.com', '123456', 2),
(5, 'Nguyễn Van C', 'nguyenvanc@gmail.com', '123456', 2),
(6, 'Nguyễn Van D', 'nguyenvand@gmail.com', '123456', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Chỉ mục cho bảng `blog_kibie`
--
ALTER TABLE `blog_kibie`
  ADD PRIMARY KEY (`blogki_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Chỉ mục cho bảng `cat_blogkibie`
--
ALTER TABLE `cat_blogkibie`
  ADD PRIMARY KEY (`catki_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comm_id`);

--
-- Chỉ mục cho bảng `gift_code`
--
ALTER TABLE `gift_code`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `introduce`
--
ALTER TABLE `introduce`
  ADD PRIMARY KEY (`intro_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prd_id`);

--
-- Chỉ mục cho bảng `signup_test`
--
ALTER TABLE `signup_test`
  ADD PRIMARY KEY (`signup_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_mail` (`user_mail`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `blog_kibie`
--
ALTER TABLE `blog_kibie`
  MODIFY `blogki_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `cat_blogkibie`
--
ALTER TABLE `cat_blogkibie`
  MODIFY `catki_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `gift_code`
--
ALTER TABLE `gift_code`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `introduce`
--
ALTER TABLE `introduce`
  MODIFY `intro_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `signup_test`
--
ALTER TABLE `signup_test`
  MODIFY `signup_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
