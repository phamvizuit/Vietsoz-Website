-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2021 at 03:42 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vietsoz`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_cats`
--

CREATE TABLE `tb_cats` (
  `cat_id` int(10) NOT NULL,
  `cat_title` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_cats`
--

INSERT INTO `tb_cats` (`cat_id`, `cat_title`) VALUES
(1, 'T-Shirt'),
(2, 'Croptop'),
(3, 'Polo');

-- --------------------------------------------------------

--
-- Table structure for table `tb_comments`
--

CREATE TABLE `tb_comments` (
  `cmt_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `cmt_content` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_id` int(10) NOT NULL,
  `time` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_comments`
--

INSERT INTO `tb_comments` (`cmt_id`, `user_id`, `cmt_content`, `product_id`, `time`) VALUES
(7, 1, 'abcd', 1, 'December 7, 2021, 10:01 am'),
(8, 1, 'hihi', 1, 'December 7, 2021, 10:03 am');

-- --------------------------------------------------------

--
-- Table structure for table `tb_products`
--

CREATE TABLE `tb_products` (
  `product_id` int(10) NOT NULL,
  `product_title` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_thumb` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_code` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cat_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_products`
--

INSERT INTO `tb_products` (`product_id`, `product_title`, `product_thumb`, `product_code`, `product_desc`, `product_content`, `cat_id`) VALUES
(1, 'T-Shirt 001', 'public/images/Layer 1.png', 'TS001', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 1),
(2, 'T-Shirt 002', 'public/images/Layer 2.png', 'TS002', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 1),
(3, 'T-Shirt 003', 'public/images/Layer 3.png', 'TS003', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 1),
(4, 'T-Shirt 004', 'public/images/shirt1.png', 'TS004', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 1),
(5, 'T-Shirt 005', 'public/images/shirt2.png', 'TS005', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 1),
(6, 'T-Shirt 006', 'public/images/shirt3.png', 'TS006', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 1),
(7, 'Croptop 001', 'public/images/shirt1.png', 'CT001', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 2),
(8, 'Croptop 002', 'public/images/shirt2.png', 'CT002', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 2),
(9, 'Croptop 003', 'public/images/shirt3.png', 'CT003', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 2),
(10, 'Croptop 004', 'public/images/Layer 1.png', 'CT004', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 2),
(11, 'Croptop 005', 'public/images/Layer 2.png', 'CT005', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 2),
(12, 'Croptop 006', 'public/images/Layer 3.png', 'CT005', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 2),
(13, 'POLO 001', 'public/images/Layer 1.png', 'PL001', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 3),
(14, 'POLO 002', 'public/images/shirt1.png', 'PL002', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 3),
(15, 'POLO 003', 'public/images/Layer 2.png', 'PL003', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 3),
(16, 'POLO 004', 'public/images/Layer 3.png', 'PL004', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 3);
INSERT INTO `tb_products` (`product_id`, `product_title`, `product_thumb`, `product_code`, `product_desc`, `product_content`, `cat_id`) VALUES
(17, 'POLO 005', 'public/images/shirt3.png', 'PL005', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 3),
(18, 'POLO 006', 'public/images/shirt2.png', 'PL006', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những ...', '\r\n                                <p class=\"title\">Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào\r\n                                    việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như\r\n                                    một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ\r\n                                    vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản.\r\n                                </p>\r\n                                <div class=\"\">\r\n                                    <div class=\"box-img\">\r\n                                        <a href=\"\">\r\n                                            <img class=\"layer-img\" src=\"public/images/layer2.png\" alt=\"\">\r\n                                        </a>\r\n                                    </div>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay\r\n                                        đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy\r\n                                        Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các\r\n                                        ứng dụng dàn trang, như Aldus PageMaker.</p>\r\n                                    <p class=\"excerpt\">Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi\r\n                                        được áp dụng vào\r\n                                        tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ\r\n                                        biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn\r\n                                        Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như\r\n                                        Aldus PageMaker.</p>\r\n                                </div>', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_attr`
--

CREATE TABLE `tb_product_attr` (
  `product_sku` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `old_price` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `product_size` enum('S','M','L','XL','XXL') COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_product_attr`
--

INSERT INTO `tb_product_attr` (`product_sku`, `product_id`, `price`, `old_price`, `qty`, `product_size`) VALUES
(1, 1, 390000, 999000, 20, 'S'),
(3, 1, 490000, 899000, 20, 'M'),
(4, 1, 590000, 799000, 20, 'L'),
(5, 1, 680000, 699000, 20, 'XL'),
(6, 1, 998000, 999000, 20, 'XXL'),
(7, 2, 390000, 999000, 20, 'S'),
(8, 2, 490000, 899000, 20, 'M'),
(9, 2, 590000, 799000, 20, 'L'),
(10, 2, 680000, 699000, 20, 'XL'),
(11, 2, 998000, 999000, 20, 'XXL'),
(12, 3, 390000, 999000, 20, 'S'),
(13, 3, 490000, 899000, 20, 'M'),
(14, 3, 590000, 799000, 20, 'L'),
(15, 3, 680000, 699000, 20, 'XL'),
(16, 3, 998000, 999000, 20, 'XXL'),
(17, 4, 390000, 999000, 20, 'S'),
(18, 4, 490000, 899000, 20, 'M'),
(19, 4, 590000, 799000, 20, 'L'),
(20, 4, 680000, 699000, 20, 'XL'),
(21, 4, 998000, 999000, 20, 'XXL'),
(22, 5, 390000, 999000, 20, 'S'),
(23, 5, 490000, 899000, 20, 'M'),
(24, 5, 590000, 799000, 20, 'L'),
(25, 5, 680000, 699000, 20, 'XL'),
(26, 5, 998000, 999000, 20, 'XXL'),
(27, 6, 390000, 999000, 20, 'S'),
(28, 6, 490000, 899000, 20, 'M'),
(29, 6, 590000, 799000, 20, 'L'),
(30, 6, 680000, 699000, 20, 'XL'),
(31, 6, 998000, 999000, 20, 'XXL'),
(32, 7, 390000, 999000, 20, 'S'),
(33, 7, 490000, 899000, 20, 'M'),
(34, 7, 590000, 799000, 20, 'L'),
(35, 7, 680000, 699000, 20, 'XL'),
(36, 7, 998000, 999000, 20, 'XXL'),
(37, 8, 390000, 999000, 20, 'S'),
(38, 8, 490000, 899000, 20, 'M'),
(39, 8, 590000, 799000, 20, 'L'),
(40, 8, 680000, 699000, 20, 'XL'),
(41, 8, 998000, 999000, 20, 'XXL'),
(42, 9, 390000, 999000, 20, 'S'),
(43, 9, 490000, 899000, 20, 'M'),
(44, 9, 590000, 799000, 20, 'L'),
(45, 9, 680000, 699000, 20, 'XL'),
(46, 9, 998000, 999000, 20, 'XXL'),
(47, 10, 390000, 999000, 20, 'S'),
(48, 10, 490000, 899000, 20, 'M'),
(49, 10, 590000, 799000, 20, 'L'),
(50, 10, 680000, 699000, 20, 'XL'),
(51, 10, 998000, 999000, 20, 'XXL'),
(52, 11, 390000, 999000, 20, 'S'),
(53, 11, 490000, 899000, 20, 'M'),
(54, 11, 590000, 799000, 20, 'L'),
(55, 11, 680000, 699000, 20, 'XL'),
(56, 11, 998000, 999000, 20, 'XXL'),
(57, 12, 390000, 999000, 20, 'S'),
(58, 12, 490000, 899000, 20, 'M'),
(59, 12, 590000, 799000, 20, 'L'),
(60, 12, 680000, 699000, 20, 'XL'),
(61, 12, 998000, 999000, 20, 'XXL'),
(62, 13, 390000, 999000, 20, 'S'),
(63, 13, 490000, 899000, 20, 'M'),
(64, 13, 590000, 799000, 20, 'L'),
(65, 13, 680000, 699000, 20, 'XL'),
(66, 13, 998000, 999000, 20, 'XXL'),
(67, 14, 390000, 999000, 20, 'S'),
(68, 14, 490000, 899000, 20, 'M'),
(69, 14, 590000, 799000, 20, 'L'),
(70, 14, 680000, 699000, 20, 'XL'),
(71, 14, 998000, 999000, 20, 'XXL'),
(72, 15, 390000, 999000, 20, 'S'),
(73, 15, 490000, 899000, 20, 'M'),
(74, 15, 590000, 799000, 20, 'L'),
(75, 15, 680000, 699000, 20, 'XL'),
(76, 15, 998000, 999000, 20, 'XXL'),
(77, 16, 390000, 999000, 20, 'S'),
(78, 16, 490000, 899000, 20, 'M'),
(79, 16, 590000, 799000, 20, 'L'),
(80, 16, 680000, 699000, 20, 'XL'),
(81, 16, 998000, 999000, 20, 'XXL'),
(82, 17, 390000, 999000, 20, 'S'),
(83, 17, 490000, 899000, 20, 'M'),
(84, 17, 590000, 799000, 20, 'L'),
(85, 17, 680000, 699000, 20, 'XL'),
(86, 17, 998000, 999000, 20, 'XXL'),
(87, 18, 390000, 999000, 20, 'S'),
(88, 18, 490000, 899000, 20, 'M'),
(89, 18, 590000, 799000, 20, 'L'),
(90, 18, 680000, 699000, 20, 'XL'),
(91, 18, 998000, 999000, 20, 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `user_id` int(10) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `username` varchar(40) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`user_id`, `fullname`, `username`, `password`, `gender`, `email`, `avatar`) VALUES
(1, 'Võ Huỳnh Hải Đăng', 'dang2001', '1578951d1f48f2c052b48c115cd8ed8e', 'male', 'vohuynhhaidang24032001@gmail.com', 'public/images/fate - Copy (2).jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_cats`
--
ALTER TABLE `tb_cats`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tb_comments`
--
ALTER TABLE `tb_comments`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tb_products`
--
ALTER TABLE `tb_products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `tb_product_attr`
--
ALTER TABLE `tb_product_attr`
  ADD PRIMARY KEY (`product_sku`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_cats`
--
ALTER TABLE `tb_cats`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_comments`
--
ALTER TABLE `tb_comments`
  MODIFY `cmt_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_products`
--
ALTER TABLE `tb_products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_product_attr`
--
ALTER TABLE `tb_product_attr`
  MODIFY `product_sku` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_comments`
--
ALTER TABLE `tb_comments`
  ADD CONSTRAINT `tb_comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tb_users` (`user_id`),
  ADD CONSTRAINT `tb_comments_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tb_products` (`product_id`);

--
-- Constraints for table `tb_products`
--
ALTER TABLE `tb_products`
  ADD CONSTRAINT `tb_products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `tb_cats` (`cat_id`);

--
-- Constraints for table `tb_product_attr`
--
ALTER TABLE `tb_product_attr`
  ADD CONSTRAINT `tb_product_attr_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tb_products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
