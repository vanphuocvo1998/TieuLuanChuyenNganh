-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 29, 2019 lúc 05:21 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipcost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `city`
--

INSERT INTO `city` (`id`, `name`, `shipcost`) VALUES
(1, 'TPHCM', 10000),
(2, 'Vũng Tàu', 50000),
(3, 'Đồng Nai', 30000),
(4, 'Long An', 30000),
(5, 'Cà Mau', 200000),
(6, 'Cần Thơ', 70000),
(7, 'Bạc Liêu', 150000),
(8, 'Tiền Giang', 120000),
(9, 'Khu Vực Miền Trung', 500000),
(10, 'Khu Vực Miền Bắc', 800000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `color`
--

INSERT INTO `color` (`id`, `name`) VALUES
(1, 'Bạc'),
(2, 'Xám'),
(3, 'Xanh Lá'),
(4, 'Trắng'),
(5, 'Đen'),
(6, 'Vàng Đồng'),
(7, 'Vàng Hồng'),
(8, 'Hồng'),
(9, 'Xanh Dương'),
(10, 'Đỏ'),
(11, 'Tím'),
(12, 'Xanh Thiên Thanh'),
(13, 'Tím'),
(14, 'Tím'),
(15, 'Tím'),
(16, 'Tím'),
(17, 'Tím'),
(18, 'Tím'),
(19, 'Tím'),
(20, 'Tím'),
(21, 'Vàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colorproduct`
--

CREATE TABLE `colorproduct` (
  `idcolor` int(11) NOT NULL,
  `idproduct` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `colorproduct`
--

INSERT INTO `colorproduct` (`idcolor`, `idproduct`) VALUES
(1, 2),
(1, 3),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 53),
(1, 57),
(2, 2),
(2, 5),
(2, 53),
(2, 57),
(3, 2),
(3, 11),
(3, 17),
(3, 18),
(3, 19),
(3, 21),
(3, 53),
(3, 57),
(4, 4),
(4, 8),
(4, 13),
(4, 18),
(4, 19),
(4, 20),
(4, 22),
(4, 55),
(5, 6),
(5, 8),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 20),
(5, 22),
(5, 24),
(5, 25),
(5, 54),
(5, 55),
(5, 56),
(6, 6),
(6, 7),
(6, 9),
(6, 21),
(7, 7),
(7, 12),
(8, 10),
(8, 17),
(9, 9),
(9, 13),
(9, 14),
(9, 15),
(9, 16),
(9, 23),
(9, 24),
(9, 55),
(9, 56),
(10, 15),
(11, 18),
(11, 19),
(11, 25),
(11, 74),
(12, 23),
(21, 76);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` int(10) UNSIGNED NOT NULL,
  `user` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `content`, `product`, `user`) VALUES
(1, 'aaa', 8, 1),
(2, 'bbbb', 8, 1),
(3, 'cccc', 8, 1),
(4, 'ddddd', 23, 1),
(5, 'eeeeeee', 23, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `address`, `phone`, `deleted`) VALUES
(33, 'phuoc', 'phuoc@gmail.com', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_08_075531_loai_san_pham', 1),
(5, '2019_10_08_075618_loai_thanh_vien', 1),
(6, '2019_10_08_075720_nha_san_xuat', 1),
(7, '2019_10_08_075737_san_pham', 1),
(8, '2019_10_08_075752_thanh_vien', 1),
(9, '2019_10_08_075805_khach_hang', 1),
(10, '2019_10_08_075819_don_dat_hang', 1),
(11, '2019_10_08_075836_chi_tiet_don_dat_hang', 1),
(12, '2019_10_08_075854_binh_luan', 1),
(13, '2019_10_16_170844_slide', 1),
(14, '2019_10_22_141650_khoanggia', 2),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(18, '2016_06_01_000004_create_oauth_clients_table', 3),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(20, '2019_11_08_144029_social_networks', 3),
(21, '2019_11_12_080610_message', 4),
(22, '2019_11_25_143757_ram', 5),
(23, '2019_11_25_143816_rom', 5),
(24, '2019_11_25_143842_pin', 5),
(25, '2019_11_25_143910_rate', 5),
(26, '2019_11_25_143922_operatingsystem', 5),
(27, '2019_11_25_150126_ratedetail', 6),
(28, '2019_11_25_154810_screen', 6),
(29, '2019_11_26_064226_color', 7),
(30, '2019_11_26_071331_rate', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `operatingsystem`
--

CREATE TABLE `operatingsystem` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `operatingsystem`
--

INSERT INTO `operatingsystem` (`id`, `name`, `info`) VALUES
(1, 'iOS13', ''),
(2, 'iOS12', ''),
(3, 'Android 9.0 (Pie)', ''),
(4, 'Android 8.1 (Oreo)', ''),
(5, 'ColorOS 5.2 (Android 8.1)', ''),
(6, 'TEST', NULL),
(7, 'Phước', NULL),
(8, 'Android 9.0 (Go Edition)', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderdate` datetime NOT NULL,
  `delivered` int(11) NOT NULL,
  `deliverydate` datetime NOT NULL,
  `paid` int(11) NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `deleted` int(10) UNSIGNED NOT NULL,
  `deliveryplace` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placedetail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `orderdate`, `delivered`, `deliverydate`, `paid`, `customerid`, `deleted`, `deliveryplace`, `placedetail`) VALUES
(55, '2019-12-27 18:08:40', 0, '2019-12-27 18:08:40', 0, 33, 0, 'Vũng Tàu', NULL),
(56, '2019-12-28 11:28:48', 0, '2019-12-28 11:28:48', 0, 33, 0, 'Vũng Tàu', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderid` int(10) UNSIGNED NOT NULL,
  `productid` int(10) UNSIGNED NOT NULL,
  `productname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `orderid`, `productid`, `productname`, `count`, `color`, `rom`, `price`) VALUES
(60, 55, 4, 'iPhone Xr 128GB', 1, 'Trắng', '128 GB', 18050000),
(61, 56, 76, 'Itel S33', 1, 'Vàng', '16 GB', 2375000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pricerange`
--

CREATE TABLE `pricerange` (
  `id` int(10) UNSIGNED NOT NULL,
  `price1` int(11) NOT NULL,
  `price2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pricerange`
--

INSERT INTO `pricerange` (`id`, `price1`, `price2`) VALUES
(1, 1000000, 5000000),
(2, 5000000, 10000000),
(3, 10000000, 15000000),
(4, 15000000, 20000000),
(5, 20000000, 25000000),
(6, 25000000, 30000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producer`
--

CREATE TABLE `producer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `producer`
--

INSERT INTO `producer` (`id`, `name`) VALUES
(1, 'Apple'),
(2, 'SamSung'),
(3, 'OPPO'),
(4, 'Huawei'),
(5, 'Dell'),
(6, 'VinMart'),
(7, 'Vivo'),
(8, 'Nokia'),
(9, 'test'),
(10, 'test2'),
(11, 'Itel');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entryprice` int(11) DEFAULT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `saleprice` int(10) UNSIGNED DEFAULT NULL,
  `configuration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `quantityexists` int(11) DEFAULT NULL,
  `producttype` int(10) UNSIGNED DEFAULT NULL,
  `producer` int(10) UNSIGNED DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `pricerange` int(11) DEFAULT NULL,
  `maincamera` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frontcamera` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `screen` int(10) UNSIGNED DEFAULT NULL,
  `operatingsystem` int(10) UNSIGNED DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `slideimg1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slideimg2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slideimg3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `entryprice`, `price`, `saleprice`, `configuration`, `description`, `description1`, `description2`, `description3`, `image`, `image1`, `image2`, `image3`, `new`, `quantityexists`, `producttype`, `producer`, `deleted`, `pricerange`, `maincamera`, `frontcamera`, `pin`, `screen`, `operatingsystem`, `sale`, `slideimg1`, `slideimg2`, `slideimg3`) VALUES
(1, 'sp1', 500000, 1000000, 100000, 'aaa', 'đây là laptop', 'Apple A12 Bionic được xây dựng trên tiến trình 7nm đầu tiên của hãng với 6 nhân giúp iPhone Xs có được một hiệu năng “vô đối” cùng khả năng tiết kiệm năng lượng tối ưu.\r\nBên cạnh đó, bộ xử lý đồ họa của máy cũng được Apple thiết kế lại giúp việc chơi game', 'Chưa dừng lại ở đó, iPhone Xs còn được tích hợp thêm trí thông minh nhân tạo giúp tối ưu phần cứng để bạn có thể xử lý các tác vụ một cách đơn giản nhất.Kết hợp với phần cứng mạnh mẽ là hệ điều hành iOS 12 siêu mượt, hứa hẹn iPhone Xs sẽ trở thành một con', 'Màn hình Super Retina siêu sắc nét\r\nSo với đàn anh iPhone X thì iPhone XS được chăm chút hơn về khả năng hiển thị khi được trang bị hàng loạt các công nghệ cao cấp', 'xs1.png', 'xs2.jpg', 'xs3.jpg', 'xs4.jpg', 1, 10, 1, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL),
(2, 'iPhone 11 Pro Max 64GB', 30000000, 35000000, 34000000, '+ Màn hình:	OLED, 6.5\", Super Retina XDR\r\n+ Hệ điều hành:	iOS 13\r\n+ Camera sau:	3 camera 12 MP\r\n+ Camera trước:	12 MP\r\n+ CPU:	Apple A13 Bionic 6 nhân\r\n+ RAM:	4 GB\r\n+ Bộ nhớ trong:	64 GB\r\n+ Thẻ SIM:\r\nNano SIM & eSIM, Hỗ trợ 4G HOTSIM Mobi Big 70 (3GB data)', 'Đặc điểm nổi bật của iPhone 11 Pro Max 64GB\r\nTrong năm 2019 thì chiếc smartphone được nhiều người mong muốn sở hữu trên tay và sử dụng nhất không ai khác chính là iPhone 11 Pro Max 64GB tới từ nhà Apple.\r\nCamera được cải tiến mạnh mẽ', 'Chắc chắn lý do lớn nhất mà bạn muốn nâng cấp lên iPhone 11 Pro Max chính là cụm camera mới được Apple nâng cấp rất nhiều.\r\nLần đầu tiên chúng ta sẽ có một chiếc iPhone với 3 camera ở mặt sau và cả 3 camera này đều có độ phân giải là 12 MP.\r\nChúng ta sẽ có một camera góc thường, một camera góc rộng và một camera tele đáp ứng đầy đủ nhu cầu chụp ảnh hàng ngày của người dùng.', 'Một cải tiến nữa cũng rất đáng chú ý chính là chế độ Night Mode mới sẽ giúp bạn cải thiện rất nhiều chất lượng ảnh chụp đêm trên iPhone.\r\nTùy thuộc vào điều kiện môi trường bạn chụp mà iPhone sẽ đưa ra những thông số phù hợp để bạn có thể có cho mình được một bức ảnh ưng ý nhất.\r\nChế độ chân dung không chỉ tốt hơn trong việc lấy nét vào đối tượng muốn chụp, mà còn hoạt động được ở khoảng cách \'bình thường\' nhờ sự trợ giúp của cảm biến độ sâu.', 'Camera trước cũng mang lại sự khác biệt Không chỉ có camera chính mà camera selfie trên iPhone 11 Pro Max cũng được cải thiện rất nhiều. Tiếp theo chúng ta sẽ có công nghệ quay video độ phân giải 4K ngay trên camera trước một điều mà những chiếc iPhone trước đây chưa thể làm được. Ngoài ra bạn cũng có thể dùng camera trước để quay video slow motion (quay chậm) giúp bạn có được những video  thú vị và vui vẻ với bạn bè.', 'ip11.png', 'ip111.jpg', 'ip112.jpg', 'ip113.jpg', 1, 10, 2, 1, 0, 0, '3 camera 12 MP', '12 MP', '3969 mAh, có sạc nhanh', 1, 1, 5, 'sip11pro1.png', 'sip11pro2.png', 'sip11pro3.png'),
(3, 'iPhone X 64GB', 18000000, 22000000, 20500000, 'Màn hình:	OLED, 5.8\", Super Retina\r\nHệ điều hành:	iOS 12\r\nCamera sau:	Chính 12 MP & Phụ 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A11 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nHOTSIM Mobi Big 70 (3GB data/tháng). Giá từ 1', 'iPhone X là cụm từ được rất nhiều người mong chờ muốn biết và tìm kiếm trên Google bởi đây là chiếc điện thoại mà Apple kỉ niệm 10 năm iPhone đầu tiên được bán ra.\r\nThiết kế mang tính đột phá\r\nNhư các bạn cũng đã biết thì đã 4 năm kể từ chiếc điện thoại iPhone 6 và iPhone 6 Plus thì Apple vẫn chưa có thay đổi nào đáng kể trong thiết kế của mình.', 'Nhưng với iPhone X thì đó lại là 1 câu chuyện hoàn toàn khác, máy chuyển qua sử dụng màn hình tỉ lệ 19.5:9 mới mẻ với phần diện tích hiển thị mặt trước cực lớn.\r\nMặt lưng kính hỗ trợ sạc nhanh không dây cũng như phần camera kép đặt dọc cũng là những thứ đầu tiên xuất hiện trên 1 chiếc iPhone.', 'Màn hình với tai thỏ\r\nĐiểm khiến iPhone X bị chê nhiều nhất đó chính là phần \"tai thỏ\" phía trên màn hình, Apple đã chấp nhận điều này để đặt cụm camera TrueDepth mới của hãng.\r\nMàn hình kích thước 5.8 inch độ phân giải 1125 x 2436 pixels đem đến khả năng hiển thị xuất sắc.\r\niPhone X sử dụng tấm nền OLED (được tinh chỉnh bởi Apple) thay vì LCD như những chiếc iPhone trước đây và điều này đem lại cho máy 1 màu đen thể hiện rất sâu cùng khả năng tái tạo màu sắc không kém phần chính xác.', 'Face ID tạo nên đột phá\r\nTouch ID trên iPhone X đã bị loại bỏ, thay vào đó là bạn sẽ chuyển qua sử dụng Face ID, một phương thức bảo mật sinh trắc học mới của Apple.\r\nFace ID tạo nên đột phá\r\nVới sự trợ giúp của cụm camera TrueDept thì iPhone X có khả năng nhận diện khuôn mặt 3D của người dùng từ đó mở khóa chiếc iPhone một cách nhanh chóng.', 'ipx1.png', 'ipx2.jpg', 'ipx3.jpg', 'ipx4.jpg', 1, 10, 2, 1, 0, 0, 'Chính 12 MP & Phụ 12 MP', '7 MP', '2716 mAh, có sạc nhanh', 2, 2, 5, 'sipx1.jpg', 'sipx2.jpg', NULL),
(4, 'iPhone Xr 128GB', 15000000, 19000000, 18500000, 'Màn hình:	IPS LCD, 6.1\", Liquid Retina\r\nHệ điều hành:	iOS 12\r\nCamera sau:	12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A12 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ SIM:\r\nNano SIM & eSIM, Hỗ trợ 4G\r\nHOTSIM Mobi Big 70 (3GB data/tháng). Giá từ 170.000đ\r', 'Được xem là phiên bản iPhone giá rẻ đầy hoàn hảo, iPhone Xr 128GB khiến người dùng có nhiều sự lựa chọn hơn về màu sắc đa dạng nhưng vẫn sở hữu cấu hình mạnh mẽ và thiết kế sang trọng.\r\nMàn hình tràn viền công nghệ LCD - True Tone\r\nThay vì sở hữu màn hình OLED truyền thống, chiếc smartphone này sở hữu màn hình LCD.', 'Bù lại với công nghệ True Tone cùng màn hình tràn viền rộng tới 6.1 inch, mọi trải nghiệm trên máy vẫn đem lại sự thích thú và hoàn hảo, như dòng cao cấp khác của Apple.\r\n', 'Ngoài ra, Apple cũng giới thiệu rằng, iPhone Xr được trang bị một loại công nghệ mới có tên Liquid Retina. Máy có độ phân giải 1792 x 828 Pixels cùng 1.4 triệu điểm ảnh.\r\n', 'Mượt mà mọi trải nghiệm nhờ chip Apple A12\r\nVới mỗi lần ra mắt, Apple lại giới thiệu một con chip mới và Apple A12 Bionic là con chip đầu tiên sản xuất với tiến trình 7nm được tích hợp trên iPhone Xr.\r\nApple A12 được tích hợp trí tuệ thông minh nhân tạo', 'ipx1.png', 'ipx2.jpg', 'ip3.jpg', 'ipx4.jpg', 1, 10, 2, 1, 0, 0, '12 MP', '7 MP', '2942 mAh, có sạc nhanh', 3, 2, 5, 'sipxr1.png', 'sipxr2.png', 'sipxr3.png'),
(5, 'iPhone 8 Plus 64GB', 17000000, 18000000, 0, 'Màn hình:	LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 12\r\nCamera sau:	Chính 12 MP & Phụ 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A11 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nHOTSIM Mobi Big 70 (3GB data/thán', 'Thừa hưởng những thiết kế đã đạt đến độ chuẩn mực, thế hệ iPhone 8 Plus thay đổi phong cách bóng bẩy hơn và bổ sung hàng loạt tính năng cao cấp cho trải nghiệm sử dụng vô cùng tuyệt vời.\r\nThiết kế từ kính và kim loại\r\nSmartphone iPhone 8 Plus giữ nguyên hoàn toàn những đường nét thiết kế đã hoàn thiện từ thế hệ trước nhưng sử dụng phong cách 2 mặt kính cường lực kết hợp bộ khung kim loại.', 'Mặt lưng kính bo cong 2.5D thời thượng, khung kim loại được gia cố cứng cáp, bền bỉ hơn với 7 lớp xử lý màu sơn, hạn chế bong tróc.\r\nThay đổi này đồng thời loại bỏ chi tiết đường anten thừa ở mặt lưng như các thế hệ trước, mang đến vẻ đẹp hoàn hảo hơn.\r\n', 'Camera kép chuyên nghiệp\r\nKhông có sự thay đổi trong thông số camera (vẫn là cụm camera kép cùng độ phân giải 12 MP so với chiếc điện thoại IPhone 7 Plus), chiếc điện thoại iPhone này chủ yếu được tập trung nâng cấp về ống kính, cảm biến, vi xử lý hình ản', 'Chip Apple A11 cùng với thực tế ảo AR Một trong những điểm nhất quan trọng nhất ở thế hệ iPhone 8 Plus chính là sức mạnh phần cứng, con chip Apple A11 như trên iPhone X cho hiệu năng vượt trội hơn rất nhiều so với trước đây.', 'ip81.png', 'ip82.jpg', 'ip83.jpg', 'ip84.jpg', 0, 10, 2, 1, 0, 0, 'Chính 12 MP & Phụ 12 MP', '7 MP', '2691 mAh, có sạc nhanh', 4, 2, 5, 'sip81.jpg', 'sip82.jpg', NULL),
(6, 'iPhone 7 32GB', 13000000, 17500000, 17500000, 'Màn hình:	LED-backlit IPS LCD, 4.7\", Retina HD\r\nHệ điều hành:	iOS 12\r\nCamera sau:	12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A10 Fusion 4 nhân 64-bit\r\nRAM:	2 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nHOTSIM Mobi Big 70 (3GB data/tháng). Giá từ ', 'iPhone 7 32GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng, dàn loa stereo và cấu hình cực mạnh.\r\n', 'Camera trước tăng lên 7 MP\r\nMột sự cải thiện đáng kể so với iPhone 6s trước đó, những tấm ảnh chụp selfie của bạn càng thêm độ chi tiết và sắc nét, bộ nhớ lớn 32 GB cũng giúp bạn thoải mái chụp và lưu trữ ảnh mà không lo hết dung lượng để lưu.\r\n', 'Ngoài ra, camera phía sau của điện thoại iPhone này đã được thiết kế gọn gàng với đường bo mềm mại hơn, hạn chế tối đa trầy xước cho ống kính.\r\nMàn hình 4.7 inch càng thêm sắc nét\r\nCùng với đó là khả năng hiển thị tốt hơn dưới trời nắng, góc nhìn nghiêng ', 'Cấu hình mạnh mẽ thoải mái chiến game Máy tích hợp chip xử lý A10 mới nhất, RAM 2 GB cùng hệ điều hành iOS luôn được cập nhật mới giúp máy vận hành nhẹ nhàng và nhanh nhạy.', 'ip71.png', 'ip72.jpg', 'ip73.jpg', 'ip74.jpg', 0, 10, 2, 1, 0, 0, '12 MP', '7 MP', '1960 mAh', 5, 2, NULL, 'sip71.jpg', 'sip72.jpg', NULL),
(7, 'iPhone 6s Plus 32GB', 7000000, 9000000, 9000000, 'Màn hình:	LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 12\r\nCamera sau:	12 MP\r\nCamera trước:	5 MP\r\nCPU:	Apple A9 2 nhân 64-bit\r\nRAM:	2 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nHOTSIM Mobi Big 70 (3GB data/tháng). Giá từ 170.000đ', 'iPhone 6s Plus 32 GB là phiên bản nâng cấp hoàn hảo từ iPhone 6 Plus với nhiều tính năng mới hấp dẫn.\r\nCamera được cải tiến\r\n', 'Điện thoại iPhone 6s Plus 32 GB được nâng cấp độ phân giải camera sau lên 12 MP (thay vì 8 MP như trên iPhone 6 Plus), camera cho tốc độ lấy nét và chụp nhanh, thao tác chạm để chụp nhẹ nhàng. Chất lượng ảnh trong các điều kiện chụp khác nhau tốt\r\n', 'Camera trước với độ phân giải 5 MP cho hình ảnh với độ chi tiết rõ nét, đặc biệt máy còn có tính năng Retina Flash, sẽ giúp màn hình sáng lên như đèn Flash để bức ảnh khi bạn chụp trong trời tối được tốt hơn\r\n', 'Màn hình lớn cùng màu sắc tươi tắn, độ nét cao sẽ mang đến nhiều thích thú khi lướt web, xem phim hay làm việc.\r\n3D Touch là tính năng hoàn toàn mới trên iPhone 6s Plus 32 GB, cho phép người dùng xem trước được các tùy chọn nhanh dựa vào lực nhấn mạnh hay nhẹ mà không cần phải nhấp vào ứng dụng.\r\nĐể sử dụng, bạn chỉ cần nhấn vào màn hình hoặc ứng dụng 1 lực mạnh đến khi máy rung nhẹ là có thể xem được.', 'ip61.png', 'ip62.jpg', 'ip63.jph', 'ip64.jpg', 0, 10, 2, 1, 0, 0, '12 MP', '5 MP', '2750 mAh', 4, 2, NULL, 'sip6s1.png', 'sip6s2.png', 'sip6s3.png'),
(8, 'Samsung Galaxy Note 10+', 18000000, 24000000, 22500000, 'Màn hình:	Dynamic AMOLED, 6.8\", Quad HD+ (2K+)\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 12 MP & Phụ 12 MP, 16 MP, TOF 3D\r\nCamera trước:	10 MP\r\nCPU:	Exynos 9825 8 nhân 64-bit\r\nRAM:	12 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 1 T', 'Trông ngoại hình khá giống nhau, tuy nhiên Samsung Galaxy Note 10+ sở hữu khá nhiều điểm khác biệt so với Galaxy Note 10 và đây được xem là một trong những chiếc máy đáng mua nhất trong năm 2019, đặc biệt dành cho những người thích một chiếc máy màn hình lớn, camera chất lượng hàng đầu.\r\nCamera đứng đầu thế giới\r\nDxOMark là chuyên trang đánh giá camera uy tín thế giới mới đây đã khẳng định, Galaxy Note 10+ là chiếc smartphone có camera tốt nhất hiện nay.', 'Galaxy Note 10+ có camera chính 12 MP với khẩu độ có thể thay đổi từ F/1.5 – F/2.4, hỗ trợ chống rung quang học OIS và tự động lấy nét dual-pixel.\r\nTiếp theo là cảm biến camera góc siêu rộng 16 MP khẩu độ F/2.2 cùng ống kính tele 12 MP khẩu độ F/2.1 và nó cũng có thêm 1 cảm biến 3D ToF, điều mà Samsung Galaxy Note 10 không được trang bị.', 'Samsung đã cải thiện các thuật toán xử lý bên trong phần mềm giúp máy có khả năng phơi sáng tốt, nhất quán và chính xác cho dù trong điều kiện ánh sáng thế nào.\r\nGalaxy Note 10+ cũng hỗ trợ zoom quang 2x, nó có thể chụp hình ảnh với màu sắc sống động, độ chi tiết cao và độ nhiễu thấp.', 'Galaxy Note 10+ cũng có một tính năng mới là Live Focus Video cho phép áp dụng hiệu ứng bokeh vào các video quay được cũng như hình ảnh, cùng các hiệu ứng khác như thay đổi màu phông nền.\r\n', 'note11.png', 'note111.jpg', 'note112.jpg', 'note113.jpg', 1, 10, 2, 2, 0, 0, 'Chính 12 MP & Phụ 12 MP, 16 MP, TOF 3D', '10 MP', '4300 mAh, có sạc nhanh', 6, 3, 10, 'snote101.png', 'snote102.png', 'snote103.png'),
(9, 'Samsung Galaxy Note 9 128GB', 20000000, 23000000, 0, 'Màn hình:	Super AMOLED, 6.4\", Quad HD+ (2K+)\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	Chính 12 MP & Phụ 12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 9810 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 S', 'Mang lại sự cải tiến đặc biệt trong cây bút S Pen, siêu phẩm Samsung Galaxy Note 9 còn sở hữu dung lượng pin khủng lên tới 4.000 mAh cùng hiệu năng mạnh mẽ vượt bậc, xứng đáng là một trong những chiếc điện thoại cao cấp nhất của Samsung.\r\n', 'Một chút thay đổi trong thiết kế\r\nChiếc điện thoại Samsung mới vẫn thừa hưởng lối thiết kế vô cùng quyến rũ từ đàn anh của mình với thân hình mạnh mẽ và được cách điệu bởi những đường cong mềm mại.\r\n', 'Điểm thay đổi đáng chú ý phải kể đến mặt lưng khi mà cảm biến vân tay của máy đã được đặt dưới cụm camera kép với một vị trí thuận lợi để bạn có thể mở khóa máy một cách dễ dàng.\r\n', 'Bên cạnh đó Samsung đã tối giản cạnh viền trên dưới để mang lại cho bạn một trải nghiệm tuyệt vời hơn nữa với một màn hình có kích thước khủng lên đến 6.4 inch có độ phân giải 2K+ với tỉ lệ tràn viền 18.5:9.\r\n', 'note91.png', 'note92.jpg', 'note93.jpg', 'note94.jpg', 0, 10, 2, 2, 0, 0, 'Chính 12 MP & Phụ 12 MP', '8 MP', '4000 mAh, có sạc nhanh', 7, 4, NULL, 'snote91.jpg', 'snote92.jpg', 'snote93.jpg'),
(10, 'Samsung Galaxy Note 10', 20000000, 23000000, 22500000, 'Màn hình:	Dynamic AMOLED, 6.3\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 12 MP & Phụ 12 MP, 16 MP\r\nCamera trước:	10 MP\r\nCPU:	Exynos 9825 8 nhân 64-bit\r\nRAM:	8 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM Mobi Big 7', 'Nếu như từ trước tới nay dòng Galaxy Note của Samsung thường ít được các bạn nữ sử dụng bởi kích thước màn hình khá lớn khiến việc cầm nắm trở nên khó khăn thì Samsung Galaxy Note 10 sẽ là chiếc smartphone nhỏ gọn, phù hợp với cả những bạn có bàn tay nhỏ.', 'Màn hình trên Galaxy Note 10 là đánh dấu sự đổi mới về thiết kế của Samsung.\r\n', 'Không giống với cách đục lỗ góc phải trên S10, chiếc Note 10 đưa camera selfie ra chính giữa, kèm theo viền màn hình Infinity-O này cũng được mỏng hơn đáng kể.\r\n', 'Máy có kích thước 6.3 inch cùng độ phân giải Full HD+, được trang bị tấm nền Dynamic AMOLED mang lại màu sắc đậm đà và sống động hơn.\r\nCông nghệ Dynamic AMOLED này còn cho ra màn hình ít ánh sáng xanh hơn nhằm giúp mắt thoải mái.\r\n', 'note10.png', 'note101.jpg', 'note102.jpg', 'note103.jpg', 1, 10, 2, 2, 0, 0, 'Chính 12 MP & Phụ 12 MP, 16 MP', '10 MP', '3500 mAh, có sạc nhanh', 8, 3, 5, 'snote104.png', 'snote105.png', 'snote106.png'),
(11, 'Samsung Galaxy S10+ 128GB', 21000000, 24000000, 23000000, 'Màn hình:	Dynamic AMOLED, 6.4\", Quad HD+ (2K+)\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 12 MP & Phụ 12 MP, 16 MP\r\nCamera trước:	Chính 10 MP & Phụ 8 MP\r\nCPU:	Exynos 9820 8 nhân 64-bit\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD\r\n', 'Samsung Galaxy S10+ là một trong những chiếc smartphone được trông chờ nhiều nhất trong năm 2019 và không phụ sự kỳ vọng của mọi người thì chiếc Galaxy S thứ 10 của Samsung thực sự gây ấn tượng mạnh cho người dùng.\r\nThiết kế sang trọng, bóng bẩy\r\nVới một chiếc máy cao cấp như Samsung Galaxy S10+ thì việc đầu tiên cần có là máy phải sở hữu một vẻ ngoài \"lộng lẫy\", thu hút mọi ánh nhìn.', 'Và thậm chí Samsung còn làm tốt hơn như thế khi Samsung Galaxy S10+ sở hữu thiết kế 2 mặt kính đẹp mắt cùng việc loại bỏ đi cảm biến vân tay ở mặt lưng giúp máy liền mạch hơn.\r\n', 'Trên Galaxy S10+ Samsung đã sở hữu công nghệ màn hình mới mà hãng gọi là Infinity-O, đảm bảo được viền màn hình mỏng ở tất cả cách cạnh khiến kích thước máy không lớn hơn S9+ nhưng kích thước màn hình lại lớn hơn.\r\n', 'Samsung Galaxy S10+ sở hữu màn hình có kích thước 6.4 inch, sử dụng tấm nền Dynamic AMOLED với độ phân giải lên tới 2K+ cho hình ảnh hiển thị sắc nét và sống động.\r\n', 's101.png', 's102.jpg', 's103.jpg', 's104.jpg', 1, 10, 2, 2, 0, 0, 'Chính 12 MP & Phụ 12 MP, 16 MP', 'Chính 10 MP & Phụ 8 MP', '	4100 mAh, có sạc nhanh', 9, 3, 10, 'ss101.png', 'ss102.png', 'ss103.png'),
(12, 'Samsung Galaxy A80', 6500000, 8000000, 0, 'Màn hình:	Super AMOLED, 6.7\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, TOF 3D\r\nCamera trước:	Chính 48 MP & Phụ 8 MP, TOF 3D\r\nCPU:	Snapdragon 730 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 'Samsung Galaxy A80 là chiếc smartphone mang trong mình rất nhiều đột phá của Samsung và hứa hẹn sẽ là \"ngọn cờ đầu\" cho những chiếc smartphone sở hữu một màn hình tràn viền thật sự.\r\nCamera vừa trượt vừa xoay đầu tiên trên thế giới\r\nThực tế thì xu hướng màn hình tràn viền đã bắt đầu cách đây khá lâu nhưng có rất ít các hãng có thể mang một màn hình tràn viền đúng nghĩa lên chiếc smartphone của mình.', 'Và Samsung Galaxy A80 là một hướng đi mới của Samsung về việc làm smartphone tràn viền khi hãng bố trí cụm camera chính (cũng chính là camera selfie) có thể vừa xoay vừa trượt.\r\n', 'Cụm camera trên máy sẽ tự động trượt lên đồng thời sở hữu một cơ chế xoay giúp nó xoay 180 độ về phía trước những lúc người dùng cần tới camera selfie.\r\nVà khi không sử dụng nữa thì máy lại tự động trượt xuống và xoay camera 180 độ trở về vị trí cũ.\r\n', 'Điều này giúp bạn có một camera selfie \"cực kỳ\" chất lượng khi dùng luôn cụm 3 camera chính.\r\nChất lượng camera không kém flagship\r\nSamsung Galaxy A80 là chiếc smartphone dòng A đầu tiên được Samsung ưu ái mang lên cảm biến 3D ToF giúp tăng khả năng nhận ', 'a810.png', 'a802.jpg', 'a803.jpg', 'a804.jpg', 0, 10, 2, 2, 0, 0, 'Chính 48 MP & Phụ 8 MP, TOF 3D', 'Chính 48 MP & Phụ 8 MP, TOF 3D', '	4100 mAh, có sạc nhanh', 10, 3, NULL, 'sa801.png', 'sa802.png', NULL),
(13, 'Samsung Galaxy A70', 5500000, 7500000, 0, 'Màn hình:	Super AMOLED, 6.7\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 32 MP & Phụ 8 MP, 5 MP\r\nCamera trước:	32 MP\r\nCPU:	Snapdragon 675 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2', 'Samsung Galaxy A70 là một phiên bản phóng to của chiếc Samsung Galaxy A50 đã ra mắt trước đó với nhiều cải tiến tới từ bên trong.\r\nMàn hình kích thước lớn, trải nghiệm \"đã hơn\"\r\nMàn hình của chiếc Galaxy A70 có kích thước khá lớn lên đến 6.7 inch độ phân giải Full HD+ trên tấm nền Super AMOLED.', 'Các cạnh viền bezel được tinh chỉnh mỏng hơn, điều này giúp máy trông gọn gàng và cân xứng hơn rất nhiều.\r\n', 'Galaxy A70 có 3 màu sắc bán ra tương tự các dòng sản phẩm thấp hơn trước đó là \"Đen, Trắng và Xanh\". Cả 3 phiên bản này đều được trang bị thêm hiệu ứng lấp lánh nhiều màu khi nghiêng theo góc nhìn rất đẹp mắt.\r\n', 'Cảm biến vân tay dưới màn hình tiên tiến Tương tự như người anh em Galaxy A50 thì Galaxy A70 vẫn sở hữu cho mình công nghệ cảm biến vân tay dưới màn hình đang rất hot hiện nay.  Tốc độ nhận diện và mở khóa máy khá nhanh giúp bạn tiết kiệm được thời gian so với việc nhập mật khẩu thông thường.', 'a701.png', 'ap02.jpg', 'a703.jpg', 'a704.jpg', 0, 10, 2, 2, 0, 0, 'Chính 32 MP & Phụ 8 MP, 5 MP', '32 MP', '4500 mAh, có sạc nhanh', 10, 3, NULL, 'sa701.png', 'sa702.png', 'sa703.png'),
(14, 'Samsung Galaxy A50 128GB', 4500000, 6500000, 0, 'Màn hình:	Super AMOLED, 6.4\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 25 MP & Phụ 8 MP, 5 MP\r\nCamera trước:	25 MP\r\nCPU:	Exynos 9610 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 Na', 'Samsung Galaxy A50 128GB là mẫu smartphone dòng A mới trong năm 2019 và đặc biệt máy sở hữu công nghệ cảm biến vân tay trong màn hình lần đầu tiên xuất hiện trên một chiếc máy tầm trung tới từ Samsung.\r\nThiết kế màn hình Infinity-U độc đáo\r\nSamsung Galaxy A50 là mẫu smartphone đầu tiên mà Samsung sử dụng màn hình Infinity-U với phần notch nhỏ gọn hình giọt nước.', 'Trên chiếc smartphone Samsung mới này thì hãng sử dụng thiết kế gọi là \"3D Glasstic\" với bộ khung chắc chắn với các góc cạnh được bo cong nhẹ để mang lại cảm giác cầm nắm dễ chịu.\r\n', 'Bạn sẽ bị thu hút bởi mặt lưng của máy khi nó có thể thay đổi màu sắc với các góc nghiêng khác nhau cho cảm giác mới mẻ, ấn tượng hơn.\r\n', 'Công nghệ cảm biến vân tay tiên tiến\r\nSamsung mới chỉ sử dụng công nghệ cảm biến vân tay trong màn hình trên bộ đôi siêu phẩm Galaxy S10 và S10+ vừa ra mắt trước đó nhưng trên Galaxy A50 Samsung cũng đã ưu ái trang bị công nghệ này.', 'a501.png', 'a502.jpg', 'a503.jpg', 'a504.jpg', 0, 10, 2, 2, 0, 0, 'Chính 25 MP & Phụ 8 MP, 5 MP', '25 MP', '4000 mAh, có sạc nhanh', 11, 3, NULL, 'sa501.png', 'sa502.png', NULL),
(15, 'Samsung Galaxy A20', 3000000, 4900000, 0, 'Màn hình:	Super AMOLED, 6.4\", HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 13 MP & Phụ 5 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 7884 8 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nH', 'Samsung Galaxy A20 là chiếc máy rẻ nhất trong dòng Galaxy A của Samsung mang lại cho người dùng những trải nghiệm cao cấp của những chiếc máy tới từ Samsung nhưng vẫn không phải bỏ ra số tiền quá lớn.\r\nMàn hình Infinity-V hoàn toàn mới mẻ\r\nChiếc điện thoại Samsung dòng A mới mang trong mình màn hình có kích thước lên tới 6.4 inch mang lại một không gian rất thoải mái để các bạn chơi game hay xem phim.\r\nNhờ tỉ lệ màn hình 19:9 cùng thiết kế Infinity-V thì bạn sẽ có một trải nghiệm khá mới mẻ và thích thú khi so với các màn hình 18:9 thông thường.', 'Tấm nền Super AMOLED cùng độ phân giải HD+ sử dụng trên A20 mang đến cho bạn những khung hình sắc nét, sống động mỗi khi thưởng thức những bộ phim chất lượng cao.\r\n', 'Một điểm cộng khác của máy chính là phần cạnh viền màn hình của máy được làm khá mỏng giúp bạn vẫn có một thiết bị nhỏ gọn có thể dễ dàng mang theo bên mình.\r\nDung lượng pin ấn tượng trong phân khúc\r\nPin luôn là vấn đề của những chiếc smartphone hiện nay, tuy nhiên với Galaxy A20 thì bạn hoàn toàn có thể yên tâm phần nào.', 'Sở hữu viên pin có dung lượng 4000 mAh giúp bạn có thể sử dụng thoải mái cả ngày và thậm chí qua tới ngày thứ 2.\r\nBên cạnh đó người dùng vẫn có tính năng tiết kiệm pin giúp máy có thể duy trì để sử dụng các tác vụ cơ bản trong nhiều giờ khi pin sắp cạn.\r\n', 'a201.png', 'a202.jpg', 'a203.jpg', 'a204.jpg', 0, 10, 2, 2, 0, 0, 'Chính 13 MP & Phụ 5 MP', '8 MP', '4000 mAh, có sạc nhanh', 12, 3, NULL, 'sa201.png', 'sa202.png', 'sa203.png'),
(16, 'Samsung Galaxy A30 64GB', 3000000, 5500000, 0, 'Màn hình:	Super AMOLED, 6.4\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 16 MP & Phụ 5 MP\r\nCamera trước:	16 MP\r\nCPU:	Exynos 7904 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 Nano SIM,', 'Samsung Galaxy A30 là một chiếc máy khá hấp dẫn, dành cho các bạn yêu thích thương hiệu Samsung, muốn sở hữu một sản phẩm có nhiều tính năng hấp dẫn mà không cần phải bỏ ra nhiều tiền.\r\nMàn hình lớn tương đương Galaxy S10+\r\nCó thể bạn sẽ bất ngờ bởi chiếc điện thoại Samsung mới sở hữu cho mình màn hình có kích thước lên tới 6.4 inch, tương đương với màn hình của chiếc Samsung Galaxy S10+.', 'Tuy nhiên khác với màn hình Infinity-O trên người đàn anh đắt tiền thì Galaxy A30 sẽ sở hữu màn hình Infinity-U hoàn toàn mới mẻ.\r\nVới tỷ lệ màn hình 19:9 đảm bảo cho bạn có một không gian trải nghiệm rộng rãi trên kích thước 6 inch nhưng vẫn tối ưu được diện tích tổng thể thân máy.', 'Dung lượng pin thoải mái sử dụng\r\nMang trong mình một viên pin có dung lượng 4000 mAh giúp Samsung Galaxy A30 đáp ứng khá trọn vẹn với các nhu cầu giải trí cơ bản trong hơn một ngày.\r\nĐặc biệt máy cũng hỗ trợ cổng sạc mới Type-C và công nghệ sạc nhanh giúp bạn rút ngắn được thời gian sạc pin đáng kể.', 'Cụm camera kép góc rộng\r\nBộ đôi camera kép ở mặt sau của máy có độ phân giải chính 16 MP và phụ 5 MP, trong đó ống kính phụ góc rộng là 5 MP cho phép chụp ảnh được bao quát và lạ mắt hơn.\r\n', 'a301.png', 'a302.jpg', 'a303.jpg', 'a304.jpg', 0, 10, 2, 2, 0, 0, 'Chính 16 MP & Phụ 5 MP', '16 MP', '4000 mAh, có sạc nhanh', 11, 3, NULL, 'sa301.png', 'sa302.png', NULL),
(17, 'OPPO Reno', 14000000, 16000000, 0, 'Màn hình:	AMOLED, 6.4\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 48 MP & Phụ 5 MP\r\nCamera trước:	16 MP\r\nCPU:	Snapdragon 710 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ SIM: 2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	3765 mAh, có sạ', 'Với OPPO Find X thì OPPO đã đánh dấu cách tiếp cận mới cho một chiếc máy tràn viền và trên OPPO Reno thì OPPO lại một lần nữa khiến nhiều người không khỏi ngạc nhiên.\r\n', 'Bạn cũng không cần quá lo lắng khi OPPO đã cải thiện tốc độ mở camera trước nhanh hơn tới 28.5% so với các thế hệ trước giúp bạn không cảm thấy khó khăn khi sử dụng camera pop-up.\r\n', 'Với độ phân giải lên tới 16 MP kết hợp với công nghệ làm đẹp bằng AI thì OPPO Reno tự tin sẽ làm hài lòng cả những người dùng khó tính nhất.\r\n', 'Trải nghiệm màn hình tràn viền thực thụ Nhờ có camera trước được dấu bên trong mà OPPO Reno sẽ được trang bị một màn hình tràn viền thật sự, không bị đục bất cứ phần nào trên màn hình.Kích thước lên tới 6.4 inch cùng tấm nền AMOLED chất lượng cao giúp bạn có một thiết bị hiển thị rất đẹp và ấn tượng.Tỉ lệ màn hình chiếm tới hơn 93% mặt trước giúp tổng thể máy không quá lớn và có thể sử dụng được bằng một tay.', 'oppo1.png', 'oppo2.jpg', 'oppo3.jpg', 'opp3.jpg', 0, 10, 2, 3, 0, 0, 'Chính 48 MP & Phụ 5 MP', '16 MP', '3765 mAh, có sạc nhanh', 13, 3, NULL, 'sreno1.png', 'sreno2.png', 'sreno3.png'),
(18, 'OPPO F11', 7000000, 10000000, 9500000, 'Màn hình:	LTPS LCD, 6.5\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 48 MP & Phụ 5 MP\r\nCamera trước:	16 MP\r\nCPU:	MediaTek Helio P70 8 nhân\r\nRAM:	6 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM: 2 SIM Nano (SIM ', 'Với các nhà sản xuất smartphone thì màn hình giọt nước để chứa camera selfie đang là xu hướng mới mẻ và vẫn tiếp tục phát triển.\r\n', 'Tuy nhiên với OPPO F11, màn hình giọt nước đã được tối ưu lại, giúp nhỏ gọn hơn, đem lại màn hình tràn viền hoàn hảo.\r\n', 'OPPO F11 có bộ khung viền cũng được bo cong để thoải mái cầm nắm trên tay mà không cho cảm giác cấn tay, khó chịu.\r\n', 'Mặt sau của OPPO F11 có hiệu ứng đổi màu đẹp mắt, bạn có thể thấy các màu như tím, hay xanh trên chiếc smartphone này cho dù nhìn từ hướng nào.', 'f11.png', 'f11-1.jpg', 'f11-2.jpg', 'f11-3.jpg', 1, 10, 2, 3, 0, 0, 'Chính 48 MP & Phụ 5 MP', '16 MP', '4020 mAh, có sạc nhanh', 14, 3, 15, 'sf111.png', 'sf112.png', 'sf113.png'),
(19, 'OPPO A9 (2020)', 6000000, 8000000, 0, 'Màn hình:	TFT, 6.5\", HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:	16 MP\r\nCPU:	Qualcomm Snapdragon 665 8 nhân\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM: 2 Nano S', 'Cung cấp sức mạnh cho chiếc smartphone là con chip tầm trung mới Snapdragon 665. So với phiên bản Snapdragon 660 trước đó, phiên bản chip này mang đến hiệu năng mạnh mẽ và tối ưu tiết kiệm điện hơn.\r\n', 'Kết hợp với RAM lớn đến 8 GB và chế độ GameBoost 2.0 đi kèm, OPPO A9 (2020) đem lại hiệu năng mạnh mẽ, trải nghiệm game ổn định và đa nhiệm mượt mà hơn hẳn.\r\n', 'Máy chiến tốt các dòng game hiện nay như PUBG hay Liên Quân Mobile. Ở một số dòng game khác như Asphalt 8, người dùng có thể chỉnh cấu hình lại để đem lại trải nghiệm tốt hơn.\r\n', 'Hệ điều hành ColorOS 6 dựa trên nền tảng Android 9 Pie mới cũng là một ưu điểm của máy đem lại nhiều tiện ích và giao diện đẹp mắt cho người dùng.\r\nOPPO A9 (2020) có sự thay đổi lớn về số camera cũng như độ phân giải camera sau, giúp hình ảnh đạt độ chi tiết và sắc nét cao hơn hẳn.', 'opa9.png', 'opa9-1.jpg', 'opa9-2.jpg', 'opa9-3.jpg', 0, 10, 2, 3, 0, 0, '	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '16 MP', '5000 mAh', 15, 3, NULL, 'sa91.png', 'sa92.png', 'sa93.png'),
(20, 'Điện thoại OPPO K3', 2000000, 3900000, 0, 'Màn hình:	AMOLED, 6.5\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 16 MP & Phụ 2 MP\r\nCamera trước:	16 MP\r\nCPU:	Snapdragon 710 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ SIM: 2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	3765 mAh, có sạc', 'OPPO K3 có thiết kế kính cường lực mặt trước, cùng với lớp màu gradient ở mặt sau làm cho chiếc smartphone này trở nên tuyệt đẹp.\r\n', 'Với camera selfie pop-up được đặt ở vị trí trung tâm, chiếc điện thoại OPPO tạo cảm giác đối xứng cho thiết kế của điện thoại.\r\n', 'Các góc bo tròn và các cạnh mỏng giúp điện thoại có kiểu dáng đẹp hơn và tạo cảm giác thoải mái hơn khi cầm.\r\n', 'OPPO K3 có màn hình AMOLED 6.5 inch độ phân giải Full HD+ và chiếc điện thoại này có tỷ lệ màn hình trên thân máy ấn tượng hơn hẳn so với những chiếc máy trong phân khúc.\r\n', 'opk3.png', 'opk3-1.jpg', 'opk3-2.jpg', 'opk3-3.jpg', 0, 10, 2, 3, 0, 0, '	Chính 16 MP & Phụ 2 MP', '16 MP', '3765 mAh, có sạc nhanh', 16, 3, NULL, 'sk31.png', 'sk32.png', NULL),
(21, 'OPPO A7', 4000000, 6900000, 0, 'Màn hình:	IPS LCD, 6.2\", HD+\r\nHệ điều hành:	ColorOS 5.2 (Android 8.1)\r\nCamera sau:	Chính 13 MP & Phụ 2 MP\r\nCamera trước:	16 MP\r\nCPU:	Qualcomm Snapdragon 450 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM: 2 ', 'OPPO A7, chiếc điện thoại được xem là sự hiện thân của cái đẹp, cái sáng tạo mà OPPO mang đến cho người dùng với mặt lưng được tô điểm bởi những họa tiết 3D thú vị cùng chiếc tai thỏ hình giọt nước đáng yêu.\r\n', 'OPPO A7 được tạo nên nhờ với một ngôn ngữ thiết kế mới lạ, bắt mắt khi có phần mặt lưng phản chiếu 3D vân lưới ánh sáng cực đẹp và thu hút.\r\n', 'Thân hình mảnh mai, quyến rũ với các đường cong nhẹ nhàng bao quanh thân máy tạo cho bạn cảm giác cầm nắm thoải mái và chắc chắn hơn.\r\n', 'Đập vào mắt bạn sẽ là không gian hiển thị rộng rãi trên kích thước 6.2 inch được cách điệu bởi chiếc tai thỏ hình giọt nước trông vô cùng tinh tế.\r\nĐược trang bị màn hình có độ phân giải HD+ nên OPPO A7 khiến bạn cảm thấy hài lòng với những khung hình sống động, rực rỡ mỗi khi trải nghiệm.', 'opa7.png', 'opa7-1.jpg', 'opa7-2.jpg', 'opa7-3.jpg', 0, 10, 2, 3, 0, 0, 'Chính 13 MP & Phụ 2 MP', '16 MP', '4230 mAh', 17, 5, NULL, 'soa71.png', 'soa72.png', NULL),
(22, 'OPPO A5 (2020)', 4000000, 5900000, 0, 'Màn hình:	TFT, 6.5\", HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:	8 MP\r\nCPU:	Qualcomm Snapdragon 665 8 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:	2 Nano SIM', 'OPPO A5 (2020) là mẫu smartphone tầm trung với giá thành phải chăng nhưng được trang bị nhiều công nghệ hấp dẫn hứa hẹn sẽ \"lấy được lòng\" các bạn trẻ năng động, thời trang.\r\nThiết kế hiện đại, bắt mắt\r\nViệc sở hữu cho mình một ngoại hình rất thu hút sẽ khiến người dùng có nhiều cảm tình hơn và dẫn tới quyết định mua một chiếc smartphone.', 'OPPO A5 (2020) thỏa mãn được tiêu chí này với họa tiết ấn tương tự dòng OPPO Reno cao cấp ra mắt trước đó.\r\nMáy có những phiên bản màu sắc rất trẻ trung, phù hợp với giới trẻ và kèm theo hiệu ứng chuyển màu dưới ánh sáng đẹp mắt, tinh tế.\r\n', 'Nói chung khi cầm trên tay OPPO A5 (2020) cho chúng ta cảm giác đây cũng là một phụ kiện thời trang.\r\nMặt trước là màn hình \"giọt nước\" kích thước 6.5 inch, với diện tích màn hình chiếm toàn mặt trước là 89.3%, bảo vệ bằng kính Gorilla Glass 3+.\r\nMàn hình này rộng rãi để bạn giải trí, chơi game và hỗ trở khả năng đọc nội dung dưới màn hình mặt trời, chế độ bảo vệ mắt đây là những tính năng thiết thực đối với người dùng.', 'Pin trâu không lo bị hết\r\nNgày nay, người dùng chúng ta rất ngại phải sạc pin nhiều lần cho smartphone và cường độ sử dụng lại ngày một cao hơn.\r\nĐể hạn chế việc sạc pin mà vẫn đáp ứng được cả ngày dài thì các nhà sản xuất phải tích hợp viên pin dung lượng lớn cho chiếc máy của mình.', 'opa5.png', 'opa5-1.jpg', 'opa5-2.jpg', 'opa5-3.jpg', 0, 10, 2, 3, 0, 0, '	Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP', '8 MP', '	5000 mAh', 15, 3, 5, 'soa51.png', 'soa52.png', NULL),
(23, 'Huawei P30 Pro', 15000000, 19900000, 17900000, 'Màn hình:	OLED, 6.47\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 40 MP & Phụ 20 MP, 8 MP, TOF 3D\r\nCamera trước:	32 MP\r\nCPU:	Hisilicon Kirin 980 8 nhân 64-bit\r\nRAM:	8 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ nhớ:	NM card, hỗ trợ tối đa 256 GB\r\nThẻ ', 'Huawei P30 Pro là một bước đột phá của Huawei cũng như camera trên smartphone khi đem lại khả năng zoom như một \"kính viễn vọng\".\r\nĐịnh nghĩa lại camera phone\r\nCamera là điểm nhấn trên Huawei P30 Pro với camera chính SuperSpectrum độ phân giải 40 MP.', 'Cảm biến SuperSpectrum sử dụng cấu trúc RYYB (Red Yellow Yellow Blue), trái ngược với RGB (Red Green Blue), thay thế các pixel màu xanh lá cây bằng màu vàng, theo Huawei cho phép cảm biến cho ánh sáng nhiều hơn.\r\n', 'Cụm 3 camera còn lại bao gồm một ống kính góc siêu rộng 20 MP, tiêu cự 17mm, camera tele 8 MP tiêu cự 125mm (zoom 5X, khẩu độ f/3.4 và cuối cùng là camera ToF.\r\nCảm biến ToF sẽ thu thập thông tin chiều sâu bằng cách chiếu ánh sáng hồng ngoại vào đối tượng và phản xạ lại camera để đo khoảng cách. Công nghệ này sẽ cho phép chế độ chụp chân dung có hiệu ứng bo-keh chuyên nghiệp hơn giúp phông nền có độ mờ hợp lý.', 'Đồng thời, camera của máy còn có chế độ chụp ảnh đêm mới và tích hợp AI để tối ưu chụp ảnh, tạo nhãn dán AR hay tìm kiếm thông tin trên ảnh.\r\nĐây cũng là chiếc điện thoại đầu tiên của Huawei được trang bị camera selfie lên đến 32MP, cao nhất thế giới hiện', 'hp301.png', 'hp302.jpg', 'hp303.jpg', 'hp304.jpg', 1, 10, 2, 4, 0, 0, 'Chính 40 MP & Phụ 20 MP, 8 MP, TOF 3D', '32 MP', '4200 mAh, có sạc nhanh', 18, 3, 15, 'shp301.png', 'shp302.png', NULL),
(24, 'Huawei Y9', 3000000, 5000000, 0, 'Màn hình:	LTPS LCD, 6.5\", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	Chính 13 MP & Phụ 2 MP\r\nCamera trước:	Chính 16 MP & Phụ 2 MP\r\nCPU:	HiSilicon Kirin 710\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 N', 'Huawei Y9 Prime (2019) là phiên bản kế nhiệm của chiếc Y9 Prime (2018) đã ra mắt năm ngoái và cũng là chiếc điện thoại đầu tiên của Huawei được trang bị công nghệ camera trượt và màn hình tràn viền ra bốn cạnh.', 'Thiết kế tràn viền đúng nghĩa\r\nGần đây thì xu thế làm smartphone \"tai thỏ\" hay \"giọt nước\" đã không còn được yêu thích như trước mà thay vào đó là màn hình tràn viền đúng nghĩa.', 'Màn hình của Huawei Y9 Prime (2019) có kích thước 6.59 inch, độ phân giải Full HD+, tấm nền LCD IPS.\r\nHình ảnh hiển thị trên tấm nền ở mức khá, màu sắc hiển thị ở tone màu trung tính, khá chính xác với màu sắc thực tế.\r\nNhìn chung với màn hình lớn việc giải trí trên Y9 Prime (2019) rất tốt, đặc biệt là những tác vụ giải trí và chơi game.', 'Điểm nhấn trên Huawei Y9 Prime (2019) chính là cụm camera trước đó là khả năng “thò thụt” giúp chiếc máy trông cực ngầu và hiện đại.', 'y91.png', 'y92.jpg', 'y93.jpg', 'y94.jpg', 0, 10, 2, 4, 0, 0, '	Chính 16 MP & Phụ 8 MP, 2 MP', '16 MP', '4000 mAh', 19, 3, NULL, 'shy91.png', 'shy92.png', NULL),
(25, 'Huawei Nova 3i', 3500000, 4900000, 0, 'Màn hình:	LTPS LCD, 6.3\", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	Chính 16 MP & Phụ 2 MP\r\nCamera trước:	Chính 24 MP & Phụ 2 MP\r\nCPU:	HiSilicon Kirin 710\r\nRAM:	4 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 ', 'Là chiếc điện thoại sở hữu gam màu nhẹ nhàng, Huawei Nova 3i Trắng đem lại sự thanh lịch, quý phải so với phiên bản xanh tím độc đáo hay sắc đen sang trọng\r\n', 'Nâng cấp tới 2 cụm camera kép trước và sau\r\nChiếc điện thoại Huawei phiên bàn màu trắng này, sở hữu cụm camera kép ở mặt lưng với thông số lần lượt là 16 MP và 2 MP với khẩu độ f/2.2 và khả năng lấy nét rất nhanh.\r\n', 'Khả năng xóa phông của máy cũng được cải thiện đáng kể, màu sắc bắt mắt và mang lại những bức ảnh sống ảo đẹp mắt cho người dùng.\r\n', 'Máy cũng có cụm camera selfie kép với thông số 24 MP và 2 MP, khẩu độ f/2.0 cùng chế độ AR Stickers kết hợp khả năng làm đẹp, cho bạn thoải mái tự sướng với bạn bè.\r\n', '3i1.png', '3i2.jpg', '3i3.jpg', '3i4.jpg', 0, 10, 2, 4, 0, 0, 'Chính 16 MP & Phụ 2 MP', '	Chính 24 MP & Phụ 2 MP', '	3340 mAh', 20, 4, NULL, 'shnova1.jpg', 'shnova2.jpg', NULL),
(26, 'Apple MacBook Air 2017 i5', NULL, 22000000, 20900000, 'CPU:	Intel Core i5 Broadwell, 1.80 GHz\r\nRAM:	8 GB, DDR3L(On board), 1600 MHz\r\nỔ cứng:	SSD: 128 GB\r\nMàn hình:	13.3 inch, WXGA+(1440 x 900)\r\nCard màn hình:	Card đồ họa tích hợp, Intel HD Graphics 6000\r\nCổng kết nối:	MagSafe 2, 2 x USB 3.0, Thunderbolt 2\r\nHệ', 'MacBook Air 2017 i5 128GB là mẫu laptop văn phòng, có thiết kế siêu mỏng và nhẹ, vỏ nhôm nguyên khối sang trọng. Máy có hiệu năng ổn định, thời lượng pin cực lâu 12 giờ, phù hợp cho hầu hết các nhu cầu làm việc và giải trí. \r\nThiết kế siêu mỏng và nhẹ', 'Đây cũng là chiếc MacBook chính hãng có giá rẻ nhất hiện tại, phù hợp với mọi người tiêu dùng.\r\n', 'Hiệu năng mượt mà\r\nMacbook Air MQD32SA/A i5 5350U có bộ xử lý Intel Core i5 Broadwell hai nhân xung nhịp 1.8 GHz, bộ nhớ RAM 8 GB thoải mái trong việc duyệt web, chơi game, sử dụng mượt mà cac thao tác trong phần mềm Photoshop, AI…\r\n', 'Ổ cứng lưu trữ SSD 128 GB cho tốc độ cực nhanh, thời gian để bạn khởi động máy chỉ khoảng 10-15 giây, dung lượng 128 GB không quá dư giả, nhưng vẫn đủ để lưu trữ các tài liệu, hình ảnh, ứng dụng thường dùng.', 'mac11.jpg', 'mac12.jpg', 'mac13.jpg', 'mac14.jpg', 1, 10, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Macbook Air 2019 i5', NULL, 27000000, 26000000, 'CPU:	Intel Core i5 Coffee Lake, 1.60 GHz\r\nRAM:	8 GB, DDR3, 2133 MHz\r\nỔ cứng:	SSD: 128 GB\r\nMàn hình:	13.3 inch, Retina (2560 x 1600)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics 617\r\nCổng kết nối:	2 x Thunderbolt 3 (USB-C)\r\nHệ điều hành:	Mac OS', 'MacBook Air 2019 128 GB i5 đã ra mắt giữ nguyên các ưu điểm vốn có của dòng MacBook Air: Mỏng nhẹ, cấu hình khỏe và pin trâu. Mẫu MacBook mới con được trang bị màn hình True Tone và cải tiến bàn phím Butterfly thế hệ mới, ổn định và gõ êm hơn.', 'Thế hệ MacBook Air mới con sở hữu công nghệ True Tone - tự động điều chỉnh điểm trắng của màn hình để phù hợp với nhiệt độ màu của môi trường của bạn, giúp màu sắc trên máy tự nhiên hơn, hạn chế mỏi mắt khi dùng lâu.\r\n', 'Siêu mỏng, siêu nhẹ\r\nMacBook Air 2019 giữ nguyên thiết kế với thế hệ 2018. Máy được làm từ vỏ nhôm nguyên khối, pin liền với độ dày 15.6 mm và khối lượng 1.25 kg. Đặc biệt hơn, chiếc Macbook này được làm từ nhôm tái chế có độ bền cao và có thể bảo vệ môi trường. ', 'Cấu hình khỏe, xử lý văn phòng, Photoshop mượt mà\r\nLaptop Apple MacBook Air 2019 được trang bị bộ xử lý Intel Core i5 và bộ nhớ 8 GB, card đồ họa tích hợp Intel UHD Graphics 617 cho phép bạn hoạt động trơn tru ngay cả khi mở nhiều ứng dụng hoạt động cùng lúc. ', 'mac21.jpg', 'mac22.jpg', 'mac23.jpg', 'mac24.jpg', 1, 10, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Apple MacBook Air 2018 i5', NULL, 25000000, 24000000, 'CPU:	Intel Core i5 Coffee Lake, 1.60 GHz\r\nRAM:	8 GB, DDR3, 2133 MHz\r\nỔ cứng:	SSD: 128 GB\r\nMàn hình:	13.3 inch, Retina (2560 x 1600)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics 617\r\nCổng kết nối:	2 x Thunderbolt 3 (USB-C)\r\nHệ điều hành:	Mac OS', 'Sở hữu thiết kế đơn giản và sang trọng bậc nhất thế giới, Laptop Apple MacBook Air 128 GB hoàn toàn phù hợp với những ai yêu thích vẻ đẹp tinh tế, hiện đại. Bên cạnh đó, máy trang bị ổ cứng SSD có thể khởi chạy các ứng dụng cực nhanh, RAM 8 GB xử lý đa nhiệm.', 'Màn hình Retina trứ danh\r\nPhiên bản MacBook Air 2018 được cải tiến với màn hình Retina độ phân giải cao, tạo nên hình ảnh sắc nét và chân thực hơn gấp nhiều lần so với các thế hệ máy trước. Laptop MacBook với màn hình 13.3 inch cùng với viền màn hình mỏng.', 'Pin sử dụng trong 12 giờ liên tục\r\nMacBook Air 2018 có thời lượng pin đến 12 giờ khi sử dụng các ứng dụng văn phòng, 7-8 giờ khi sử dụng các ứng dụng thiết kế đồ họa như Photoshop, Ai, Mu,... đáp ứng được nhu cầu hoạt động khi làm việc cả ngày ', 'Mở khóa bằng cảm biến vân tay \r\nVới công nghệ Touch ID được tích hợp vào nút nguồn, MacBook 2018 đảm bảo luôn bảo vệ được các dữ liệu cá nhân của bạn. Cảm biến được trang bị con chip riêng Apple T2 giúp nhận diện nhanh chóng và chính xác hơn bao giờ hết.\r\n', 'mac31.jpg', 'mac32.jpg', 'mac33.jpg', 'mac34.jpg', 1, 10, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Macbook Pro Touch 2019 i5', NULL, 26000000, 25000000, 'CPU:	Intel Core i5 Coffee Lake, 1.40 GHz\r\nRAM:	8 GB, DDR3L, 2133 MHz\r\nỔ cứng:	SSD 128GB M2 PCIe\r\nMàn hình:	13.3 inch, Retina (2560 x 1600)\r\nCard màn hình:	Card đồ họa tích hợp, Intel Iris Plus Graphics 645\r\nCổng kết nối:	2 x Thunderbolt 3 (USB-C)\r\nHệ điều', 'Laptop Apple MacBook Pro Touch 2019 i5 (MUHN2SA/A) là thế hệ laptop mới của dòng MacBook Pro. Khoác lên mình vẻ ngoài đẳng cấp, cấu hình mạnh mẽ cùng nhiều tính năng hiện đại, chiếc laptop Apple MacBook Pro là một trong những chiếc laptop cao cấp - sang t', 'Bên cạnh đó, laptop trang bị ổ cứng SSD 128 GB M2 PCIe cho tốc độ xử lí dữ liệu cực nhanh, mở máy chỉ trong 10-15 giây, mở ứng dụng chỉ chưa đầy 3 giây. Cho bạn trải nghiệm làm việc cực kì năng suất với MacBook Pro.\r\nBàn phím cánh bướm thế hệ mới\r\nMacBook', 'Sang trọng - Đẳng cấp\r\nApple MacBook Pro Touch 2019 i5 mang vẻ ngoài sang trọng quen thuộc của thương hiệu Apple. Vỏ máy được hoàn thiện tỉ mỉ từ kim loại nguyên khối đem đến độ mỏng nhẹ tối ưu - dày 14.9 mm, trọng lượng 1.37 kg, dễ dàng để bạn đem theo l', 'Trải nghiệm hình ảnh chân thật với màn hình Retina\r\nMáy trang bị màn hình Retina 13.3 inch với độ phân giải 2560 x 1600 cho hình ảnh và văn bản hiển thị cực sắc nét. Tấm nền IPS cho góc nhìn rộng và hình ảnh sâu hơn. \r\nMacBook Pro cũng hỗ trợ công nghệ Tr', 'mac41.jpg', 'mac42.jpg', 'mac43.jpg', 'mac44.jpg', 1, 10, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Dell Inspiron N3580 i5 8265U', NULL, 10900000, 10000000, 'CPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2666 MHz\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	15.6 inch, HD (1366 x 768)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	2 x', 'Laptop Dell Inspire N3580 i5 (P75F106N80I) là mẫu máy tính xách tay văn phòng có cấu hình mạnh và ổn định, phục vụ tốt nhu cầu học tập, văn phòng cũng như giải trí thường ngày.\r\nCấu hình khỏe, làm việc mượt mà\r\nLaptop Dell Inspire N3580 trang bị chip Intel', 'Ổ cứng dung lượng lớn đến 1 TB\r\nVới ổ cứng HDD 1 TB SATA3, người dùng có thể lưu trữ một lượng lớn dữ liệu như phim, nhạc, hình ảnh,...Bên cạnh đó, máy cũng hỗ trợ khe cắm SSD M.2 PCIe cho người dùng có nhu cầu nâng cấp ổ cứng.\r\n', 'Màn hình lớn sử dụng thoải mái\r\nLaptop sở hữu màn hình 15.6 inch và độ phân giải HD với công nghệ chống chói giúp hình ảnh sắc nét, màu sắc sống động ngay cả khi sử dụng ngoài trời.\r\n', 'Laptop Dell Inspire được thiết kế đơn giản, kiểu dáng cứng cáp quen thuộc của dòng laptop Dell. Vỏ máy được làm từ chất liệu nhựa cho cảm giác chắc chắn, dễ chịu khi cầm trên tay. Trọng lượng 2.28 kg không quá khó khăn cho di chuyển.\r\n', 'dell11.jpg', 'dell12.jpg', 'dell13.jpg', 'dell14.jpg', 1, 10, 1, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Dell Inspiron 3576 i5 8250U', NULL, 13000000, 12000000, 'CPU:	Intel Core i5 Kabylake Refresh, 8250U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB\r\nMàn hình:	15.6 inch, HD (1366 x 768)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	HDMI 1.4, 2 x USB 3.0, LAN (RJ45)', 'Thiết kế thanh lịch, trọng lượng khá nhẹ phù hợp cho việc di chuyển hằng ngày đến lớp học, công sở - Laptop Dell Inspiron 3576 i5 8250U được trang bị cấu hình đủ mạnh để chạy tốt các ứng dụng văn phòng, cho phản hồi các thao tác kéo thả trong photoshop.', 'Xử lý tốt đồ hoạ cơ bản\r\nLaptop Dell Inspiron 3576 core i5 thế hệ 8, xung nhịp 1.6 Ghz kết hợp cùng 4GB RAM đáp ứng đầy đủ nhu cầu xử lý đồ hoạ cơ bản như photoshop, Ai. Chiến các game như liên minh huyền thoại, fifa online 3 khá mượt mà.\r\n', 'Màn hình rộng trải nghiệm giải trí hoàn hảo\r\nSở hữu màn hình rộng 15.6 inch cùng với đó là độ phân giải HD, với chất lượng ảnh tươi sáng, không gian làm việc rộng rãi, dễ nhìn.\r\n', 'Bàn phím to, rõ độ nảy tốt thuận tiện đánh máy\r\nBàn phím fullsize trên máy tính xách tay Dell Inspiron 3576 phù hợp cho kế toán, người thường sử dụng bàn phím số để nhập liệu. ', 'dell21.jpg', 'dell22.jpg', 'dell23.jpg', 'dell24.jpg', 1, 10, 1, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Dell Inspiron 3580 i5 8265U', NULL, 14000000, 13500000, 'CPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2666 MHz\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, AMD Radeon 520, 2GB\r\nCổng kết nối:	HDMI 1', 'Laptop Dell Inspiron 3850 với thiết kế màu đen huyền bí đem đến cho bạn sự năng động, cá tính. Laptop với cấu hình mạnh mẽ đáp ứng mọi nhu cầu văn phòng cũng như xử lý tốt các thao tác đồ họa thì đây sẽ là chiếc máy tính xách tay đáng để chi tiền.\r\nThiết ', 'Hiệu năng mạnh mẽ vượt trội\r\nLaptop Dell Inspiron 3850 được trang bị bộ vi xử lí Chip Intel Core i5 thế hệ thứ 8 phục vụ tốt nhu cầu sử dụng chơi game, giải trí hay chạy được các ứng dụng như Photoshop, Corel,...\r\n', 'Ngoài ra, máy còn được trang bị card đồ họa rời AMD Radeon 520 2GB xử lí đồ hoạ rất tốt, chơi game cấu hình cao như DOTA 2, PES 2018,...\r\n', 'Lưu trữ không giới hạn\r\nDell Inspiron 3850 sử dụng ổ cứng HDD 1 TB nên có thể chứa đựng được rất nhiều dữ liệu phục vụ cho công việc văn phòng như hình ảnh, video,.... Ngoài ra còn được hỗ trợ khe cắm SSD để máy có thể khởi động nhanh hơn.\r\nHình ảnh sống ', 'dell31.jpg', 'dell32.jpg', 'dell33.jpg', 'dell34.jpg', 1, 10, 1, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Dell Inspiron 5570 i5 8250U', NULL, 12500000, 11500000, 'CPU:	Intel Core i5 Kabylake Refresh, 8250U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, AMD Radeon 530, 2 GB\r\nCổng kết nối:	2 x US', 'Dell Inspiron 5570 là một trong những dòng máy tính xách tay đầu tiên của năm nay được Dell trang bị cấu hình mới với dòng chip Intel KabyLake Refresh vượt trội về mặt hiệu năng so với những thế hệ trước.', 'Thiết kế tinh tế, đẳng cấp\r\nTổng thể Dell Inspiron 5570 được hoàn thiện từ chất liệu vỏ nhựa nhưng nhìn khá giống với vỏ kim loại sang trọng. Máy chỉ mỏng 22.7 mm và nặng 2.3 kg cũng không quá khó khăn trong việc mang máy di chuyển.\r\n', 'Cấu hình vượt trội\r\nCó ngoại hình mảnh mai nhưng bên trong laptop Dell là một cơ bắp khỏe mạnh. Máy được trang bị CPU Intel Core i5 thế hệ thứ 8 nhanh hơn khi sử dụng bộ xử lý thế hệ 7, cùng với 4 GB RAM DDR4, ổ cứng HDD 1 TB.', 'Màn hình\r\nBạn sẽ được thưởng thức các chi tiết hiển thị sắc nét trên Dell Core i5 với màn hình 15,6 inch Full HD và tính năng chống chói để xem mọi thứ tốt hơn, đặc biệt là bên ngoài trời hoặc trong ánh sáng chói chang.\r\n', 'dell41.jpg', 'dell42.jpg', 'dell43.jpg', 'dell44.jpg', 1, 10, 1, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` (`id`, `name`, `entryprice`, `price`, `saleprice`, `configuration`, `description`, `description1`, `description2`, `description3`, `image`, `image1`, `image2`, `image3`, `new`, `quantityexists`, `producttype`, `producer`, `deleted`, `pricerange`, `maincamera`, `frontcamera`, `pin`, `screen`, `operatingsystem`, `sale`, `slideimg1`, `slideimg2`, `slideimg3`) VALUES
(34, 'Dell Inspiron 5584 i5 8265U', NULL, 16000000, 15000000, 'CPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA Geforce MX130, 2GB\r\nCổng kết nối:	', 'Được trang bị cấu hình khỏe để chạy mượt mà các ứng dụng văn phòng cũng như xử lý tốt đồ họa và chơi game nhẹ nhàng, laptop Dell Inspiron 5584 (N5I5384W) sẽ là một chiếc laptop đáng cân nhắc cho khách hàng là học sinh, sinh viên và nhân viên văn phòng. \r\n', 'Thiết kế trang nhã\r\nVới vỏ ngoài laptop Dell Inspiron 5584 được thiết kế mang lớp vỏ nhựa cùng với 4 góc cạnh được bo tròn nhẹ mang đến cho sản phẩm vẻ đẹp trang nhã, hiện đại. Với trọng lượng 1.95 kg, độ dày 22 mm thì sản phẩm vẫn có thể để bạn đem đi học.', 'Hình ảnh sống động, chân thật đến từng chi tiết\r\nLaptop Dell Inspiron 5584 được trang bị màn hình 15.6 inch với độ phân giải Full HD mang đến những hình ảnh sống động, mượt mà nhất. Viền máy mỏng cùng lớp nền chống chói mở góc nhìn rộng hơn để bạn có thể ', 'Trải nghiệm âm thanh tuyệt đỉnh với công nghệ MaxxAudio\r\nMáy trang bị công nghệ âm thanh Waves MaxxAudio đem đến trải nghiệm âm thanh to rõ, sống động như trong phòng thu. Ngoài ra, MaxxAudio có khả năng tăng cường âm lượng, tạo ra âm thanh lớn hơn với cô', 'dell51.jpg', 'dell52.jpg', 'dell53.jpg', 'dell54.jpg', 1, 10, 1, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Dell Inspiron 3480 i3 8145U', NULL, 9900000, 0, 'CPU:	Intel Core i3 Coffee Lake, 8145U, 2.10 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2666 MHz\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe\r\nMàn hình:	14 inch, HD (1366 x 768)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	HDMI ', 'Laptop Dell Inspiron 3480 thuộc dòng laptop tầm trung của hãng Dell với cấu hình khá mạnh, thiết kế đẹp và sang trọng. Máy hướng tới đối tượng nhân viên văn phòng và các bạn học sinh, sinh viên.\r\nCấu hình đáp ứng các tác vụ văn phòng, đa nhiệm ổn\r\nLaptop ', 'Thiết kế cứng cáp \r\nLaptop Dell Inspiron 3480 sở hữu thiết kế rất đẹp mắt, các góc cạnh được bo tròn tạo cảm giác chắc chắn cho người dùng với lớp vỏ ngoài nhìn cứng cáp. Máy nặng 1.72 kg khá nhẹ so với các laptop cùng phân khúc nên vô cùng tiện lợi để xá', 'Màn hình 14 inch HD, chống chói\r\nMáy có màn hình kích thước 14 inch tuy nhiên độ phân giải ở mức HD nên hình ảnh hiển thị khác rõ nét và sắc sảo. bù lại, lớp chống chói màn hình giúp bạn có thể sử dụng thoải mái hơn ngoài trời hoặc nơi có ánh sáng phức tạ', 'Dung lượng lưu trữ thoải mái\r\nMáy được trang bị ổ cứng HDD 1 TB cho bạn có thể thoải mái lưu trữ những dữ liệu hình ảnh, phim chất lượng cao, các ứng dụng văn phòng,...\r\n', 'di311.jpg', 'di312.jpg', 'di313.jpg', 'di314.jpg', 0, 10, 1, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Dell Inspiron 3476 i3 8130U', NULL, 11000000, 0, 'CPU:	Intel Core i3 Kabylake Refresh, 8130U, 2.20 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB SATA3\r\nMàn hình:	14 inch, HD (1366 x 768)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	2 x USB 3.0, HDMI, LAN (RJ45)', 'Dell Inspiron 3476 i3 8130U là phiên bản máy tính xách tay được trang bị cấu hình cơ bản với chip Intel Core i3 Kabylake Refresh, RAM DDR4 4 GB, ổ cứng HDD lên đến 1 TB, cùng hệ điều hành Windows 10 được cài đặt sẵn. Đây sẽ là lựa chọn phù hợp cho đối tượ', 'Cấu hình cơ bản, đủ dùng\r\nMáy được trang bị cấu hình cơ bản trong tầm giá với bộ vi xử lí Intel Core i3 thế hệ thứ 8, giúp tiết kiệm điện năng, đi cùng là thanh RAM DDR4 4 GB, cho phép hỗ trợ nâng cấp lên đến 16 GB khi cần thiết.\r\n', 'Việc lưu trữ dữ liệu trên máy sẽ trở nên thoải mái hơn với ổ cứng HDD lên đến 1 TB, thích hợp cho đối tượng sử dụng cần lưu nhiều tài liệu như văn thư, giáo viên, kế toán..\r\n', 'Màn hình 14 inch nhỏ gọn\r\nDù máy tính Dell trong bài viết này chỉ sở hữu màn hình với kích thước 14 inch, độ phân giải HD, nhưng kết hợp công nghệ màn hình TrueLife LED-Backlit Display cùng card đồ họa tích hợp Intel® UHD Graphics 620 cho hình ảnh hiển th', 'di321.jpg', 'di322.jpg', 'di323.jpg', 'di324.jpg', 0, 10, 1, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Dell Inspiron 13 5370 i3 8130U', NULL, 14000000, 13500000, 'CPU:	Intel Core i3 Coffee Lake, 8130U, 2.20 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	SSD 128GB M2 PCIe\r\nMàn hình:	13.3 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	HDMI 1.4, 2 x USB 3.1, U', 'Laptop Dell Inspiron 5370 (N3I3002W) là dòng laptop cho sinh viên với cấu hình được trang bị vi xử lý chip Intel Core i3 thế hệ thứ 8 đem đến hiệu năng ổn định khi thao tác các tác vụ cơ bản, phù hợp cho công việc văn phòng, học tập.\r\nThiết kế mỏng nhẹ th', 'Cấu hình chạy ổn các ứng dụng văn phòng\r\nĐược trang bị chip Intel Core i3 và RAM 4 GB, laptop Dell Inspiron 5370 (N3I3002W) phục vụ toàn diện cho nhu cầu văn phòng, học tập và giải trí dành cho bạn. Nếu bạn cần xử lý hình ảnh 2D cơ bản thì vẫn có thể cài ', 'Khởi động máy và ứng dụng cực nhanh\r\nĐể thúc đẩy tốc độ nhanh chóng hơn, laptop được trang bị ổ cứng SSD 128 GB giúp bạn khởi động máy chưa tới 30 giây, với các ứng dụng thì chỉ mất tối đa 5 giây để mở.\r\n', 'Hình ảnh sống động như thật\r\nLaptop trang bị màn hình chống chói 13,3 inch Full HD đem đến những hình ảnh sắc nét, sống động trên từng thước phim. Công nghệ chống chói Anti-Glare giúp bạn có thể xem được mọi thông tin hiển thị trên màn hình khi sử dụng ở ', 'di331.jpg', 'di332.jpg', 'di333.jpg', 'di334.jpg', 0, 10, 1, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'iPad Pro 11 inch Wifi 64GB (2018)', NULL, 17000000, 15000000, 'Màn hình	Liquid Retina, 11\"\r\nHệ điều hành	iOS 12\r\nCPU	Apple A12X Bionic 64-bit\r\nRAM	4 GB\r\nBộ nhớ trong	64 GB\r\nCamera sau	12 MP\r\nCamera trước	7 MP\r\nKết nối mạng	WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G\r\nĐàm thoại	FaceTime\r\nTrọng lượng	468 g', 'Máy tính bảng iPad Pro 11 inch 64GB Wifi (2018) được ra mắt vào cuối năm 2018, thu hút nhân viên văn phòng, doanh nhân bởi thiết kế hiện đại, đầy sức đột phá và một cấu hình mạnh mẽ đáp ứng tốt tất cả các nhu cầu từ giải trí đến làm việc.\r\nThiết kế đẳng cấp\r\niPad Pro 11 inch 64GB Wifi (2018) sở hữu ngoại hình hoàn toàn mới, viền màn hình được thu hẹp hơn, 4 cạnh được vát mạnh đã khiến máy trở thành một trong những chiếc máy tính bảng đẹp nhất, đẳng cấp nhất hiện tại.\r\n', 'Màn hình siêu sắc nét\r\nCông nghệ màn hình Liquid Retina với độ phân giải 2388 x 1668 pixels trên chiếc máy tính bảng 11 inch có khả năng hiển thị sắc nét đến từng chi tiết nhỏ, màu sắc có độ sâu và chân thật. Xem phim, chơi game,... đều cho trải nghiệm tuyệt vời nhất.', 'Vi xử lý mạnh mẽ\r\nVi xử lý Apple A12X Bionic mạnh mẽ kết hợp cùng 4GB RAM và hệ điều hành IOS 12 giúp iPad Pro 11 inch 64GB Wifi (2018) có thể chiến mượt mà các tựa game nặng nhất hiện tại và chạy trơn tru các ứng dụng đồ hoạ.\r\n\r\n', 'FaceID đầu tiên trên Ipad\r\nCông nghệ bảo mật bằng khuôn mặt tiên tiến lần đầu tiên xuất hiện trên iPad Pro 11 inch 64GB Wifi (2018) với cụm cảm biến FaceID thông minh có thể nhận diện khi bạn xoay ngang hay xoay dọc.', 'ipad11.png', 'ipad.jpg', 'ipad13.jpg', 'ipad14.jpg', 1, 10, 3, 1, 0, 0, '12 MP', '7 MP', NULL, NULL, NULL, NULL, 'sipadpro1.png', 'sipadpro1.png', NULL),
(39, 'iPad Wifi Cellular 32GB (2018)', NULL, 9900000, 9000000, 'Màn hình	LED backlit LCD, 9.7\"\r\nHệ điều hành	iOS 12\r\nCPU	Apple A10 Fusion, 2.34 GHz\r\nRAM	2 GB\r\nBộ nhớ trong	32 GB\r\nCamera sau	8 MP\r\nCamera trước	1.2 MP\r\nKết nối mạng	WiFi, 3G, 4G LTE\r\nHỗ trợ SIM\r\nNano Sim\r\nHOTSIM Mobi Data 5GB (5GB data/tháng). Giá từ 150', 'Máy tính bảng iPad 6th Wifi Cellular 32 GB mang trong mình cấu hình mạnh mẽ cùng giá thành hợp lý.\r\n', 'Cấu hình mạnh mẽ thuộc top đầu\r\nMáy tính bảng iPad 6th Wifi Cellular 32 GB có những cải tiến mới vượt bậc trong vấn đề xử lý đồ họa, hỗ trợ tối đa cho ứng dụng AR (thực tế tăng cường).\r\nBộ nhớ trong của máy có dung lượng là 32 GB cho phép người dùng có thể lưu trữ dữ liệu nhiều hơn cùng với RAM 2 GB giúp cho máy thực hiện được đa nhiệm nhiều ứng dụng cùng lúc vô cùng nhanh chóng và mượt mà.\r\nApple đã nâng cấp chip xử lý trong iPad 6th Wifi Cellular 32GB lên thành chip Apple A10 Fusion, đây cũng là con chip xử lý từng xuất hiện trên bộ đôi iPhone 7, 7 Plus có 4 nhân và tốc độ xử lý lên đến 2.34 GHz.', 'Màn hình hiển thị sắc nét\r\niPad 6th Wifi Cellular 32GB được trang bị tấm nền IPS với màn hình Retina kích thước 9.7 inch độ phân giải cao 1536 x 2048 pixels giúp hiển thị hình ảnh trung thực, sắc nét.\r\nNgoài việc hỗ trợ rất tốt Apple Pencil thì màn hình của máy đã bị lược bỏ một số chức năng cao cấp để giảm giá thành như: True Tone, ProMotion, dải màu rộng, khả năng chống chói…', 'Camera độ phân giải cao\r\nĐối với người tiêu dùng mà cụ thể hơn là giới trẻ hiện nay, việc trang bị một camera chất lượng trở thành một trong những điều kiện quyết định trong việc lựa chọn thiết bị máy tính bảng.\r\nChính vì vậy, iPad 6th Wifi Cellular 32 GB đã trang bị cho mình một camera sau có độ phân giải 8 MP, camera trước 1.2 MP và khả năng quay video chất lượng Full HD.', 'ipad21.png', 'ipad22.jpg', 'ipad23.jpg', 'ipad24.jpg', 1, 10, 3, 1, 0, 0, '8 MP', '1.2 MP', NULL, NULL, NULL, NULL, 'siw181.png', 'siw182.png', 'siw183.png'),
(40, 'Samsung Galaxy Tab S6', NULL, 6000000, 5500000, 'Màn hình	Super AMOLED, 10.5\"\r\nHệ điều hành	Android 9.0 (Pie)\r\nCPU	Qualcomm Snapdragon 855 8 nhân, 1 nhân 2.84 GHz, 3 nhân 2.41 GHz & 4 nhân 1.78 GHz\r\nRAM	6 GB\r\nBộ nhớ trong	128 GB\r\nCamera sau	Chính 13 MP & Phụ 5 MP\r\nCamera trước	8 MP\r\nKết nối mạng	WiFi, 3', 'Samsung Galaxy Tab S6 là chiếc máy tính bảng 2 trong 1, được thiết kế để giúp cho những người cần một sản phẩm đủ gọn gàng nhưng mạnh mẽ.\r\nNgoại hình mỏng nhẹ, đẹp mắt\r\nẤn tượng đầu tiên về chiếc máy tính bảng Samsung này chính là nó rất mỏng và sang trọng, nếu bạn đang có suy nghĩ là những chiếc máy tính bảng thường có kích thước lớn, trọng lượng nặng và khó mang theo thì đây sẽ là một trải nghiệm hoàn toàn khác.', 'Với độ dày chỉ 5.7 mm thì bạn có thể dễ dàng cho vào túi xách và mang theo đi bất cứ đâu mà mình muốn.\r\n', 'Màn hình kích thước lớn 10.5 inch với tấm nền Super AMOLED chất lượng cao giúp bạn dễ dàng sử dụng ngay cả trong điều kiện ánh sáng mạnh.\r\n', 'Samsung Galaxy Tab S6 hoàn toàn hỗ trợ tốt mọi người dùng cho mọi nhu cầu sử dụng: từ giải trí xem phim, chơi game, cho đến học tập, làm việc khi phải sử dụng máy lâu dài.\r\n', 's61.png', 's62.jpg', 's63.jpg', 's64.jpg', 1, 10, 3, 2, 0, 0, 'Chính 13 MP & Phụ 5 MP', '8 MP', NULL, NULL, NULL, NULL, 'sstabs61.png', NULL, NULL),
(41, 'Samsung Galaxy Tab S4', NULL, 5500000, 5000000, 'Màn hình	Super AMOLED, 10.5\"\r\nHệ điều hành	Android 8.0\r\nCPU	Qualcomm MSM 8998, 4 nhân 2.35GHz + 4 nhân 1.9GHz\r\nRAM	4 GB\r\nBộ nhớ trong	64 GB\r\nCamera sau	13 MP\r\nCamera trước	8 MP\r\nKết nối mạng	WiFi, 3G, Hỗ trợ 4G\r\nHỗ trợ SIM\r\nNano Sim\r\nHOTSIM Mobi Data 5GB ', 'Samsung đã cho ra mắt máy tính bảng Galaxy Tab S4 10.5 với màn hình Super AMOLED 10.5 inch, chip Snapdragon 835 được trang bị. Đây là một chiếc máy tính bảng cấp cao cùng hiệu năng ổn định với các thao tác được phản hồi nhanh chóng.\r\nMàn hình Super AMOLED 10.5 inch\r\nSamsung Galaxy Tab S4  sở hữu màn hình với kích thước 10.5 inch, có độ phân giải 2.560 x 1.600 pixels, kết hợp cùng công nghệ màn hình Super AMOLED cho chất lượng hình ảnh hiển thị rực rỡ, sống động, chân thực. Cho khả năng hiển thị dưới ánh sáng mặt trời rõ nét hơn.', 'Ngoài ra, đây cũng là máy tính bảng đầu tiên hỗ trợ cùng lúc  2 màn hình – màn hình của máy tính bảng và màn hình cắm bên ngoài khi kết nối thông qua cổng HDMI.\r\nHiệu năng ổn định\r\nSamsung Galaxy Tab S4 10.5 với nền tảng Android 8.0, trang bị chip Snapdragon 835, RAM 4 GB cùng bộ nhớ ROM 64 GB cho hoạt động nhanh chóng. \r\nVới vi xử lý Snapdragon 835 giúp máy có thể chiến mọi tựa game nặng như Liên Quân, Pubg Mobile, ... một cách mượt mà ổn định.', 'Âm thanh sống động\r\nSamsung Galxy Tab S4 được trang bị 4 loa với công nghệ âm tinh chỉnh thành từ AKG, hỗ trợ cả Dolby Atmos mang đến sự trải nghiệm âm thanh sống động, chân thực trong từng chất âm phát ra.\r\n', 'Hỗ trợ kết nối 3G/4G\r\nNgoài công nghệ 3G, Samsung Galaxy Tab S4 10.5 inch S-Pen còn hỗ trợ kết nối 4G giúp bạn tìm tài liệu học tập hiệu quả, thoải mái lướt Facebook hoặc xem YouTube mọi lúc mọi nơi mà không phải hoàn toàn phụ thuộc vào kết nối Wifi.\r\n', 's41.png', 's42.jpg', 's43.jpg', 's44.jpg', 1, 10, 3, 2, 0, 0, '13 MP', '8 MP', NULL, NULL, NULL, NULL, 'sstabs41.png', NULL, NULL),
(49, 'Gấu', NULL, 1, 1, 'dễ thương', 'Xinh Xắn', NULL, NULL, NULL, '12742826_542680419232318_2463067403680975771_n.jpg', NULL, NULL, NULL, 1, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Hằng Trương', NULL, 1, 1, 'xinh xắn', 'dễ xương', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Hắng Trương', NULL, 1, 1, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 3, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'iPhone 11 Pro Max 256GB', NULL, 39000000, 38000000, '+ Màn hình:	OLED, 6.5\", Super Retina XDR\r\n+ Hệ điều hành:	iOS 13\r\n+ Camera sau:	3 camera 12 MP\r\n+ Camera trước:	12 MP\r\n+ CPU:	Apple A13 Bionic 6 nhân\r\n+ RAM:	4 GB\r\n+ Bộ nhớ trong:	256 GB\r\n+ Thẻ SIM:\r\nNano SIM & eSIM, Hỗ trợ 4G HOTSIM Mobi Big 70 (3GB data', 'Trong năm 2019 thì chiếc smartphone được nhiều người mong muốn sở hữu trên tay và sử dụng nhất không ai khác chính là iPhone 11 Pro Max 64GB tới từ nhà Apple.\r\nCamera được cải tiến mạnh mẽ\r\nChắc chắn lý do lớn nhất mà bạn muốn nâng cấp lên iPhone 11 Pro Max chính là cụm camera mới được Apple nâng cấp rất nhiều.', 'Lần đầu tiên chúng ta sẽ có một chiếc iPhone với 3 camera ở mặt sau và cả 3 camera này đều có độ phân giải là 12 MP.\r\nChúng ta sẽ có một camera góc thường, một camera góc rộng và một camera tele đáp ứng đầy đủ nhu cầu chụp ảnh hàng ngày của người dùng.\r\n', 'Một cải tiến nữa cũng rất đáng chú ý chính là chế độ Night Mode mới sẽ giúp bạn cải thiện rất nhiều chất lượng ảnh chụp đêm trên iPhone.\r\nTùy thuộc vào điều kiện môi trường bạn chụp mà iPhone sẽ đưa ra những thông số phù hợp để bạn có thể có cho mình được một bức ảnh ưng ý nhất.\r\nChế độ chân dung không chỉ tốt hơn trong việc lấy nét vào đối tượng muốn chụp, mà còn hoạt động được ở khoảng cách \'bình thường\' nhờ sự trợ giúp của cảm biến độ sâu.', 'Bạn muốn chụp một tòa nhà cao tầng, bạn muốn ghi lại khung cảnh thiên nhiên hùng vĩ mà mình nhìn thấy thì camera góc siêu rộng sẽ làm rất tốt trong những điều kiện này. Camera trước cũng mang lại sự khác biệt Không chỉ có camera chính mà camera selfie trên iPhone 11 Pro Max cũng được cải thiện rất nhiều. Tiếp theo chúng ta sẽ có công nghệ quay video độ phân giải 4K ngay trên camera trước một điều mà những chiếc iPhone trước đây chưa thể làm được. Ngoài ra bạn cũng có thể dùng camera trước để quay video slow motion (quay chậm) giúp bạn có được những video  thú vị và vui vẻ với bạn bè.', 'ip11.png', 'ip111.jpg', 'ip112.jpg', 'ip113.jpg', 1, 10, 2, 1, 0, 0, '3 camera 12 MP', '12 MP', '3969 mAh, có sạc nhanh', 1, 1, 5, 'ip11pro1.png', 'ip11pro2.png', 'ip11pro3.png'),
(54, 'Samsung Galaxy S10+ 512GB', NULL, 29000000, 28000000, 'Màn hình:	Dynamic AMOLED, 6.4\", Quad HD+ (2K+)\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 12 MP & Phụ 12 MP, 16 MP\r\nCamera trước:	Chính 10 MP & Phụ 8 MP\r\nCPU:	Exynos 9820 8 nhân 64-bit\r\nRAM:	8 GB\r\nBộ nhớ trong:	512 GB\r\nThẻ nhớ:	MicroSD\r\n', 'Samsung Galaxy S10+ là một trong những chiếc smartphone được trông chờ nhiều nhất trong năm 2019 và không phụ sự kỳ vọng của mọi người thì chiếc Galaxy S thứ 10 của Samsung thực sự gây ấn tượng mạnh cho người dùng.\r\nThiết kế sang trọng, bóng bẩy\r\nVới một ', 'Và thậm chí Samsung còn làm tốt hơn như thế khi Samsung Galaxy S10+ sở hữu thiết kế 2 mặt kính đẹp mắt cùng việc loại bỏ đi cảm biến vân tay ở mặt lưng giúp máy liền mạch hơn.\r\n', 'Trên Galaxy S10+ Samsung đã sở hữu công nghệ màn hình mới mà hãng gọi là Infinity-O, đảm bảo được viền màn hình mỏng ở tất cả cách cạnh khiến kích thước máy không lớn hơn S9+ nhưng kích thước màn hình lại lớn hơn.\r\n', 'Samsung Galaxy S10+ sở hữu màn hình có kích thước 6.4 inch, sử dụng tấm nền Dynamic AMOLED với độ phân giải lên tới 2K+ cho hình ảnh hiển thị sắc nét và sống động.\r\n', 's101.png', 's102.jpg', 's103.jpg', 's104.jpg', 1, 10, 2, 2, 0, 0, 'Chính 12 MP & Phụ 12 MP, 16 MP', 'Chính 10 MP & Phụ 8 MP', '4100 mAh, có sạc nhanh', 7, 3, 15, 'ss101.png', NULL, NULL),
(55, 'Samsung Galaxy A50 64GB', NULL, 5500000, 0, 'Màn hình:	Super AMOLED, 6.4\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 25 MP & Phụ 8 MP, 5 MP\r\nCamera trước:	25 MP\r\nCPU:	Exynos 9610 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 Na', 'Samsung Galaxy A50 64GB là chiếc smartphone tầm trung mới của Samsung trong năm 2019 với nhiều tính năng hấp dẫn, đặc biệt là có cả cảm biến vân tay dưới màn hình.\r\nMàn hình Infinity-U lần đầu xuất hiện\r\nNếu như trên chiếc Galaxy M20 Samsung đã giới thiệu màn hình công nghệ Infinity-V thì với Galaxy A50 đây lại là lần đầu tiên Samsung sử dụng màn hình Infinity-U.', 'Cảm biến vân tay trong màn hình\r\nSamsung Galaxy A50 là chiếc smartphone tầm trung đầu tiên được Samsung ưu ái trang bị cảm biến vân tay bên trong màn hình.\r\nViệc mở khóa trên máy diễn ra rất đơn giản, bạn chỉ cần đặt ngón tay lên màn hình, cảm biến sẽ xuất hiện và điện thoại sẽ sẵn sàng để sử dụng.', 'Camera vẫn là điểm sáng\r\nSamsung Galaxy A50 có tới 3 camera bao gồm cảm biến chính 25 MP f/1.7, cảm biến siêu rộng 8 MP f/2.2 và cảm biến độ sâu 5 MP cho chụp ảnh chân dung.\r\nVới bộ 3 camera thì Samsung Galaxy A50 đáp ứng cho bạn hầu hết các nhu cầu trong sử dụng hằng ngày từ chụp ảnh xóa phông hay chụp phong cảnh trong những chuyến đi chơi xa.\r\n\r\n', 'Camera selfie có chất lượng cao\r\nCamera trước cũng ấn tượng không kém khi sở hữu độ phân giải 25 MP hỗ trợ nhiều tính năng cao cấp như: Sticker AR, camera góc rộng hay có các chế độ làm đẹp khác nhau.', 'a501.png', 'a502.jpg', 'a503.jpg', 'a504.jpg', 0, 10, 2, 2, 0, 0, 'Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP', '8 MP', '	5000 mAh', 11, 3, NULL, 'sa501.png', 'sa502.png', 'sa503.png'),
(56, 'Samsung Galaxy A30 32GB', NULL, 5000000, 0, 'Màn hình:	Super AMOLED, 6.4\", Full HD+\r\nHệ điều hành:	Android 9.0 (Pie)\r\nCamera sau:	Chính 16 MP & Phụ 5 MP\r\nCamera trước:	16 MP\r\nCPU:	Exynos 7904 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 Nano SIM,', 'Samsung Galaxy A30 là một chiếc máy khá hấp dẫn, dành cho các bạn yêu thích thương hiệu Samsung, muốn sở hữu một sản phẩm có nhiều tính năng hấp dẫn mà không cần phải bỏ ra nhiều tiền.\r\nMàn hình lớn tương đương Galaxy S10+\r\nCó thể bạn sẽ bất ngờ bởi chiếc', 'Tuy nhiên khác với màn hình Infinity-O trên người đàn anh đắt tiền thì Galaxy A30 sẽ sở hữu màn hình Infinity-U hoàn toàn mới mẻ.\r\nVới tỷ lệ màn hình 19:9 đảm bảo cho bạn có một không gian trải nghiệm rộng rãi trên kích thước 6 inch nhưng vẫn tối ưu được ', 'Dung lượng pin thoải mái sử dụng\r\nMang trong mình một viên pin có dung lượng 4000 mAh giúp Samsung Galaxy A30 đáp ứng khá trọn vẹn với các nhu cầu giải trí cơ bản trong hơn một ngày.\r\nĐặc biệt máy cũng hỗ trợ cổng sạc mới Type-C.', 'Cụm camera kép góc rộng\r\nBộ đôi camera kép ở mặt sau của máy có độ phân giải chính 16 MP và phụ 5 MP, trong đó ống kính phụ góc rộng là 5 MP cho phép chụp ảnh được bao quát và lạ mắt hơn.\r\n', 'a301.png', 'a302.jpg', 'a303.jpg', 'a304.jpg', 0, 10, 2, 2, 0, 0, 'Chính 16 MP & Phụ 5 MP', '16 MP', '4000 mAh, có sạc nhanh', 11, 3, NULL, 'sa301.png', 'sa302.png', NULL),
(57, 'iPhone 11 Pro Max 512GB', NULL, 45000000, 44000000, '+ Màn hình:	OLED, 6.5\", Super Retina XDR\r\n+ Hệ điều hành:	iOS 13\r\n+ Camera sau:	3 camera 12 MP\r\n+ Camera trước:	12 MP\r\n+ CPU:	Apple A13 Bionic 6 nhân\r\n+ RAM:	4 GB\r\n+ Bộ nhớ trong:	512 GB\r\n+ Thẻ SIM:\r\nNano SIM & eSIM, Hỗ trợ 4G HOTSIM Mobi Big 70 (3GB data', 'Trong năm 2019 thì chiếc smartphone được nhiều người mong muốn sở hữu trên tay và sử dụng nhất không ai khác chính là iPhone 11 Pro Max 64GB tới từ nhà Apple.\r\nCamera được cải tiến mạnh mẽ\r\nChắc chắn lý do lớn nhất mà bạn muốn nâng cấp lên iPhone 11 Pro Max chính là cụm camera mới được Apple nâng cấp rất nhiều.', 'Một cải tiến nữa cũng rất đáng chú ý chính là chế độ Night Mode mới sẽ giúp bạn cải thiện rất nhiều chất lượng ảnh chụp đêm trên iPhone.\r\nTùy thuộc vào điều kiện môi trường bạn chụp mà iPhone sẽ đưa ra những thông số phù hợp để bạn có thể có cho mình được một bức ảnh ưng ý nhất.\r\nChế độ chân dung không chỉ tốt hơn trong việc lấy nét vào đối tượng muốn chụp, mà còn hoạt động được ở khoảng cách \'bình thường\' nhờ sự trợ giúp của cảm biến độ sâu.', 'Một cải tiến nữa cũng rất đáng chú ý chính là chế độ Night Mode mới sẽ giúp bạn cải thiện rất nhiều chất lượng ảnh chụp đêm trên iPhone.\r\nTùy thuộc vào điều kiện môi trường bạn chụp mà iPhone sẽ đưa ra những thông số phù hợp để bạn có thể có cho mình được những bức ảnh đẹp.', '', 'ip11.png', 'ip111.jpg', 'ip112.jpg', 'ip113.jpg', 1, 10, 2, 1, 0, 0, '3 camera 12 MP', '12 MP', '3969 mAh, có sạc nhanh', 1, 1, 5, 'sip11pro1.png', 'sip11pro2.png', 'sip11pro3.png'),
(58, 'iPhone Xr 64GB', NULL, 18000000, 17500000, 'Màn hình:	IPS LCD, 6.1\", Liquid Retina\r\nHệ điều hành:	iOS 12\r\nCamera sau:	12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A12 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ SIM:\r\nNano SIM & eSIM, Hỗ trợ 4G\r\nHOTSIM Mobi Big 70 (3GB data/tháng). Giá từ 170.000đ\r', 'Được xem là phiên bản iPhone giá rẻ đầy hoàn hảo, iPhone Xr 128GB khiến người dùng có nhiều sự lựa chọn hơn về màu sắc đa dạng nhưng vẫn sở hữu cấu hình mạnh mẽ và thiết kế sang trọng.\r\nMàn hình tràn viền công nghệ LCD - True Tone\r\nThay vì sở hữu màn hình OLED truyền thống, chiếc smartphone này sở hữu màn hình LCD.', 'Bù lại với công nghệ True Tone cùng màn hình tràn viền rộng tới 6.1 inch, mọi trải nghiệm trên máy vẫn đem lại sự thích thú và hoàn hảo, như dòng cao cấp khác của Apple.\r\n', 'Ngoài ra, Apple cũng giới thiệu rằng, iPhone Xr được trang bị một loại công nghệ mới có tên Liquid Retina. Máy có độ phân giải 1792 x 828 Pixels cùng 1.4 triệu điểm ảnh.\r\n', 'Mượt mà mọi trải nghiệm nhờ chip Apple A12\r\nVới mỗi lần ra mắt, Apple lại giới thiệu một con chip mới và Apple A12 Bionic là con chip đầu tiên sản xuất với tiến trình 7nm được tích hợp trên iPhone Xr.\r\nApple A12 được tích hợp trí tuệ thông minh nhân tạo', 'ipx1.png', 'ipx2.jpg', 'ip3.jpg', 'ipx4.jpg', 1, 10, 2, 1, 0, 0, '12 MP', '7 MP', '2942 mAh, có sạc nhanh', 3, 2, 5, 'sipxr1.png', 'sipxr2.png', 'sipxr3.png'),
(59, 'iPhone 8 Plus 256GB', NULL, 18000000, 0, 'Màn hình:	LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 12\r\nCamera sau:	Chính 12 MP & Phụ 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A11 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nHOTSIM Mobi Big 70 (3GB data/thán', 'Thừa hưởng những thiết kế đã đạt đến độ chuẩn mực, thế hệ iPhone 8 Plus thay đổi phong cách bóng bẩy hơn và bổ sung hàng loạt tính năng cao cấp cho trải nghiệm sử dụng vô cùng tuyệt vời.\r\nThiết kế từ kính và kim loại\r\nSmartphone iPhone 8 Plus giữ nguyên hoàn toàn những đường nét thiết kế đã hoàn thiện từ thế hệ trước nhưng sử dụng phong cách 2 mặt kính cường lực kết hợp bộ khung kim loại.', 'Mặt lưng kính bo cong 2.5D thời thượng, khung kim loại được gia cố cứng cáp, bền bỉ hơn với 7 lớp xử lý màu sơn, hạn chế bong tróc.\r\nThay đổi này đồng thời loại bỏ chi tiết đường anten thừa ở mặt lưng như các thế hệ trước, mang đến vẻ đẹp hoàn hảo hơn.\r\n', 'Camera kép chuyên nghiệp\r\nKhông có sự thay đổi trong thông số camera (vẫn là cụm camera kép cùng độ phân giải 12 MP so với chiếc điện thoại IPhone 7 Plus), chiếc điện thoại iPhone này chủ yếu được tập trung nâng cấp về ống kính, cảm biến, vi xử lý hình ản', 'Chip Apple A11 cùng với thực tế ảo AR Một trong những điểm nhất quan trọng nhất ở thế hệ iPhone 8 Plus chính là sức mạnh phần cứng, con chip Apple A11 như trên iPhone X cho hiệu năng vượt trội hơn rất nhiều so với trước đây.', 'ip81.png', 'ip82.jpg', 'ip83.jpg', 'ip84.jpg', 0, 10, 2, 1, 0, 0, 'Chính 12 MP & Phụ 12 MP', '7 MP', '2691 mAh, có sạc nhanh', 4, 2, 5, 'sip81.jpg', 'sip82.jpg', NULL),
(60, 'Samsung Galaxy Note 9 512GB', NULL, 25000000, 0, 'Màn hình:	Super AMOLED, 6.4\", Quad HD+ (2K+)\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	Chính 12 MP & Phụ 12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 9810 8 nhân 64-bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 S', 'Mang lại sự cải tiến đặc biệt trong cây bút S Pen, siêu phẩm Samsung Galaxy Note 9 còn sở hữu dung lượng pin khủng lên tới 4.000 mAh cùng hiệu năng mạnh mẽ vượt bậc, xứng đáng là một trong những chiếc điện thoại cao cấp nhất của Samsung.\r\n', 'Một chút thay đổi trong thiết kế\r\nChiếc điện thoại Samsung mới vẫn thừa hưởng lối thiết kế vô cùng quyến rũ từ đàn anh của mình với thân hình mạnh mẽ và được cách điệu bởi những đường cong mềm mại.\r\n', 'Điểm thay đổi đáng chú ý phải kể đến mặt lưng khi mà cảm biến vân tay của máy đã được đặt dưới cụm camera kép với một vị trí thuận lợi để bạn có thể mở khóa máy một cách dễ dàng.\r\n', 'Bên cạnh đó Samsung đã tối giản cạnh viền trên dưới để mang lại cho bạn một trải nghiệm tuyệt vời hơn nữa với một màn hình có kích thước khủng lên đến 6.4 inch có độ phân giải 2K+ với tỉ lệ tràn viền 18.5:9.\r\n', 'note91.png', 'note92.jpg', 'note93.jpg', 'note94.jpg', 0, 10, 2, 2, 0, 0, 'Chính 12 MP & Phụ 12 MP', '8 MP', '4000 mAh, có sạc nhanh', 7, 4, 5, 'snote91.jpg', 'snote92.jpg', 'snote93.jpg'),
(61, 'VS MART', 2000000, 3500000, NULL, NULL, NULL, NULL, NULL, NULL, 'image.png', NULL, NULL, NULL, 1, NULL, 2, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'slideimage2.png', NULL, NULL),
(63, 'Nokia 8.1', 7000000, 9000000, NULL, NULL, NULL, NULL, NULL, NULL, 'no1.png', NULL, NULL, NULL, 1, NULL, 2, 8, 0, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'sno1.png', NULL, NULL),
(64, 'test', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 9, 1, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(65, 'test2', 15000000, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL),
(66, 'test3', 2000000, 100, NULL, NULL, 'đây là mô tả', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL),
(67, 'test4', 15000000, 1000000, NULL, NULL, '<p><strong>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL),
(68, 'TEST10', 15000000, 1000000, NULL, NULL, '<p><strong>HIHI</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 8, 0, NULL, '13 MP', '8 MP', '3000 MA', 21, 6, 10, NULL, NULL, NULL),
(69, 'TEST10', 15000000, 1000000, NULL, NULL, '<p><strong>HIHI</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 8, 0, NULL, '13 MP', '8 MP', '3000 MA', 21, 6, 10, NULL, NULL, NULL),
(70, 'TEST10', 15000000, 1000000, NULL, NULL, '<p><strong>HIHI</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 8, 0, NULL, '13 MP', '8 MP', '3000 MA', 21, 6, 10, NULL, NULL, NULL),
(71, 'TEST10', 15000000, 1000000, NULL, NULL, '<p><strong>HIHI</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 8, 0, NULL, '13 MP', '8 MP', '3000 MA', 21, 6, 10, NULL, NULL, NULL),
(72, 'qqqq', 7000000, 50000000, NULL, NULL, '<p><em><strong>asasd</strong></em></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 6, 0, NULL, '13 MP', '8 MP', '3000 MA', 21, 6, 10, NULL, NULL, NULL),
(73, 'check', 15000000, 1000000, NULL, NULL, '<p><strong>AAAAAAAAAAAAAAAAAAaaa</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 6, 0, NULL, '13 MP', '8 MP', '3000 MA', 21, 6, 10, NULL, NULL, NULL),
(74, 'Võ Phước', 15000000, 50000000, NULL, NULL, '<p><strong>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, 6, 1, NULL, '13 MP', '8 MP', '5000 mA', 22, 7, 10, NULL, NULL, NULL),
(75, 'Võ Phước', 17000000, 18000000, NULL, NULL, '<p><strong>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 6, 1, NULL, '13 MP', '8 MP', '5000 mA', 22, 7, 5, NULL, NULL, NULL),
(76, 'Itel S33', 1500000, 2500000, NULL, NULL, '<p><em><strong>Đ&acirc;y l&agrave; điện thoại mới</strong></em></p>', NULL, NULL, NULL, 'itel.png', NULL, NULL, NULL, 1, NULL, 2, 11, 0, NULL, '8 MP', '5 MP', '3000 mAh', 23, 8, 5, NULL, 'itelimg2.png', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttype`
--

CREATE TABLE `producttype` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `producttype`
--

INSERT INTO `producttype` (`id`, `name`) VALUES
(1, 'Laptop'),
(2, 'Điện Thoại'),
(3, 'Máy Tính Bảng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ram`
--

CREATE TABLE `ram` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ram`
--

INSERT INTO `ram` (`id`, `name`) VALUES
(1, '2 GB'),
(2, '3 GB'),
(3, '4 GB'),
(4, '6 GB'),
(5, '8 GB'),
(6, '12 GB'),
(15, '10 GB'),
(16, '1 GB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ramproduct`
--

CREATE TABLE `ramproduct` (
  `idram` int(11) NOT NULL,
  `idproduct` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ramproduct`
--

INSERT INTO `ramproduct` (`idram`, `idproduct`) VALUES
(1, 6),
(1, 7),
(2, 3),
(2, 4),
(2, 5),
(2, 15),
(2, 56),
(2, 58),
(2, 59),
(3, 2),
(3, 16),
(3, 21),
(3, 22),
(3, 24),
(3, 25),
(3, 53),
(3, 55),
(3, 57),
(4, 9),
(4, 13),
(4, 14),
(4, 17),
(4, 18),
(4, 20),
(5, 10),
(5, 11),
(5, 12),
(5, 19),
(5, 23),
(5, 54),
(5, 60),
(6, 8),
(15, 74),
(16, 76);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rom`
--

CREATE TABLE `rom` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rom`
--

INSERT INTO `rom` (`id`, `name`) VALUES
(1, '32 GB'),
(2, '64 GB'),
(3, '128 GB'),
(4, '256 GB'),
(5, '512 GB'),
(14, '16 GB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `romproduct`
--

CREATE TABLE `romproduct` (
  `idrom` int(11) NOT NULL,
  `idproduct` int(10) UNSIGNED NOT NULL,
  `price` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `romproduct`
--

INSERT INTO `romproduct` (`idrom`, `idproduct`, `price`) VALUES
(1, 6, 17500000),
(1, 7, 9000000),
(1, 15, 4900000),
(1, 56, 5000000),
(1, 74, NULL),
(2, 2, 35000000),
(2, 3, 22000000),
(2, 5, 18000000),
(2, 16, 5500000),
(2, 18, 10000000),
(2, 20, 3900000),
(2, 22, 5900000),
(2, 55, 5500000),
(2, 58, 18000000),
(3, 4, 19000000),
(3, 9, 21000000),
(3, 11, 24000000),
(3, 12, 8000000),
(3, 13, 7500000),
(3, 14, 6500000),
(3, 19, 8000000),
(3, 21, 6900000),
(3, 24, 5000000),
(3, 25, 4900000),
(4, 8, 24000000),
(4, 10, 23000000),
(4, 17, 16000000),
(4, 23, 19900000),
(4, 53, 39000000),
(4, 59, 18000000),
(5, 54, 29000000),
(5, 57, 45000000),
(5, 60, 25000000),
(14, 76, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `screen`
--

CREATE TABLE `screen` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `screen`
--

INSERT INTO `screen` (`id`, `name`, `info`) VALUES
(1, 'OLED, 6.5\", Super Retina XDR', ''),
(2, 'OLED, 5.8\", Super Retina', ''),
(3, 'IPS LCD, 6.1\", Liquid Retina', ''),
(4, 'LED-backlit IPS LCD, 5.5\", Retina HD', ''),
(5, 'LED-backlit IPS LCD, 4.7\", Retina HD', ''),
(6, 'Dynamic AMOLED, 6.8\", Quad HD+ (2K+)', ''),
(7, 'Super AMOLED, 6.4\", Quad HD+ (2K+)', ''),
(8, 'Dynamic AMOLED, 6.3\", Full HD+', ''),
(9, 'Dynamic AMOLED, 6.4\", Quad HD+ (2K+)', ''),
(10, 'Super AMOLED, 6.7\", Full HD+', ''),
(11, 'Super AMOLED, 6.4\", Full HD+', ''),
(12, 'Super AMOLED, 6.4\", HD+', ''),
(13, 'AMOLED, 6.4\", Full HD+', ''),
(14, 'LTPS LCD, 6.5\", Full HD+', ''),
(15, 'TFT, 6.5\", HD+', ''),
(16, 'AMOLED, 6.5\", Full HD+', ''),
(17, 'IPS LCD, 6.2\", HD+', ''),
(18, 'OLED, 6.47\", Full HD+', ''),
(19, 'LTPS LCD, 6.59\", Full HD+', ''),
(20, 'LTPS LCD, 6.3\", Full HD+', ''),
(21, 'TEST', NULL),
(22, 'Phước', NULL),
(23, 'IPS LCD, 6.0\", HD+', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `star`
--

CREATE TABLE `star` (
  `id` int(11) NOT NULL,
  `start` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `starproduct`
--

CREATE TABLE `starproduct` (
  `idstar` int(11) NOT NULL,
  `idproduct` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ruler` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `logintype` int(11) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `email`, `email_verified_at`, `password`, `usertype`, `social_id`, `avatar`, `ruler`, `status`, `logintype`, `deleted`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'phuoc', 'Vũng Tàu', 'phuoc@gmail.com', NULL, '$2y$10$rigiHWYQ/Cn2pltJAljA5e5oPPQ7VU8ciZXShS1h4wvYAFaceA3cO', 2, '', '', '0', 0, 0, 0, NULL, NULL, NULL),
(2, 'giang', 'Vũng Tàu', 'giang@gmail.com', NULL, '$2y$10$11Q5gKk41ThiYn25W0Ep4eAR.AQFxpLoFDbsPUmV1cDzRoh8E0BPa', 1, '', '', '0', 0, 0, 0, NULL, NULL, NULL),
(3, 'hang', 'Cà Mau', 'hang@gmail.com', NULL, '$2y$10$.qi63i1meA5VNwdvoOy5MeHVzH9HKd5Smcufot.BQRHDoR0hnmzg.', 1, '', '', '0', 0, 0, 0, NULL, NULL, NULL),
(5, 'tuan', NULL, 'tuan@gmail.com', NULL, '$2y$10$rfJbDBdsIqEknfrG6F9/1e3bB.FqFGVmx3vgxFB3HOMphX5cAziwG', 1, NULL, NULL, '0', 0, 0, 0, NULL, '2019-10-16 11:07:03', '2019-10-16 11:07:03'),
(11, 'quynh', NULL, 'quynh@gmail.com', NULL, '$2y$10$vSGSUOBEz65j2NtPPECJKuvFbDbhidGSI/bthiIwrrsDUnXYrcDge', 1, NULL, NULL, '0', 0, 0, 0, NULL, '2019-10-17 11:29:07', '2019-10-17 11:29:07'),
(13, 'my', NULL, 'my@gmail.com', NULL, '$2y$10$g114sbbMNyFnU65P6rGez.D.yYzbiOqEZwh4tLbkuVMsHLMeDUvE.', 1, NULL, NULL, '0', 0, 0, 1, NULL, '2019-10-23 02:20:28', '2019-10-23 02:20:28'),
(14, 'Khách hàng chưa có tài khoản', NULL, NULL, NULL, '', 1, NULL, NULL, '0', 0, 2, 0, NULL, NULL, NULL),
(15, 'Khách hàng đăng nhập bằng mạng xã hội', NULL, NULL, NULL, '', 1, NULL, NULL, '0', 0, 1, 0, NULL, NULL, NULL),
(16, 'nhuquynh', NULL, 'nhuquynh@gmail.com', NULL, '$2y$10$Vcn45JKIgm5q0jQoZIoDTOt2BWdPOEOI5p6pQB6SZ2GOzulQAWxpK', 1, NULL, NULL, '0', 0, 0, 1, NULL, NULL, NULL),
(17, 'aaa', NULL, 'aaa@gmail.com', NULL, '$2y$10$W6NhS04vcPP0dGmE0LvDQuPCNNWnjJ8JklYMNk.SFcpRzHEA9Huzm', 1, NULL, NULL, '0', 0, 0, 1, NULL, NULL, NULL),
(18, 'qqq', NULL, 'qqq@gmail.com', NULL, '$2y$10$35EKQewRPzGnKRC9HLHRsefBMbhSChskwSzFNzxQPDYzuy7i55UVa', 1, NULL, NULL, '0', 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `usertype`
--

CREATE TABLE `usertype` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `usertype`
--

INSERT INTO `usertype` (`id`, `name`) VALUES
(1, 'User'),
(2, 'Admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colorproduct`
--
ALTER TABLE `colorproduct`
  ADD PRIMARY KEY (`idcolor`,`idproduct`),
  ADD KEY `idproduct` (`idproduct`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `operatingsystem`
--
ALTER TABLE `operatingsystem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `color` (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `pricerange`
--
ALTER TABLE `pricerange`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producttype` (`producttype`),
  ADD KEY `producer` (`producer`),
  ADD KEY `screen` (`screen`),
  ADD KEY `pin` (`pin`),
  ADD KEY `operatingsystem` (`operatingsystem`);

--
-- Chỉ mục cho bảng `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ramproduct`
--
ALTER TABLE `ramproduct`
  ADD PRIMARY KEY (`idram`,`idproduct`),
  ADD KEY `idproduct` (`idproduct`);

--
-- Chỉ mục cho bảng `rom`
--
ALTER TABLE `rom`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `romproduct`
--
ALTER TABLE `romproduct`
  ADD PRIMARY KEY (`idrom`,`idproduct`),
  ADD KEY `idproduct` (`idproduct`);

--
-- Chỉ mục cho bảng `screen`
--
ALTER TABLE `screen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `star`
--
ALTER TABLE `star`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `starproduct`
--
ALTER TABLE `starproduct`
  ADD PRIMARY KEY (`idstar`,`idproduct`),
  ADD KEY `idproduct` (`idproduct`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertype` (`usertype`);

--
-- Chỉ mục cho bảng `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `operatingsystem`
--
ALTER TABLE `operatingsystem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `pricerange`
--
ALTER TABLE `pricerange`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `producer`
--
ALTER TABLE `producer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `producttype`
--
ALTER TABLE `producttype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `ram`
--
ALTER TABLE `ram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `rom`
--
ALTER TABLE `rom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `screen`
--
ALTER TABLE `screen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `star`
--
ALTER TABLE `star`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `colorproduct`
--
ALTER TABLE `colorproduct`
  ADD CONSTRAINT `colorproduct_ibfk_1` FOREIGN KEY (`idcolor`) REFERENCES `color` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `colorproduct_ibfk_2` FOREIGN KEY (`idproduct`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`orderid`) REFERENCES `order` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`producttype`) REFERENCES `producttype` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `producer` (`id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`screen`) REFERENCES `screen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_5` FOREIGN KEY (`operatingsystem`) REFERENCES `operatingsystem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ramproduct`
--
ALTER TABLE `ramproduct`
  ADD CONSTRAINT `ramproduct_ibfk_1` FOREIGN KEY (`idram`) REFERENCES `ram` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ramproduct_ibfk_2` FOREIGN KEY (`idproduct`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `romproduct`
--
ALTER TABLE `romproduct`
  ADD CONSTRAINT `romproduct_ibfk_1` FOREIGN KEY (`idrom`) REFERENCES `rom` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `romproduct_ibfk_2` FOREIGN KEY (`idproduct`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `starproduct`
--
ALTER TABLE `starproduct`
  ADD CONSTRAINT `starproduct_ibfk_1` FOREIGN KEY (`idstar`) REFERENCES `star` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `starproduct_ibfk_2` FOREIGN KEY (`idproduct`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_5` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
