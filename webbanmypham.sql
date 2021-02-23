-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2020 at 07:04 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbanmypham`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'luc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Phan Trọng Lực');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `baiviet_id` int(11) NOT NULL,
  `tenbaiviet` varchar(100) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `danhmuctin_id` int(11) NOT NULL,
  `baiviet_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `danhmuctin_id`, `baiviet_image`) VALUES
(1, ' Dự báo biến động thị trường mỹ phẩm Việt Nam năm 2020', 'Thị trường mỹ phẩm Việt Nam: Dự báo biến động năm 2020 do sự xuất hiện của nhiều ông lớn?', 'Theo dữ liệu từ Mintel – công ty nghiên cứu thị trường toàn cầu có trụ sở tại London, thị trường mỹ phẩm của Việt Nam đang có trị giá khoảng 2,3 tỷ USD. Dự kiến trong 10 năm tới, tốc độ tăng trưởng của thị trường mỹ phẩm dưỡng da và trang điểm của Việt Nam vào khoảng 15 – 20%/năm. Chính vì điều đó mà thị trường này đã nhanh chóng lọt vào mắt xanh của hàng loạt các ông lớn trong ngành bán lẻ.\r\n\r\nNăm 2019, thị trường mỹ phẩm Việt Nam chính thức được đánh dấu bởi sự xuất hiện của nhiều ông lớn trong ngành bán lẻ.\r\n\r\nNhiều phân tích cho rằng năm 2020, chúng ta sẽ chứng kiến một cuộc cạnh tranh đầy khốc liệt tại tại trường này, hứa hẹn sẽ có sự sắp xếp lại và thay đổi hành vi mua sắm của người tiêu dùng. ', 1, 'tinmypham1.jpg'),
(2, 'Thị trường mỹ phẩm Việt Nam đang vươn xa từng ngày', 'Chăm sóc da và trang điểm đã trở thành thói quen trong lối sống đối với đa số chị em phụ nữ châu Á.', 'Cuộc sống tấp nập, nhiều áp lực công việc cũng như ô nhiễm mỗi trường làm nhiều chị em ngày càng quan tâm đến việc chăm sóc da. Đây là tiềm năng giúp thị trường mỹ phẩm tại Việt Nam phát triển như vũ bão, mỹ phẩm Hàn Quốc được nhiều người tiêu dùng tại Việt Nam tin dùng với những dòng sản phẩm chăm sóc da cũng như trang điểm phù hợp với nhiều lứa tuổi.\r\nNgoài các hãng mỹ phẩm Hàn Quốc nổi tiếng thì các dòng sản phẩm mỹ phẩm châu Âu giúp làn da của chị em phụ nữ sáng bóng và các vấn đề về da cũng đang dần dần được ưa chuộng tại thị trường Việt Nam. Thị trường mỹ phẩm Việt Nam đang càng lúc càng trở thành miếng bánh béo bở thu hút được nhiều nhà đầu tư, nhiều thương hiệu lớn thâm nhập và tìm đối tác, đại diện phân phối độc quyền. ', 1, 'tinmypham2.jpg'),
(4, 'Cần tiêu chuẩn để ngành làm đẹp phát triển hậu COVID-19 By Anh Nguyet -April 28, 2020233 0', 'Thị trường ngành làm đẹp bát nháo vì chưa có tiêu chuẩn cụ thể và người chịu thiệt là khách hàng. Vì thế, sau đại dịch COVID-19 cần có tiêu chuẩn cụ thể giúp doanh nghiệp phát triển lành mạnh.', 'Thời gian qua, dịch COVID-19 đã gây ra những thiệt hại khủng khiếp cả về người và tài sản. Theo thống kê, trên thế giới đã có gần 3 triệu người người mắc COVID-19, trong đó 203.000 người tử vong và chưa có dấu hiệu dừng lại. Chính phủ các nước đã phải đóng cửa biên giới, tung ra các gói cứu trợ lên đến hàng trăm tỷ USD để hỗ trợ doanh nghiệp và người lao động.\r\n\r\nTại Việt Nam, đến nay đã ghi nhận 270 người mắc, nhưng chưa có trường hợp tử vong. Dù tạm thời chưa có thiệt hại về nhân mạng song ảnh hưởng đối với nền kinh tế thì ai cũng thấy rõ và không ngành, lĩnh vực nào không bị ảnh hưởng trong đó có lĩnh vực thẩm mỹ, làm đẹp. Để doanh nghiệp ngành này có thể vượt qua bão và phục hồi, lấy lại đà tăng trưởng sau dịch góp phần phát triển trong nền kinh tế nói chung thì ngay từ bây giờ cần những giải pháp cụ thể.\r\nĐối với ngành thời trang và làm đẹp, kể cả sau đại dịch COVID-19 vẫn sẽ điêu đứng và chật vật. Vì thời điểm này, mọi người sẽ chú trọng nhiều đến những nhu cầu tiêu dùng cơ bản và thiết yếu. Ngoài ra, việc thắt chặt chi tiêu, ở nhà tránh dịch cũng khiến nhu cầu chưng diện và làm đẹp giảm đáng kể. Do đó, chắc chắn thị trường làm đẹp sẽ bị co nhỏ lại trong ngắn hạn vì nó là nhu cầu không thiết yếu. Trong khi đó, thời trang, làm đẹp dù không phải là ngành thiết yếu nhưng đây lại là một bộ phận không thể thiếu của nền kinh tế. Thậm chí, có thể nói rằng ngành này mang đến một nguồn thu rất lớn cho nền kinh tế nói chung.\r\n\r\n \r\n\r\n', 1, 'tinmypham3.jpg'),
(5, '3 Xu hướng trang điểm thịnh hành nhất năm 2020', 'Xu hướng makeup full-face của phương Tây đã qua! Các tín đồ làm đẹp ở Phương Tây đang dần quay trở lại với phong cách trang điểm tự nhiên, tối giản và cổ điển. Dường như phong cách trang điểm của phương Tây và Hàn Quốc đã dần có những điểm chung nhất định.', 'Xu hướng makeup full-face của phương Tây đã qua! Các tín đồ làm đẹp ở Phương Tây đang dần quay trở lại với phong cách trang điểm tự nhiên, tối giản và cổ điển. Dường như phong cách trang điểm của phương Tây và Hàn Quốc đã dần có những điểm chung nhất định. Cùng Beautycare Expo điểm qua xu hướng nào đang được các chị em Châu u và Hàn Quốc “bồ kết” trong năm nay nhé!', 2, 'tinlamdep1.jpg'),
(6, 'Xu hướng trang điểm mắt đang “làm mưa làm gió” trên Instagram', 'Mùa Hè là mùa của sự năng động, sáng tạo và những ý tưởng bùng nổ. Cùng khám phá những xu hướng trang điểm mắt đang chiếm sóng trên khắp Instgram. Hy vọng các ý tưởng dưới đây sẽ giúp bạn có một mùa Hè thật sôi động.', 'BẬT TÔNG CÙNG MÀU NEON\r\nXu hướng được các cô gái theo đuổi nhiều nhất hiện nay chính là kiểu trang điểm bắt tông với màu neon. Đây là kiểu vẽ mắt đơn giản, không quá cầu kỳ. Không chú trọng “từng li từng tí” như kẻ eyeliner, dán mí hay thậm chí sử dùng phấn mắt. Thay vào đó, bạn chỉ đơn thuần kẻ viền mắt với màu neon.\r\n\r\nĐiểm đặc biệt của xu hướng này là các nàng sẽ không vẽ ôm sát viền mắt như cách làm thông thường. Đường kẻ được vẽ đậm hơn ở phần trên và kéo dài đuôi mắt về phía thái dương. Đừng quên trang điểm cả phần khoé mắt cũng như mí dưới nữa nhé! Tổng thể khuôn mặt tuy giản đơn nhưng chắc chắn vẫn đảm bảo được sự độc lạ cho các nàng.\r\n\r\n ', 2, 'tinlamdep2.jpg'),
(7, 'Thiết bị làm đẹp cá nhân là mảng hấp dẫn nhưng vẫn đầy thách thức', 'Trong bối cảnh công nghệ vạn vật kết nối Internet trở nên phổ biến hơn, rất có thể thiết bị làm đẹp thông minh sẽ rẻ hơn và các liệu trình làm đẹp nhờ công nghệ sẽ trở thành một tính năng phổ biến trong những ngôi nhà thông minh.', 'Mặc dù các thiết bị làm đẹp cho phép tăng tính cá nhân hóa cho người tiêu dùng và tạo cơ hội thu thập dữ liệu cho các thương hiệu, các công ty sẽ cần phải giải quyết một số vấn đề trước khi người dân chấp nhận chúng một cách rộng rãi.\r\n\r\nVí dụ, do các thiết bị này có thể bổ sung thêm các bước cho người dùng thói quen chăm sóc cá nhân, các công ty có thể gặp thách thức lớn để đảm bảo tính nhất quán khi sử dụng. Những người tiêu dùng chú trọng chăm sóc da có xu hướng tích hợp các thiết bị vào liệu trình của họ hơn so với người dùng thông thường.\r\nClarisonic đã vượt qua trở ngại này bằng cách tung ra một chương trình ưu đãi khách hàng thân thiết, cho phép họ tiếp cận sớm với các đợt giảm giá và khuyến mãi, dịch vụ hướng dẫn riêng cho các khách hàng VIP để cá nhân hóa liệu trình làm đẹp của họ.\r\n\r\nNhững ưu đãi ấy không chỉ giúp khách hàng hiểu rõ về cách sử dụng thiết bị một cách đầy đủ nhất, mà còn tăng doanh số.Khả năng chi trả cũng là một câu hỏi lớn, vì hầu hết thiết bị làm đẹp thông minh đang được định vị là sản phẩm cao cấp. Ví dụ, giá thiết bị của Foreo dao động từ khoảng 50 USD đến dưới 300 USD, còn các sản phẩm xa xỉ hơn có giá từ 6.500 đến 8.800 USD.\r\n\r\nSự tăng đột biến về số lượng ứng dụng di động, máy quét da và gương thông minh cũng đặt ra câu hỏi: Liệu người tiêu dùng sẽ thực sự hưởng lợi từ công nghệ làm đẹp nhiều hơn không. Với việc áp dụng nhiều hơn, các công ty công nghệ làm đẹp phải xem xét liệu hệ thống tích hợp có thể ảnh hưởng xấu đến người tiêu dùng cuối cùng của họ hay không.\r\n\r\n ', 2, 'tinlamdep3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Nước hoa'),
(2, 'Son môi'),
(3, 'Kem dưỡng da'),
(28, 'Dược mỹ phẩm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chitiethoadon`
--

CREATE TABLE `tbl_chitiethoadon` (
  `hoadon_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_chitiethoadon`
--

INSERT INTO `tbl_chitiethoadon` (`hoadon_id`, `sanpham_id`, `soluong`, `tinhtrangdon`) VALUES
(16, 27, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc_tin`
--

CREATE TABLE `tbl_danhmuc_tin` (
  `danhmuctin_id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_danhmuc_tin`
--

INSERT INTO `tbl_danhmuc_tin` (`danhmuctin_id`, `tendanhmuc`) VALUES
(1, 'Thị trường mỹ phẩm'),
(2, 'Làm đẹp mỗi ngày\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hoadon`
--

CREATE TABLE `tbl_hoadon` (
  `hoadon_id` int(11) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaydathang` timestamp NOT NULL DEFAULT current_timestamp(),
  `ngaygiaohang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `taikhoan_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `hinhthucthanhtoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `thuonghieu` varchar(100) NOT NULL,
  `xuatxu` varchar(100) NOT NULL,
  `ngay_sx` date NOT NULL,
  `hansudung` date NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sanpham_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_gia`, `sanpham_giakhuyenmai`, `thuonghieu`, `xuatxu`, `ngay_sx`, `hansudung`, `sanpham_soluong`, `sanpham_image`) VALUES
(20, 1, 'Nước Hoa Nam Charme Ruby Sport (50ml)', 'Khả năng lưu hương từ 7-12 tiếng\r\nXuất xứ tinh dầu: Pháp\r\nPhong cách: Khỏe mạnh, quyến rũ, tươi mát ', '344000', '226000', 'Charme', 'Việt Nam', '2020-01-10', '2022-01-10', 1, 'nuochoamen.jpg'),
(21, 1, 'Nước Hoa Nữ Charme Omnia Crystal (30ml)', 'Hương đầu: Quả Cam, Quýt Clementine, Quả xoài\r\nHương giữa: Hoa vòi voi, Hoa nhài, Hoa hồng, Lá hoa tím\r\nHương cuối: Cây Hoắc hương, Đậu Tonka, Hương vani\r\nPhong cách: Tự nhiên, tinh tế ', '330000', '280000', 'Charme', 'Việt Nam', '2020-05-12', '2022-05-12', 6, 'nuochoanu.jpg'),
(25, 3, 'Kem dưỡng trắng da vùng mặt  Eveline (200ml)', 'Hỗn hợp các thành phàn tự nhiên cung cấp độ ẩm tối ưu, cho làn da mềm mịn và tươi sáng.\r\n\r\nChiết xuất dưa leo giàu vitamin C và axit hữu cơ làm sáng các vùng da sạm màu, đồng thời cung cấp đầy đủ các dưỡng chất nuôi dưỡng làn da khỏe mạnh, tràn đầy năng lượng.\r\n\r\nTinh dầu lê nuôi dưỡng và tái tạo làn da non trẻ, mịn màng. D-panthenol và Allantoin có tác dụng làm dịu và kháng viêm, dưỡng ẩm sâu ngăn ngừa kích ứng da. ', '195000', '165000', 'Eveline', '	Ba Lan', '2020-02-09', '2023-02-09', 1, 'kemtrangda.jpg'),
(27, 2, 'Son Dưỡng Môi DHC Lip Cream 1,5g', 'Điều trị thâm môi hiệu quả; làm hồng môi và ngăn ngừa các dấu hiệu lão hóa.\r\nGiảm tình trạng môi thâm, xỉn màu, cho đôi môi ngày càng trở nên hồng hào, quyến rũ.\r\nVitamin E và dầu giúp đẩy lùi các dấu hiệu lão hóa môi (các rãnh nhăn) giúp môi luôn căng mọng.\r\nMôi trở nên bóng cực nhẹ, cực tự nhiên, đầy đặn và căng tràn sức sống.\r\nThành phần tinh chất dầu ô liu, vitamin E giúp cung cấp độ ẩm cần thiết cho môi, giúp môi trở nên mềm mại, mịn màng như chưa bao giờ từng khô và bong tróc.\r\nSon dưỡng môi DHC tạo nên lớp nền hoàn hảo trước khi thoa son màu và nằm trong TOP SON DƯỠNG BÁN CHẠY NHẤT tại Nhật Bản. ', '320000', '270000', 'DHC', 'Nhật Bản', '2020-03-10', '2022-03-10', 10, 'sonmoi.jpg'),
(28, 3, ' Kem chống nắng  Anessa Gold Milk 60ml + 20ml', 'Chống trôi trong nước & mồ hôi mạnh mẽ hơn với công nghệ độc quyền Aqua Booster EX\r\nCông nghệ \"chống ma sát\" độc đáo\r\n50% thành phần dưỡng da mịn mượt, kiểm soát bóng dầu\r\nNgăn chặn tác hại của tia UV trên mọi bề mặt da và mọi góc độ\r\nChống oxi hóa - ngăn chặn lão hóa sớm do tia UV\r\nChống cát dính vào da\r\nDễ dàng làm sạch với sữa rửa mặt ', '960000', '619000', 'ANESSA', 'Nhật Bản', '2020-07-02', '2023-12-12', 1, 'kemchongnang.jpg'),
(29, 3, 'Kem đêm xóa mờ thâm nám SENNIO', 'Kem đêm trị nám trắng da Sennio với khả năng tác động sâu vào cấu trúc da,\r\nức chế và loại bỏ sắc tố melanin_nguyên nhân chính gây sạm nám – tàn nhang,\r\nsự kết hợp của thảo dược thiên nhiên hoa hồi, hạnh nhân, hoàng cầm, nọc ong mật… cùng Kojic Acid theo phương pháp lên men tự nhiên với hiệu quả dưỡng trắng da đặc biệt giúp xóa mờ vết sạm nám trên bề mặt, ngăn ngừa lão hóa và tăng cường sức đề kháng cho làn da mềm mịn, đều màu, trắng sáng không tì vết. ', '850000', '798000', 'Sennio', 'Hàn Quốc', '2020-07-01', '2023-07-01', 1, 'kemxoatham.jpg'),
(30, 2, 'Son Dưỡng Môi Innisfree Canola Honey Lip Balm 3.5G ', 'Chiết xuất mật ong giúp dưỡng ẩm sâu\r\nTinh dầu hạt canola giàu axit béo tạo thành lớp lá chắn giàu độ ẩm trên da\r\nSử dụng thường xuyên giúp đôi môi trở nên hồng hào, giảm bớt sắc tố sạm thâm. ', '200000', '196000', 'Innisfree', 'Hàn Quốc', '2020-04-30', '2022-10-30', 1, 'sonduongmoi.jpg'),
(31, 2, 'Son Dưỡng Ẩm Môi Hương Cherry Shine Nivea (4.8g)', 'Dưỡng môi mềm mượt\r\nMang đến sắc hồng tươi tắn\r\nKhông chứa chì, an toàn môi\r\nBao bì sản phẩm thay đổi theo từng đợt nhập hàng ', '99000', '61000', 'Nivea', 'Hàn Quốc', '2020-05-13', '2023-05-13', 1, 'sonduongam.jpg'),
(32, 1, 'Nước Hoa Nữ Charme By Charme (50ml)', 'Hương đầu: Quýt, cam bergamot\r\nHương giữa: Hoa Ylang – Ylang, Casablance lily, hoa cam\r\nHương cuối: Gỗ dàn hương, vani tahitian, hổ phách\r\nPhong cách: Mạnh mẽ, sang trọng ', '345000', '235000', 'Charme', 'Việt Nam', '2020-06-12', '2023-06-12', 1, 'nuochoagirl.jpg'),
(33, 28, 'Gel Tẩy Trang Cấp Ẩm Curel Intensive Moisture   (130g)', 'Làm sạch hoàn toàn lớp trang điểm\r\nDuy trì Ceramide tự nhiên\r\nDạng Gel mềm, dịu nhẹ\r\nKhông nhờn rít\r\nKhông màu, không mùi, không cồn ', '339000', '288000', 'Curél', 'Nhật Bản', '2020-02-15', '2022-02-15', 1, 'geltaytrang.jpg'),
(34, 28, 'Tinh chất  làm mờ thâm nám Eucerin UltraWHITE (5ml)', 'Làm giảm các đốm nâu ngay từ tuần thứ 2 và ngăn ngừa chúng xuất hiện trở lại\r\nDạng bút chấm với Thiamidol giúp đặc trị từng điểm thâm nám, đốm nâu\r\nGiúp da trở nên đều màu \" \" ', '670000', '570000', 'Eucerin', 'Đức', '2020-05-01', '2021-08-01', 1, 'tinhchat.jpg'),
(35, 28, 'Dầu Dưỡng Da Ngăn Ngừa Lão Hóa Eucerin (30ml)', 'Tinh dầu dưỡng Argan giúp cải thiện độ đàn hồi da từ đó\r\nGiúp làm mờ nếp nhăn và kết hợp với khả năng chống oxy hóa từ Vitamin E\r\nMang lại cho làn da sự mịn màng và tràn đầy sức sống \" \" ', '1590000', '1429000', 'Eucerin', 'Đức', '2020-05-29', '2022-05-29', 1, 'dauduongda.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_active` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_active`) VALUES
(1, 'anhnen.jpg', 1),
(2, 'b3.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_taikhoankh`
--

CREATE TABLE `tbl_taikhoankh` (
  `taikhoan_id` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_taikhoankh`
--

INSERT INTO `tbl_taikhoankh` (`taikhoan_id`, `ten`, `sdt`, `email`, `password`) VALUES
(14, 'Phan Trọng Lực', '0963896758', 'phantrongluc99@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  ADD PRIMARY KEY (`danhmuctin_id`);

--
-- Indexes for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`);

--
-- Indexes for table `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  ADD PRIMARY KEY (`hoadon_id`);

--
-- Indexes for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `tbl_taikhoankh`
--
ALTER TABLE `tbl_taikhoankh`
  ADD PRIMARY KEY (`taikhoan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  MODIFY `danhmuctin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  MODIFY `hoadon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_taikhoankh`
--
ALTER TABLE `tbl_taikhoankh`
  MODIFY `taikhoan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
