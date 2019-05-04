-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2019 at 04:16 PM
-- Server version: 5.5.63-MariaDB
-- PHP Version: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dtj_dtj`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `name`, `title`, `content`, `images`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DTJ HOMETEL', '', '<p><span style=\"color: #666666; font-family: utmavo;\">DTJ Hometel là đơn vị đầu tiên cung cấp Căn hộ Hometel tại Hạ Long – hình thức lưu trú mới xuất hiện tại Việt Nam trong 1 năm trở lại đây. Hometel là sự tích hợp giữa Căn Hộ (Home) và Khách sạn (Hotel) mang lại đầy đủ tiện nghi cho khách hàng như được sống trong căn nhà của mình, đồng thời vẫn được trải nghiệm dịch vụ chất lượng cao như ở Khách sạn mà giá cả cực kỳ hợp lý.</span><br style=\"box-sizing: border-box; color: #666666; font-family: utmavo;\" /><br style=\"box-sizing: border-box; color: #666666; font-family: utmavo;\" /><span style=\"color: #666666; font-family: utmavo;\">Từ tháng 6 năm 2018, DTJ Hometel chính thức đi vào hoạt động với dịch vụ cho thuê căn hộ Green Bay tại khu vực Bãi Cháy Hạ Long. DTJ Hometel độc đáo tọa lạc trên đường bao biển Vịnh Hạ long, giữa Đảo Tuần Châu và Công viên Sun World phong cách thiết kế hiện đại, tiêu chuẩn 3 sao cộng. Với vị trí thuận lợi nằm ở tòa nhà Green Bay Premium - trung tâm quần thể của BIM Group:</span></p>', '[\"abouts\\/April2019\\/tQlS8xks8l591LPkHb1A.JPG\",\"abouts\\/April2019\\/xEk5lryupBe7eZrhuN75.JPG\",\"abouts\\/April2019\\/jusrf8k52bNIOpye3kVd.JPG\",\"abouts\\/April2019\\/mhYZht6s71UIjW9yOfMg.JPG\",\"abouts\\/April2019\\/wKHu0apMico7WWQEMz73.JPG\"]', 1, '2019-04-23 08:47:00', '2019-04-25 06:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `apartments`
--

CREATE TABLE `apartments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tieuchuan` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `chinhsach` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `hometel_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` float DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highlight` tinyint(4) DEFAULT NULL,
  `slider` mediumtext COLLATE utf8mb4_unicode_ci,
  `utilities` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartments`
--

INSERT INTO `apartments` (`id`, `name`, `slug`, `tieuchuan`, `content`, `chinhsach`, `description`, `hometel_id`, `status`, `created_at`, `updated_at`, `price`, `title`, `image`, `highlight`, `slider`, `utilities`) VALUES
(1, '2BR Apartment ', '2br-apartment', '<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight text-center\" style=\"text-align: center;\"><img src=\"/images/icon1.png\" alt=\"\" /> 70 m2</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon2.png\" alt=\"\" /> Sử dụng toàn bộ<br />căn hộ</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon3.png\" alt=\"\" /> Tiêu chuẩn<br />7 người</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon4.png\" alt=\"\" /> 1 giường Queen<br />2 giường single</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon5.png\" alt=\"\" /> View vịnh/ Núi</div>', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<tbody>\n<tr>\n<td style=\"width: 35%;\"><strong>Room Listing</strong>:</td>\n<td>CH-812, CH-1113, CH-12A03, CH-12A11, CH-12B07, CH-2013</td>\n</tr>\n<tr>\n<td style=\"width: 35%;\"><strong>Direction of balcony</strong>:</td>\n<td>Sea view &amp; mountain view</td>\n</tr>\n<tr>\n<td style=\"width: 35%;\"><strong>Amount of people</strong>:</td>\n<td>4 adults &amp; 1 child  (under 12 years old)</td>\n</tr>\n<tr>\n<td><strong>Room type</strong>:</td>\n<td>1 single room &amp; 1 double room</td>\n</tr>\n<tr>\n<td><strong>Bed type</strong>:</td>\n<td>1 Queen bed (1m8<sup> </sup>* 2m) và 2 single bed (1m2<sup> </sup>* 2m)</td>\n</tr>\n<tr>\n<td><strong>Furniture</strong>:</td>\n<td>Tea table, Sopha chair, relaxing chair, refrigerator, wardrobe …</td>\n</tr>\n<tr>\n<td><strong>Bathroom:</strong></td>\n<td>Shower &amp; sink, towel, mirror, towel, hairdryer, bathroom amenities.</td>\n</tr>\n<tr>\n<td><strong>Entertainment</strong>:</td>\n<td>Cable TV, Free Wifi.</td>\n</tr>\n<tr>\n<td><strong>Safety and security items</strong>:</td>\n<td>In room safe, magnetic lock.</td>\n</tr>\n<tr>\n<td><strong>Note</strong>:</td>\n<td>If additional people, add surcharge.</td>\n</tr>\n</tbody>\n</table>', '<div><strong>1. Giá phòng chưa bao gồm:</strong></div>\n<div>10% VAT và 5% phí dịch vụ.</div>\n<div><strong>2. Giá phòng đã bao gồm:</strong></div>\n<div>- Cà phê, Trà và nước miễn phí đặt phòng.</div>\n<div>- Miễn phí sử dụng wifi.</div>\n<div>- Miễn phí sử dụng hồ bơi và các dịch vụ thuộc tòa nhà<span style=\"white-space: pre;\"> <br /></span></div>\n<div><strong>3. Chính sách ở cuối tuần và nghỉ lễ tết</strong></div>\n<div> - Phụ thu cuối tuần 100.000/phòng/đêm đối với các ngày T6, T7</div>\n<div>- Phụ thu 20% so với giá niêm yết trong giai đoạn Lễ Tết: 01/01/2019 (Tết Dương lịch); 15 – 20/02/2019 (Tết nguyên đán); 25/04/2019 (Giỗ tổ Hùng Vương); 28/04/2019 – 01/05/2019; (Ngày Thống Nhất); 01 – 02/09/2019 (Lễ Quốc Khánh); 24 – 25/12/2019 (Lễ Giáng Sinh); 31/12/2019 (Tết Dương lịch)</div>\n<div><strong>4. Chính sách trẻ em và ở ghép :</strong></div>\n<div> - Miễn phí trẻ em dưới 12 tuổi, mỗi giường được thêm tối đa 1 trẻ em ở cùng với bố mẹ, trẻ em tiếp theo tính như ở ghép thêm người, phụ thu 100.000 VND/em</div>\n<div>- Trẻ em trên 12 tuổi tính như người lớn</div>\n<div>- Phụ thu 100.000/phòng/đêm đối với 1 khách ở ghép.<span style=\"white-space: pre;\"> <br /></span></div>\n<div><strong>5. Nhận Phòng và Trả phòng</strong></div>\n<div>- Thời gian nhận phòng: 14:00 và trả phòng 12:00 trưa ngày hôm sau.</div>\n<div>- Trường hợp yêu cầu trả phòng trễ như sau:</div>\n<div>-Trả phòng trễ trước 15:00 – Phụ phí 20% của tiền phòng 1 đêm</div>\n<div>- Trả phòng trễ trước 18:00 – Phụ phí 50% của tiền phòng 1 đêm</div>\n<div>- Trả phòng trễ sau 18:00 – Phụ phí 100% tiền phòng 1 đêm<span style=\"white-space: pre;\"> <br /></span></div>\n<div><strong>6. Điều kiện hủy phòng &amp; khách không đến:</strong></div>\n<div>– Việc hủy phòng được xác nhận từ (07) ngày trước ngày nhận phòng sẽ không bị phạt phí hủy</div>\n<div>– Việc hủy phòng được xác nhận trong vòng (04) ngày đến (06) ngày trước ngày nhận phòng thì sẽ bị phạt phí hủy bẳng 50% tổng giá trị tiền phòng đã đặt (bao gồm thuế và phí phục vụ).</div>\n<div>\"– Việc hủy phòng được xác nhận trong vòng (03) ngày hoặc bảy mươi hai (72) giờ trước ngày nhận phòng thì sẽ bị tính phí hủy bằng 100% tổng giá trị tiền phòng đã đặt (bao gồm thuế và phí phục vụ)\"</div>', '', 1, 1, '2019-04-17 10:04:00', '2019-04-24 21:07:05', 2200000, '<div class=\"card-text text-center\">Giường: 1 giường Queen, 2 giường single</div>\r\n<div class=\"card-text text-center\">Người lớn: <span class=\"fas fa-male\"> </span><span class=\"fas fa-male\"> </span><span class=\"fas fa-male\"> </span><span class=\"fas fa-male\"> </span></div>\r\n<div class=\"card-text text-center\">Trẻ em: <span class=\"fas fa-child\"> </span><span class=\"fas fa-child\"> </span><span class=\"fas fa-child\"> </span></div>', 'apartments/April2019/LlbHkXlFlGkB4AK85Pt6.JPG', 1, 'apartments/April2019/M1PoQ3S4YIx1mrTQfDdR.JPG', '[]'),
(2, '3BR Apartment', '3br-apartment', '<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight text-center\" style=\"text-align: center;\"><img src=\"/images/icon1.png\" alt=\"\" /> 90 m2</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon2.png\" alt=\"\" /> Sử dụng toàn bộ<br />căn hộ</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon3.png\" alt=\"\" /> Tiêu chuẩn<br />9 người</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon4.png\" alt=\"\" /> 1 giường Queen<br />2 giường Superior</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon5.png\" alt=\"\" /> View vịnh/ Núi</div>', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<tbody>\n<tr>\n<td style=\"width: 35%;\"><strong>Room Listing</strong>:</td>\n<td>CH-1015, CH-1016, CH-2415</td>\n</tr>\n<tr>\n<td><strong>Direction of balcony</strong>:</td>\n<td>Sea view &amp; mountain view</td>\n</tr>\n<tr>\n<td style=\"width: 35%;\"><strong>Amount of people</strong>:</td>\n<td>6 adults &amp; 3 children (under 12 years old)</td>\n</tr>\n<tr>\n<td><strong>Room type</strong>:</td>\n<td>3 single rooms</td>\n</tr>\n<tr>\n<td><strong>Bed type</strong>:</td>\n<td>1 Queen bed (1m8<sup> </sup>* 2m) và 2 single bed (1m2<sup> </sup>* 2m)</td>\n</tr>\n<tr>\n<td><strong>Furniture</strong></td>\n<td>Tea table, Sopha chair, relaxing chair, refrigerator, wardrobe …</td>\n</tr>\n<tr>\n<td><strong>Bathroom:</strong></td>\n<td>Shower &amp; sink, towel, mirror, towel, hairdryer, bathroom amenities.</td>\n</tr>\n<tr>\n<td><strong>Entertainment</strong>:</td>\n<td>Cable TV, Free Wifi.</td>\n</tr>\n<tr>\n<td><strong>Safety and security items</strong>:</td>\n<td>In room safe, magnetic lock.</td>\n</tr>\n<tr>\n<td><strong>Note</strong>:</td>\n<td>If additional people, add surcharge.</td>\n</tr>\n</tbody>\n</table>', '<div><strong>1. Room rates do not include:</strong></div>\n<div>10% VAT and 5% service charge.</div>\n<div><strong>2. Room rates include:</strong></div>\n<div>- Coffee, Tea and water free reservation.</div>\n<div>- Free use of wifi.</div>\n<div>- Free use of swimming pool and building services</div>\n<div><strong>3. Policies at weekends and public holidays</strong></div>\n<div> - Surcharge at the end of week 100,000 / room / night for days T6 and T7</div>\n<div>- A surcharge of 20% compared to the list price during the Tet holiday: January 1, 2019 (New Year\'s calendar); February 15 - 20, 2019 (Lunar New Year); April 25, 2019 (Hung Vuong\'s death anniversary); April 28, 2019 - May 1, 2019; (Unification Day); 01 - September 2, 2019 (National Day); 24 - December 25, 2019 (Christmas); December 31, 2019 (New Year\'s Calendar)</div>\n<div><strong>4. Children\'s policies and grafting:</strong></div>\n<div> - Free for children under 12 years old, each bed is added up to 1 more child with parents and children followed by adding more people, surcharges 100,000 VND / child</div>\n<div>- Children over 12 years old as adults</div>\n<div>- Surcharge 100,000 / room / night for 1 guest at the transplant.</div>\n<div><strong>5. Check-in and Check-out</strong></div>\n<div>- Check in time: 14:00 and check out 12:00 noon the next day.</div>\n<div>- In case of late check-out request as follows:</div>\n<div>- Late check-out before 15:00 - 20% room charge of 1 night</div>\n<div>- Late check out before 18:00 - 50% surcharge of 1 night room charge</div>\n<div>- Late check out after 18:00 - 100% room charge per night</div>\n<div><strong>6. Conditions for cancellation and guests not coming:</strong></div>\n<div>- Cancellation confirmed from (07) days before check-in date will not be subject to cancellation fee.</div>\n<div>- Cancellation is confirmed within (04) days to (06) days before the check-in date, there will be a cancellation fee of 50% of the booking value (including tax and service charge).</div>\n<div>\"- Cancellation is confirmed within (03) days or seventy-two (72) hours prior to the check-in date, the cancellation fee will be equal to 100% of the total booking value (including tax and service charge). ) \"</div>', '', 1, 1, '2019-04-24 01:17:00', '2019-04-24 21:14:11', 2500000, '<div class=\"card-text text-center\">\r\n<div class=\"card-text text-center\">Giường: 1 giường Queen, 2 giường <span style=\"text-align: center;\">Superior</span></div>\r\n<div class=\"card-text text-center\">Người lớn: <span class=\"fas fa-male\"> </span><span class=\"fas fa-male\"> </span><span class=\"fas fa-male\"> </span><span class=\"fas fa-male\"> </span><span class=\"fas fa-male\"> </span><span class=\"fas fa-male\"> </span></div>\r\n<div class=\"card-text text-center\">Trẻ em: <span class=\"fas fa-child\"> </span><span class=\"fas fa-child\"> </span><span class=\"fas fa-child\"> </span></div>\r\n</div>', 'apartments/April2019/yK7RWEFa69E9FziFyN3D.JPG', 1, 'apartments/April2019/I7UBLy0zEHHVzgb1NPh9.jpg', '[]'),
(3, 'Luxury', 'luxury', '<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight text-center\" style=\"text-align: center;\"><img src=\"/images/icon1.png\" alt=\"\" /> 90 m2</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon2.png\" alt=\"\" /> Sử dụng toàn bộ<br />căn hộ</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon3.png\" alt=\"\" /> Tiêu chuẩn<br />9 người</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon4.png\" alt=\"\" /> 1 giường Queen<br />2 giường Superior</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon5.png\" alt=\"\" /> View vịnh/ Núi</div>', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<tbody>\n<tr>\n<td style=\"width: 35%;\"><strong>Room Listing</strong>:</td>\n<td>CH-1015, CH-1016, CH-2415</td>\n</tr>\n<tr>\n<td><strong>Direction of balcony</strong>:</td>\n<td>Sea view &amp; mountain view</td>\n</tr>\n<tr>\n<td style=\"width: 35%;\"><strong>Amount of people</strong>:</td>\n<td>6 adults &amp; 3 children (under 12 years old)</td>\n</tr>\n<tr>\n<td><strong>Room type</strong>:</td>\n<td>3 single rooms</td>\n</tr>\n<tr>\n<td><strong>Bed type</strong>:</td>\n<td>1 Queen bed (1m8<sup> </sup>* 2m) và 2 single bed (1m2<sup> </sup>* 2m)</td>\n</tr>\n<tr>\n<td><strong>Furniture</strong></td>\n<td>Tea table, Sopha chair, relaxing chair, refrigerator, wardrobe …</td>\n</tr>\n<tr>\n<td><strong>Bathroom:</strong></td>\n<td>Shower &amp; sink, towel, mirror, towel, hairdryer, bathroom amenities.</td>\n</tr>\n<tr>\n<td><strong>Entertainment</strong>:</td>\n<td>Cable TV, Free Wifi.</td>\n</tr>\n<tr>\n<td><strong>Safety and security items</strong>:</td>\n<td>In room safe, magnetic lock.</td>\n</tr>\n<tr>\n<td><strong>Note</strong>:</td>\n<td>If additional people, add surcharge.<br /><br /></td>\n</tr>\n</tbody>\n</table>', '', '', 1, 1, '2019-04-26 01:05:00', '2019-04-26 01:06:47', 3000000, '<div class=\"card-text text-center\">Giường: 1 giường Queen, 2 giường <span style=\"text-align: center;\">Superior</span></div>\r\n<div class=\"card-text text-center\">Người lớn: <span class=\"fas fa-male\"> </span><span class=\"fas fa-male\"> </span><span class=\"fas fa-male\"> </span><span class=\"fas fa-male\"> </span><span class=\"fas fa-male\"> </span><span class=\"fas fa-male\"> </span></div>\r\n<div class=\"card-text text-center\">Trẻ em: <span class=\"fas fa-child\"> </span><span class=\"fas fa-child\"> </span></div>', 'apartments/April2019/D8I5mn9PpvZqH4cbtKuj.JPG', 1, NULL, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `apartment_posts`
--

CREATE TABLE `apartment_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartment_posts`
--

INSERT INTO `apartment_posts` (`id`, `apartment_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apartment_utilities`
--

CREATE TABLE `apartment_utilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  `utility_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartment_utilities`
--

INSERT INTO `apartment_utilities` (`id`, `apartment_id`, `utility_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 2, 3, NULL, NULL),
(4, 2, 4, NULL, NULL),
(5, 2, 5, NULL, NULL),
(6, 2, 6, NULL, NULL),
(7, 2, 7, NULL, NULL),
(8, 2, 8, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 2, 10, NULL, NULL),
(11, 2, 11, NULL, NULL),
(12, 2, 12, NULL, NULL),
(13, 2, 13, NULL, NULL),
(14, 2, 14, NULL, NULL),
(15, 2, 15, NULL, NULL),
(16, 2, 16, NULL, NULL),
(17, 2, 17, NULL, NULL),
(18, 2, 18, NULL, NULL),
(19, 2, 19, NULL, NULL),
(20, 2, 20, NULL, NULL),
(21, 2, 21, NULL, NULL),
(22, 1, 1, NULL, NULL),
(23, 1, 2, NULL, NULL),
(24, 1, 3, NULL, NULL),
(25, 1, 4, NULL, NULL),
(26, 1, 5, NULL, NULL),
(27, 1, 6, NULL, NULL),
(28, 1, 7, NULL, NULL),
(29, 1, 8, NULL, NULL),
(30, 1, 9, NULL, NULL),
(31, 1, 10, NULL, NULL),
(32, 1, 11, NULL, NULL),
(33, 1, 12, NULL, NULL),
(34, 1, 13, NULL, NULL),
(35, 1, 14, NULL, NULL),
(36, 1, 15, NULL, NULL),
(37, 1, 16, NULL, NULL),
(38, 1, 17, NULL, NULL),
(39, 1, 18, NULL, NULL),
(40, 1, 19, NULL, NULL),
(41, 1, 20, NULL, NULL),
(42, 1, 21, NULL, NULL),
(43, 3, 1, NULL, NULL),
(44, 3, 2, NULL, NULL),
(45, 3, 3, NULL, NULL),
(46, 3, 4, NULL, NULL),
(47, 3, 5, NULL, NULL),
(48, 3, 6, NULL, NULL),
(49, 3, 7, NULL, NULL),
(50, 3, 8, NULL, NULL),
(51, 3, 9, NULL, NULL),
(52, 3, 10, NULL, NULL),
(53, 3, 11, NULL, NULL),
(54, 3, 12, NULL, NULL),
(55, 3, 13, NULL, NULL),
(56, 3, 14, NULL, NULL),
(57, 3, 15, NULL, NULL),
(58, 3, 16, NULL, NULL),
(59, 3, 17, NULL, NULL),
(60, 3, 18, NULL, NULL),
(61, 3, 19, NULL, NULL),
(62, 3, 20, NULL, NULL),
(63, 3, 21, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `room_id` int(11) DEFAULT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `price_room` float DEFAULT NULL,
  `datein` date DEFAULT NULL,
  `dateout` date DEFAULT NULL,
  `adult` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `price_service` int(11) DEFAULT NULL,
  `price_extra` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price_apartment` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `firstname`, `lastname`, `email`, `phone`, `note`, `room_id`, `apartment_id`, `service_id`, `price_room`, `datein`, `dateout`, `adult`, `children`, `status`, `price_service`, `price_extra`, `total`, `created_at`, `updated_at`, `price_apartment`) VALUES
(2, 'Nguyễn', 'Hữu', 'nguyenhuu140490@gmail.com', '973537381', 'k', 1, NULL, NULL, 2354000, '2019-04-25', '2019-04-27', 1, NULL, 1, NULL, NULL, NULL, '2019-04-25 09:58:43', '2019-04-25 09:58:43', NULL),
(3, 'Nguyễn', 'Hữu', 'nguyenhuu140490@gmail.com', '973537381', NULL, 1, NULL, NULL, 60027000, '2019-04-28', '2019-06-18', 1, NULL, 1, NULL, NULL, NULL, '2019-04-25 10:55:36', '2019-04-25 10:55:36', NULL),
(4, 'Nguyễn', 'Hữu', 'nguyenhuu140490@gmail.com', '973537381', '1', NULL, 1, NULL, NULL, '2019-04-26', '2019-04-29', 1, NULL, 1, NULL, NULL, NULL, '2019-04-25 20:22:30', '2019-04-25 20:22:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Tin tức', 'tin-tuc', '2019-03-31 21:16:10', '2019-04-22 19:55:57'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-03-31 21:16:10', '2019-03-31 21:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 4),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 0, 0, 0, 0, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'content', 'rich_text_box', 'Content', 0, 0, 0, 1, 1, 1, '{}', 5),
(59, 7, 'map', 'rich_text_box', 'Map', 0, 0, 0, 1, 1, 1, '{}', 6),
(60, 7, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 10),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(63, 7, 'description', 'text', 'Description', 0, 0, 0, 1, 1, 1, '{}', 7),
(64, 7, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 3),
(65, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(67, 8, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 3),
(68, 8, 'tieuchuan', 'rich_text_box', 'Tieuchuan', 0, 0, 0, 1, 1, 1, '{}', 6),
(69, 8, 'content', 'rich_text_box', 'Content', 0, 0, 0, 1, 1, 1, '{}', 7),
(70, 8, 'chinhsach', 'rich_text_box', 'Chinhsach', 0, 0, 0, 1, 1, 1, '{}', 9),
(71, 8, 'description', 'text', 'Description', 0, 0, 0, 1, 1, 1, '{}', 10),
(72, 8, 'hometel_id', 'select_dropdown', 'Hometel Id', 0, 1, 1, 1, 1, 1, '{}', 11),
(73, 8, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 16),
(74, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 19),
(75, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 20),
(76, 8, 'apartment_belongsto_hometel_relationship', 'relationship', 'hometels', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Hometel\",\"table\":\"hometels\",\"type\":\"belongsTo\",\"column\":\"hometel_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"apartments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(77, 8, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 4),
(80, 8, 'title', 'rich_text_box', 'Title', 0, 0, 0, 1, 1, 1, '{}', 5),
(81, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 13),
(82, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 8),
(83, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(85, 9, 'title', 'rich_text_box', 'Title', 0, 0, 0, 1, 1, 1, '{}', 4),
(86, 9, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 5),
(87, 9, 'excerpt', 'rich_text_box', 'Excerpt', 0, 0, 0, 1, 1, 1, '{}', 6),
(88, 9, 'description', 'rich_text_box', 'Description', 0, 0, 0, 1, 1, 1, '{}', 7),
(89, 9, 'policy', 'rich_text_box', 'Policy', 0, 0, 0, 1, 1, 1, '{}', 8),
(90, 9, 'available', 'rich_text_box', 'Available', 0, 0, 0, 1, 1, 1, '{}', 9),
(91, 9, 'meta_description', 'text', 'Meta Description', 0, 0, 0, 1, 1, 1, '{}', 10),
(92, 9, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 12),
(94, 9, 'apartment_id', 'text', 'Apartment Id', 0, 1, 1, 1, 1, 1, '{}', 13),
(95, 9, 'images', 'multiple_images', 'Images', 0, 0, 0, 1, 1, 1, '{}', 16),
(96, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 15),
(97, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 17),
(98, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 18),
(99, 9, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 3),
(100, 9, 'booked', 'select_dropdown', 'Booked', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 11),
(101, 9, 'room_belongsto_apartment_relationship', 'relationship', 'apartments', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Apartment\",\"table\":\"apartments\",\"type\":\"belongsTo\",\"column\":\"apartment_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"apartments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(102, 8, 'highlight', 'select_dropdown', 'Highlight', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 14),
(104, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(105, 11, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(106, 11, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(107, 11, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 4),
(108, 11, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 5),
(109, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(110, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(111, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(113, 12, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 5),
(114, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(115, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(116, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(117, 13, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(118, 13, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 3),
(119, 13, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(120, 13, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 5),
(121, 13, 'content', 'rich_text_box', 'Content', 0, 0, 0, 1, 1, 1, '{}', 6),
(122, 13, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 7),
(123, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(124, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(125, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(126, 16, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(127, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(128, 16, 'apartment_id', 'select_dropdown', 'Apartment Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(129, 16, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 6),
(130, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(131, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(132, 16, 'photo_belongsto_apartment_relationship', 'relationship', 'apartments', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Apartment\",\"table\":\"apartments\",\"type\":\"belongsTo\",\"column\":\"apartment_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"Bookings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(133, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(135, 18, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(138, 18, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 5),
(139, 18, 'note', 'text', 'Note', 0, 1, 1, 1, 1, 1, '{}', 6),
(140, 18, 'room_id', 'text', 'Room Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(141, 18, 'apartment_id', 'text', 'Apartment Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(142, 18, 'service_id', 'text', 'Service Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(143, 18, 'price_room', 'text', 'Price Room', 0, 1, 1, 1, 1, 1, '{}', 14),
(144, 18, 'datein', 'text', 'Datein', 0, 1, 1, 1, 1, 1, '{}', 10),
(145, 18, 'dateout', 'text', 'Dateout', 0, 1, 1, 1, 1, 1, '{}', 11),
(146, 18, 'adult', 'text', 'Adult', 0, 1, 1, 1, 1, 1, '{}', 12),
(147, 18, 'children', 'text', 'Children', 0, 1, 1, 1, 1, 1, '{}', 13),
(148, 18, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 16),
(149, 18, 'price_service', 'text', 'Price Service', 0, 1, 1, 1, 1, 1, '{}', 17),
(150, 18, 'price_extra', 'text', 'Price Extra', 0, 1, 1, 1, 1, 1, '{}', 18),
(151, 18, 'total', 'text', 'Total', 0, 1, 1, 1, 1, 1, '{}', 19),
(152, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 20),
(153, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 21),
(155, 6, 'sliders', 'multiple_images', 'Sliders', 0, 1, 1, 1, 1, 1, '{}', 13),
(157, 5, 'post_belongsto_apartment_relationship', 'relationship', 'apartments', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Apartment\",\"table\":\"apartments\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"apartment_posts\",\"pivot\":\"1\",\"taggable\":\"0\"}', 17),
(158, 12, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 3),
(160, 12, 'trang', 'select_dropdown', 'Trang', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u1ecdn trang\",\"home\":\"Trang ch\\u1ee7\",\"photo\":\"Trang h\\u00ecnh \\u1ea3nh\",\"contact\":\"Trang li\\u00ean h\\u1ec7\",\"new\":\"Trang tin t\\u1ee9c\",\"footer\":\"\\u1ea2nh footer\"}}', 2),
(161, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(162, 19, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(163, 19, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(164, 19, 'content', 'rich_text_box', 'Content', 0, 0, 0, 1, 1, 1, '{}', 4),
(165, 19, 'images', 'multiple_images', 'Images', 0, 0, 0, 1, 1, 1, '{}', 5),
(166, 19, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 6),
(167, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(168, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(169, 8, 'slider', 'image', 'Slider', 0, 1, 1, 1, 1, 1, '{}', 15),
(170, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(171, 20, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(172, 20, 'icon', 'text', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 3),
(173, 20, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 4),
(174, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(175, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(176, 8, 'utilities', 'hidden', 'Utilities', 0, 1, 1, 1, 1, 1, '{}', 17),
(177, 8, 'apartment_belongstomany_utility_relationship', 'relationship', 'utilities', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Utility\",\"table\":\"utilities\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"apartment_utilities\",\"pivot\":\"1\",\"taggable\":\"on\"}', 18),
(178, 12, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(179, 7, 'banner', 'image', 'Banner', 0, 1, 1, 1, 1, 1, '{}', 9),
(180, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 4),
(181, 18, 'firstname', 'text', 'Firstname', 0, 1, 1, 1, 1, 1, '{}', 2),
(182, 18, 'lastname', 'text', 'Lastname', 0, 1, 1, 1, 1, 1, '{}', 3),
(183, 18, 'price_apartment', 'text', 'Price Apartment', 0, 1, 1, 1, 1, 1, '{}', 15);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-03-31 21:16:08', '2019-03-31 21:16:08'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-03-31 21:16:08', '2019-03-31 21:16:08'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-03-31 21:16:08', '2019-03-31 21:16:08'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-03-31 21:16:10', '2019-04-26 01:35:32'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-03-31 21:16:10', '2019-04-23 07:40:07'),
(7, 'hometels', 'hometels', 'Hometel', 'Hometels', 'voyager-company', 'App\\Hometel', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-16 01:27:56', '2019-04-25 06:55:56'),
(8, 'apartments', 'apartments', 'Apartment', 'Apartments', 'voyager-shop', 'App\\Apartment', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-16 20:25:55', '2019-04-26 01:31:19'),
(9, 'rooms', 'rooms', 'Room', 'Rooms', 'voyager-book', 'App\\Room', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-16 22:55:16', '2019-04-16 23:03:25'),
(11, 'services', 'services', 'Service', 'Services', 'voyager-diamond', 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-04-17 09:21:20', '2019-04-17 09:21:20'),
(12, 'sliders', 'sliders', 'Slider', 'Sliders', 'voyager-images', 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-17 09:22:41', '2019-04-25 21:45:45'),
(13, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-file-text', 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-17 09:43:50', '2019-04-21 01:00:08'),
(16, 'photos', 'photos', 'Photo', 'Photos', 'voyager-images', 'App\\Photo', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-21 23:39:26', '2019-04-21 23:42:44'),
(18, 'bookings', 'bookings', 'Booking', 'Bookings', NULL, 'App\\Booking', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-22 01:40:55', '2019-04-25 09:52:44'),
(19, 'abouts', 'abouts', 'About', 'Abouts', NULL, 'App\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-23 08:43:49', '2019-04-23 09:29:04'),
(20, 'utilities', 'utilities', 'Utility', 'Utilities', 'voyager-boat', 'App\\Utility', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-24 02:22:48', '2019-04-24 03:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `hometels`
--

CREATE TABLE `hometels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `map` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hometels`
--

INSERT INTO `hometels` (`id`, `name`, `content`, `map`, `status`, `created_at`, `updated_at`, `description`, `slug`, `image`, `banner`, `title`) VALUES
(1, 'HOMETEL HẠ LONG', '<p>DTJ Hometel is the first unit to provide Hometel Apartment in Ha Long - a new form of accommodation that has appeared in Vietnam for the past 1 year. Hometel is the integration between Apartment (Home) and Hotel (Hotel) to bring full amenities for customers like living in their own houses, while still experiencing high quality services like in the Hotel. but the price is extremely reasonable.</p>\n<p>From June 2018, DTJ Hometel officially went into operation with Green Bay apartment rental service in Bai Chay Ha Long area. DTJ Hometel is nicely located on the seafront of Ha Long Bay, between Tuan Chau Island and Sun World Park with modern design style, 3-star standard. With a convenient location in Green Bay Premium building - BIM Group\'s population center:</p>', '<div class=\"mapouter\">\r\n<div class=\"gmap_canvas\"><iframe id=\"gmap_canvas\" src=\"https://maps.google.com/maps?q=216%20hoang%20quoc%20viet&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed\" width=\"100%\" height=\"500\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe></div>\r\n</div>', 1, '2019-04-16 01:35:00', '2019-04-26 01:28:55', '', 'hometel-ha-long', 'hometels/April2019/Y6MBhYVeGGEhkgaEDvqY.JPG', 'hometels/April2019/uXLdDtg4qNhJIMheRV8u.jpg', 'title'),
(2, 'Hometel Nha Trang', '<p>DTJ Hometel is the first unit to provide Hometel Apartment in Ha Long - a new form of accommodation that has appeared in Vietnam for the past 1 year. Hometel is the integration between Apartment (Home) and Hotel (Hotel) to bring full amenities for customers like living in their own houses, while still experiencing high quality services like in the Hotel. but the price is extremely reasonable.</p>\n<p>From June 2018, DTJ Hometel officially went into operation with Green Bay apartment rental service in Bai Chay Ha Long area. DTJ Hometel is nicely located on the seafront of Ha Long Bay, between Tuan Chau Island and Sun World Park with modern design style, 3-star standard. With a convenient location in Green Bay Premium building - BIM Group\'s population center:</p>', NULL, 1, '2019-04-26 01:23:00', '2019-04-26 20:49:21', '', 'hometel-nha-trang', 'hometels/April2019/YjdoG11aZIPeicnfIFyy.jpg', 'hometels/April2019/K0fRdSoXxeY5hEfMXmVr.jpg', ''),
(3, 'Hometel Phu Quoc', '<p>DTJ Hometel is the first unit to provide Hometel Apartment in Ha Long - a new form of accommodation that has appeared in Vietnam for the past 1 year. Hometel is the integration between Apartment (Home) and Hotel (Hotel) to bring full amenities for customers like living in their own houses, while still experiencing high quality services like in the Hotel. but the price is extremely reasonable.</p>\n<p>From June 2018, DTJ Hometel officially went into operation with Green Bay apartment rental service in Bai Chay Ha Long area. DTJ Hometel is nicely located on the seafront of Ha Long Bay, between Tuan Chau Island and Sun World Park with modern design style, 3-star standard. With a convenient location in Green Bay Premium building - BIM Group\'s population center:</p>', '<div class=\"mapouter\">\r\n<div class=\"gmap_canvas\"><iframe id=\"gmap_canvas\" src=\"https://maps.google.com/maps?q=216%20hoang%20quoc%20viet&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed\" width=\"100%\" height=\"500\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe></div>\r\n</div>', 1, '2019-04-26 01:25:00', '2019-04-26 20:49:11', '', 'hometel-phu-quoc', 'hometels/April2019/iSODfGhD4jBU7VZfFyGK.jpg', 'hometels/April2019/XsZpnLaTZLiFH0TCvmQm.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(2, 'home', '2019-04-17 03:09:55', '2019-04-17 03:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-03-31 21:16:09', '2019-03-31 21:16:09', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-03-31 21:16:09', '2019-04-16 20:11:06', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-03-31 21:16:09', '2019-03-31 21:16:09', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-03-31 21:16:09', '2019-03-31 21:16:09', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2019-03-31 21:16:09', '2019-04-16 20:11:06', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-03-31 21:16:09', '2019-04-16 20:11:06', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-03-31 21:16:09', '2019-04-16 20:11:06', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-03-31 21:16:09', '2019-04-16 20:11:06', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-03-31 21:16:09', '2019-04-16 20:11:06', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2019-03-31 21:16:09', '2019-04-16 20:11:06', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2019-03-31 21:16:10', '2019-04-16 20:11:06', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2019-03-31 21:16:10', '2019-04-16 20:11:06', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2019-03-31 21:16:10', '2019-04-16 20:11:06', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-03-31 21:16:10', '2019-04-16 20:11:06', 'voyager.hooks', NULL),
(16, 1, 'Hometels', '/admin/hometels', '_self', 'voyager-company', '#000000', NULL, 10, '2019-04-16 20:08:05', '2019-04-16 20:11:06', NULL, ''),
(17, 1, 'Apartments', '', '_self', 'voyager-shop', NULL, NULL, 11, '2019-04-16 20:25:55', '2019-04-16 20:25:55', 'voyager.apartments.index', NULL),
(18, 1, 'Rooms', '', '_self', 'voyager-book', NULL, NULL, 12, '2019-04-16 22:55:16', '2019-04-16 22:55:16', 'voyager.rooms.index', NULL),
(19, 2, 'Home', '/', '_self', NULL, '#000000', NULL, 1, '2019-04-17 03:11:02', '2019-04-17 03:17:23', NULL, ''),
(20, 2, 'About us', '/gioi-thieu', '_self', NULL, '#000000', NULL, 2, '2019-04-17 03:13:10', '2019-04-17 03:17:23', NULL, ''),
(21, 2, 'hometels', '', '_self', NULL, '#000000', NULL, 3, '2019-04-17 03:15:42', '2019-04-17 07:55:22', NULL, ''),
(22, 2, 'Hometel Ha Long', '/hometel/1-hometel-ha-long', '_self', NULL, '#000000', 21, 1, '2019-04-17 03:17:18', '2019-04-22 19:37:48', NULL, ''),
(23, 2, 'image', '/hinh-anh', '_self', NULL, '#000000', NULL, 4, '2019-04-17 03:18:00', '2019-04-17 07:54:49', NULL, ''),
(24, 2, 'News', '/tin-tuc', '_self', NULL, '#000000', NULL, 5, '2019-04-17 03:18:35', '2019-04-17 07:54:49', NULL, ''),
(25, 2, 'Contact', '/lien-he', '_self', NULL, '#000000', NULL, 6, '2019-04-17 03:19:05', '2019-04-17 07:54:49', NULL, ''),
(27, 1, 'Services', '', '_self', 'voyager-diamond', NULL, NULL, 13, '2019-04-17 09:21:20', '2019-04-17 09:21:20', 'voyager.services.index', NULL),
(28, 1, 'Sliders', '', '_self', 'voyager-images', '#000000', NULL, 14, '2019-04-17 09:22:41', '2019-04-17 09:23:39', 'voyager.sliders.index', 'null'),
(29, 1, 'Contacts', '', '_self', 'voyager-file-text', NULL, NULL, 15, '2019-04-17 09:43:50', '2019-04-17 09:43:50', 'voyager.contacts.index', NULL),
(32, 1, 'Photos', '', '_self', 'voyager-images', NULL, NULL, 17, '2019-04-21 23:39:26', '2019-04-21 23:39:26', 'voyager.photos.index', NULL),
(34, 1, 'Bookings', '', '_self', 'voyager-data', '#000000', NULL, 18, '2019-04-22 01:40:55', '2019-04-23 09:26:43', 'voyager.bookings.index', 'null'),
(35, 1, 'Abouts', '', '_self', 'voyager-bell', '#000000', NULL, 19, '2019-04-23 08:43:49', '2019-04-23 09:27:01', 'voyager.abouts.index', 'null'),
(36, 1, 'Utilities', '', '_self', 'voyager-boat', NULL, NULL, 20, '2019-04-24 02:22:48', '2019-04-24 02:22:48', 'voyager.utilities.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sliders` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `sliders`) VALUES
(2, 1, 'About us', 'ABOUT US DTJ HOMETEL', '<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><em style=\"box-sizing: border-box; margin-bottom: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; margin-bottom: 0px;\">Dear!</span></em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Inheriting and enhancing the experience from the distribution of high-end real estate products, consulting and investment services of DTJ Group 10 year ago. DTJ Hometel was born with the mission to become a unit providing holiday apartments for customers in all parts of the country with unreasonable costs.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">From June 2018, DTJ Hometel will officially come into operation with Green Bay apartment rental service at Bai Chay, Ha Long City.</p>\n<p><br /><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/pages/a1.jpg\" alt=\"\" /><br /><br /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Conveniently located in the heart of the ferry terminal of Halong City, it is easily accessible from the commercial and service centers, Tuan Chau Island, major city attractions such as Marina Bay Beach, Little Vietnam Street, Halong Marine Plaza, TiNiWorld, SunWorld, Hoi An – Halong, Halong Night Market, CGV Cinemas. In-house services bring you the best service, DTJ Hometel is the ideal place to start your trip in Quang Ninh.</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/pages/a2.jpg\" alt=\"\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">100% of DTJ Hometel apartments in Green Bay apartments have a view of the bay with spacious views and modern furniture.</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/pages/a3.jpg\" alt=\"\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">The next objective of the company is to promote online business: service of exchange, booking and payment of car, room and tour costs, as well as accept payment of diverse routes, tourist destinations novelty aims to technologicalization, facilitating and saving time of effort of customers.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: right; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">DTJ Hometel</span><br style=\"box-sizing: border-box; margin-bottom: 0px;\" /><em>Thanks!</em></p>', 'pages/April2019/CUYKDtLJZCjIBNA8sGsN.jpg', 'about-us', 'Giới thiệu', 'Giới thiệu', 0, '2019-04-19 21:06:32', '2019-04-25 00:03:34', '[\"pages\\/April2019\\/h6BE9L6z2hSE4BB29c6s.jpg\"]');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(2, 'browse_bread', NULL, '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(3, 'browse_database', NULL, '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(4, 'browse_media', NULL, '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(5, 'browse_compass', NULL, '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(6, 'browse_menus', 'menus', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(7, 'read_menus', 'menus', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(8, 'edit_menus', 'menus', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(9, 'add_menus', 'menus', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(10, 'delete_menus', 'menus', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(11, 'browse_roles', 'roles', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(12, 'read_roles', 'roles', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(13, 'edit_roles', 'roles', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(14, 'add_roles', 'roles', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(15, 'delete_roles', 'roles', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(16, 'browse_users', 'users', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(17, 'read_users', 'users', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(18, 'edit_users', 'users', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(19, 'add_users', 'users', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(20, 'delete_users', 'users', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(21, 'browse_settings', 'settings', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(22, 'read_settings', 'settings', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(23, 'edit_settings', 'settings', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(24, 'add_settings', 'settings', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(25, 'delete_settings', 'settings', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(26, 'browse_categories', 'categories', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(27, 'read_categories', 'categories', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(28, 'edit_categories', 'categories', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(29, 'add_categories', 'categories', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(30, 'delete_categories', 'categories', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(31, 'browse_posts', 'posts', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(32, 'read_posts', 'posts', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(33, 'edit_posts', 'posts', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(34, 'add_posts', 'posts', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(35, 'delete_posts', 'posts', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(36, 'browse_pages', 'pages', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(37, 'read_pages', 'pages', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(38, 'edit_pages', 'pages', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(39, 'add_pages', 'pages', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(40, 'delete_pages', 'pages', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(41, 'browse_hooks', NULL, '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(42, 'browse_hometels', 'hometels', '2019-04-16 01:27:56', '2019-04-16 01:27:56'),
(43, 'read_hometels', 'hometels', '2019-04-16 01:27:56', '2019-04-16 01:27:56'),
(44, 'edit_hometels', 'hometels', '2019-04-16 01:27:56', '2019-04-16 01:27:56'),
(45, 'add_hometels', 'hometels', '2019-04-16 01:27:56', '2019-04-16 01:27:56'),
(46, 'delete_hometels', 'hometels', '2019-04-16 01:27:56', '2019-04-16 01:27:56'),
(47, 'browse_apartments', 'apartments', '2019-04-16 20:25:55', '2019-04-16 20:25:55'),
(48, 'read_apartments', 'apartments', '2019-04-16 20:25:55', '2019-04-16 20:25:55'),
(49, 'edit_apartments', 'apartments', '2019-04-16 20:25:55', '2019-04-16 20:25:55'),
(50, 'add_apartments', 'apartments', '2019-04-16 20:25:55', '2019-04-16 20:25:55'),
(51, 'delete_apartments', 'apartments', '2019-04-16 20:25:55', '2019-04-16 20:25:55'),
(52, 'browse_rooms', 'rooms', '2019-04-16 22:55:16', '2019-04-16 22:55:16'),
(53, 'read_rooms', 'rooms', '2019-04-16 22:55:16', '2019-04-16 22:55:16'),
(54, 'edit_rooms', 'rooms', '2019-04-16 22:55:16', '2019-04-16 22:55:16'),
(55, 'add_rooms', 'rooms', '2019-04-16 22:55:16', '2019-04-16 22:55:16'),
(56, 'delete_rooms', 'rooms', '2019-04-16 22:55:16', '2019-04-16 22:55:16'),
(57, 'browse_services', 'services', '2019-04-17 09:21:20', '2019-04-17 09:21:20'),
(58, 'read_services', 'services', '2019-04-17 09:21:20', '2019-04-17 09:21:20'),
(59, 'edit_services', 'services', '2019-04-17 09:21:20', '2019-04-17 09:21:20'),
(60, 'add_services', 'services', '2019-04-17 09:21:20', '2019-04-17 09:21:20'),
(61, 'delete_services', 'services', '2019-04-17 09:21:20', '2019-04-17 09:21:20'),
(62, 'browse_sliders', 'sliders', '2019-04-17 09:22:41', '2019-04-17 09:22:41'),
(63, 'read_sliders', 'sliders', '2019-04-17 09:22:41', '2019-04-17 09:22:41'),
(64, 'edit_sliders', 'sliders', '2019-04-17 09:22:41', '2019-04-17 09:22:41'),
(65, 'add_sliders', 'sliders', '2019-04-17 09:22:41', '2019-04-17 09:22:41'),
(66, 'delete_sliders', 'sliders', '2019-04-17 09:22:41', '2019-04-17 09:22:41'),
(67, 'browse_contacts', 'contacts', '2019-04-17 09:43:50', '2019-04-17 09:43:50'),
(68, 'read_contacts', 'contacts', '2019-04-17 09:43:50', '2019-04-17 09:43:50'),
(69, 'edit_contacts', 'contacts', '2019-04-17 09:43:50', '2019-04-17 09:43:50'),
(70, 'add_contacts', 'contacts', '2019-04-17 09:43:50', '2019-04-17 09:43:50'),
(71, 'delete_contacts', 'contacts', '2019-04-17 09:43:50', '2019-04-17 09:43:50'),
(77, 'browse_photos', 'photos', '2019-04-21 23:39:26', '2019-04-21 23:39:26'),
(78, 'read_photos', 'photos', '2019-04-21 23:39:26', '2019-04-21 23:39:26'),
(79, 'edit_photos', 'photos', '2019-04-21 23:39:26', '2019-04-21 23:39:26'),
(80, 'add_photos', 'photos', '2019-04-21 23:39:26', '2019-04-21 23:39:26'),
(81, 'delete_photos', 'photos', '2019-04-21 23:39:26', '2019-04-21 23:39:26'),
(87, 'browse_bookings', 'bookings', '2019-04-22 01:40:55', '2019-04-22 01:40:55'),
(88, 'read_bookings', 'bookings', '2019-04-22 01:40:55', '2019-04-22 01:40:55'),
(89, 'edit_bookings', 'bookings', '2019-04-22 01:40:55', '2019-04-22 01:40:55'),
(90, 'add_bookings', 'bookings', '2019-04-22 01:40:55', '2019-04-22 01:40:55'),
(91, 'delete_bookings', 'bookings', '2019-04-22 01:40:55', '2019-04-22 01:40:55'),
(92, 'browse_abouts', 'abouts', '2019-04-23 08:43:49', '2019-04-23 08:43:49'),
(93, 'read_abouts', 'abouts', '2019-04-23 08:43:49', '2019-04-23 08:43:49'),
(94, 'edit_abouts', 'abouts', '2019-04-23 08:43:49', '2019-04-23 08:43:49'),
(95, 'add_abouts', 'abouts', '2019-04-23 08:43:49', '2019-04-23 08:43:49'),
(96, 'delete_abouts', 'abouts', '2019-04-23 08:43:49', '2019-04-23 08:43:49'),
(97, 'browse_utilities', 'utilities', '2019-04-24 02:22:48', '2019-04-24 02:22:48'),
(98, 'read_utilities', 'utilities', '2019-04-24 02:22:48', '2019-04-24 02:22:48'),
(99, 'edit_utilities', 'utilities', '2019-04-24 02:22:48', '2019-04-24 02:22:48'),
(100, 'add_utilities', 'utilities', '2019-04-24 02:22:48', '2019-04-24 02:22:48'),
(101, 'delete_utilities', 'utilities', '2019-04-24 02:22:48', '2019-04-24 02:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `name`, `image`, `apartment_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Living Room', 'photos/April2019/LahvytANDvwdepbR3zfG.JPG', 1, 1, '2019-04-21 23:50:00', '2019-04-25 00:07:22'),
(2, 'Master Bedroom', 'photos/April2019/Fpe4fcvWP9uLbTUnKzlJ.JPG', 1, 1, '2019-04-21 23:51:00', '2019-04-25 00:07:09'),
(3, 'Bedroom', 'photos/April2019/zExhFDsj0EIYmtIiGF4M.jpg', 1, 1, '2019-04-25 00:08:00', '2019-04-25 00:09:58'),
(5, 'Bathroom', 'photos/April2019/ZniXanCPz8arg5uEIepu.JPG', 1, 1, '2019-04-25 00:10:54', '2019-04-25 00:10:54'),
(6, 'Living Room', 'photos/April2019/FO4bOvH1BNRsJEMDjJoJ.JPG', 2, 1, '2019-04-25 19:04:00', '2019-04-25 19:04:38'),
(7, 'Bedroom', 'photos/April2019/pjIuGaaPiecMWwYz5vn4.JPG', 2, 1, '2019-04-25 19:05:15', '2019-04-25 19:05:15'),
(8, 'Bathroom', 'photos/April2019/Fjm4erRMNXFhvVEzk9V9.JPG', 2, 1, '2019-04-25 19:05:00', '2019-04-25 19:06:03'),
(9, 'Kitchen', 'photos/April2019/Yde5WVSv9Su0hdnFC88A.JPG', 2, 1, '2019-04-25 19:06:35', '2019-04-25 19:06:35'),
(10, 'Bedroom', 'photos/April2019/DY7CFfBu96LwZXMMb0Ur.JPG', 3, 1, '2019-04-26 01:09:00', '2019-04-26 01:09:28'),
(11, 'Living Room', 'photos/April2019/E0Jaji2vIIzG5k82qPMy.JPG', 3, 1, '2019-04-26 01:09:50', '2019-04-26 01:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'TỪ 1/9, CHÍNH THỨC THÔNG XE CAO TỐC HẠ LONG – HẢI PHÒNG', '', 'This is the excerpt for Cao tốc Hạ Long – Hải Phòng trước ngày thông xe Cao tốc Hạ Long – Hải Phòng khi hoàn thành sẽ rút ngắn đường từ thành phố lớn của Quảng Ninh đi Hà Nội từ 180 km còn 130 km, thời gian đi ôtô giảm từ 3,5 giờ xuống còn 1,5 giờ.the Lorem Ipsum Post', '<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Cao tốc Hạ Long – Hải Phòng trước ngày thông xe Cao tốc Hạ Long – Hải Phòng khi hoàn thành sẽ rút ngắn đường từ thành phố lớn của Quảng Ninh đi Hà Nội từ 180 km còn 130 km, thời gian đi ôtô giảm từ 3,5 giờ xuống còn 1,5 giờ.<span id=\"more-4231\" style=\"box-sizing: border-box;\"></span></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Ngày 24/8, Hội đồng nghiệm thu nhà nước các công trình xây dựng đã kiểm tra và chấp thuận thông xe tuyến cao tốc Hạ Long – Hải Phòng, gồm Dự án đường cao tốc nối TP Hạ Long với Cầu Bạch Đằng và Dự án Cầu Bạch Đằng, <em style=\"box-sizing: border-box;\">theo Zing.</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Như vậy, trong ngày 1/9/2018, cao tốc Hạ Long – Hải Phòng chính thức đủ điều kiện thông xe.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"size-full wp-image-907943 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.dkn.tv/wp-content/uploads/2018/08/cao-tco.jpg\" alt=\"\" width=\"640\" height=\"360\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Dự án cao tốc Hạ Long – Hải Phòng được khởi công từ ngày 13/9/2014 tại vị trí đầu tuyến thuộc phường Đại Yên, TP Hạ Long (Quảng Ninh).</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dkn.tv/wp-content/uploads/-000//1/cao_toc_zing_2-640x360.jpg\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Báo cáo của Sở Giao thông Vận tải và Công ty cổ phần BOT cầu Bạch Đằng, đến nay cả hai dự án đường cao tốc nối TP Hạ Long với cầu Bạch Đằng và dự án <span style=\"box-sizing: border-box; font-weight: bold;\">cầu Bạch Đằng </span>đã hoàn thiện toàn bộ các hạng mục xây lắp chính, <em style=\"box-sizing: border-box;\">theo Tiền Phong.</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"wp-image-907940 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.dkn.tv/wp-content/uploads/2018/08/bac-dang-549x366.jpg\" alt=\"\" width=\"549\" height=\"366\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: center; font-family: Arial;\"><em style=\"box-sizing: border-box;\">Cầu Bạch Đằng đang hoàn thiện các hạng mục công trình phụ trợ, chờ ngày thông xe. (Ảnh; Tiền Phong).</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Đây là dự án tiêu biểu với tổng vốn đầu tư ngoài ngân sách lên đến trên 30.000 tỷ đồng. Cao tốc Hạ Long – Hải Phòng dài 24,6 km, rộng 25 m, được thiết kế 4 làn xe, vận tốc tối đa 100 km/h.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dkn.tv/wp-content/uploads/-000//1/cao_toc_ha_long_hai_phong_zing_4-640x427.jpg\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Đường dẫn và nút giao cuối tuyến cầu Bạch Đằng đã hoàn thành thi công thảm nhựa mặt đường cầu chính. <img class=\"aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dkn.tv/wp-content/uploads/-000//1/cao_toc_ha_long_hai_phong_zing_5-640x427.jpg\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Nhà thầu đã thi công sơn kẻ vạch, lắp đặt lan can cầu, đường dẫn và tổ chức thử tải.<br style=\"box-sizing: border-box;\" /><img class=\"aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dkn.tv/wp-content/uploads/-000//1/cao_toc_ha_long_hai_phong_zing_12-640x427.jpg\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Cao tốc Hạ Long – Hải Phòng đến nay cơ bản hoàn thành và sẵn sàng đưa vào hoạt động vào tháng 9 tới.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Dự án được tỉnh Quảng Ninh coi là bước đột phá về nội lực, tiên phong trong cả nước trong việc đề xuất Chính phủ được tự huy động các nguồn vốn để xây dựng</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dkn.tv/wp-content/uploads/-000//1/cao_toc_zing_7-640x360.jpg\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Sau khi hoàn thành, tuyến đường này được đánh giá sẽ đóng vai trò quan trọng trong việc hoàn chỉnh tuyến kết nối vùng kinh tế động lực phía Bắc (Hà Nội – Hải Phòng – Quảng Ninh), hoàn thiện tuyến cao tốc theo trục ven biển vùng duyên hải Bắc Bộ.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Công trình cũng rút ngắn quãng đường từ TP Hạ Long (Quảng Ninh) đi Hà Nội từ 180 km hiện nay xuống còn 130 km, thời gian đi ôtô giảm từ 3,5 giờ xuống còn 1,5 giờ. Chiều dài quãng đường từ Hải Phòng đi Hạ Long giảm 2/3 (từ 75 km còn 25 km).</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Tuyến cao tốc sẽ giúp cho việc kết nối hạ tầng giao thông giữa các tuyến được đồng bộ, tăng lưu lượng hàng hóa vận chuyển từ Quảng Ninh đi các tỉnh khu vực phía Bắc và ngược lại.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><em style=\"box-sizing: border-box;\">Thanh Thanh (TH)</em></p>', 'posts/April2019/rkNEzFwJyfsKdu7loSUE.jpg', 'tu-1-9-chinh-thuc-thong-xe-cao-toc-ha-long-hai-phong', 'This is the meta description', 'keyword1, keyword2, keyword3', 1, 0, '2019-03-31 21:16:10', '2019-04-23 07:59:05'),
(2, 1, 1, 'HẠ LONG TUYỆT ĐẸP BÊN BỜ DI SẢN TRONG ‘DẤU ẤN VIỆT NAM’', '', 'Nằm bên bờ di sản thiên nhiên thế giới 2 lần được UNESCO công nhận, có thể nói Hạ Long là thành phố du lịch nổi bật nhất miền Bắc với thiên nhiên kỳ thú, cơ sở hạ tầng phát triển.', '<p class=\"the-article-summary cms-desc\" style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Nằm bên bờ di sản thiên nhiên thế giới 2 lần được UNESCO công nhận, có thể nói Hạ Long là thành phố du lịch nổi bật nhất miền Bắc với thiên nhiên kỳ thú, cơ sở hạ tầng phát triển.<span id=\"more-4236\" style=\"box-sizing: border-box;\"></span></p>\n<div class=\"the-article-body cms-body\" style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\">\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/1_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 1\" width=\"2048\" height=\"1238\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Toàn cảnh vịnh Hạ Long nhìn từ núi Bài Thơ. Vịnh Hạ Long nằm ở phía đông bắc Việt Nam, bao gồm vùng biển thuộc thành phố Hạ Long, thành phố Cẩm Phả và một phần huyện đảo Vân Đồn, tỉnh Quảng Ninh. Sở hữu vẻ đẹp mang tính thẩm mỹ cao và giá trị địa chất kiến tạo phong phú, vịnh Hạ Long trở thành di sản thiên nhiên thế giới do UNESCO công nhận, đồng thời nằm trong danh sách những vịnh đẹp nhất thế giới. Ảnh: <em style=\"box-sizing: border-box;\">Hà Minh Hiếu.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/2_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 2\" width=\"2048\" height=\"1247\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Nằm bên bờ thắng cảnh thơ mộng, thành phố Hạ Long vừa mang nét mềm mại, nhẹ nhàng, lại vừa mang dấu ấn hiện đại, phát triển, năng động của công cuộc công nghiệp hóa, đô thị hóa đất nước. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/3_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 3\" width=\"1688\" height=\"1021\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Con đường Bài Thơ quanh co uốn lượn dọc bờ biển. Một bên là Công viên hoa Hạ Long tươi xanh, một bên là vịnh biển vừa hùng vĩ vừa nên thơ. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/4_3.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 4\" width=\"1257\" height=\"760\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Cầu Bãi Cháy nối hai bờ sông Cửa Lục là một trong những cây cầu dây văng đẹp nhất cả nước, đồng thời có ý nghĩa giao thông quan trọng, thúc đẩy sự phát triển của vùng kinh tế trọng điểm phía Bắc. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung. </em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/5_3.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 5\" width=\"2048\" height=\"1238\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Những công trình giúp nâng tầm thành phố Hạ Long như vòng quay Mặt Trời, cáp treo Nữ Hoàng, cầu Bãi Cháy cùng tụ hội trong một khung hình, tỏa sáng lung linh, rực rỡ khi thành phố lên đèn. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung. </em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/6_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 6\" width=\"2048\" height=\"1247\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Vòng quay Mặt Trời nằm trong tổ hợp dự án công viên Đại Dương, được đầu tư mạnh tay với những hạng mục vui chơi giải trí hàng đầu thế giới, trải rộng trên quy mô lớn, thu hút đông đảo du khách. Ảnh: <em style=\"box-sizing: border-box;\">Bảo Ngọc.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" title=\"Hạ Long tuyệt đẹp bên bờ di sản trong \'Dấu ấn Việt Nam\' hình ảnh 7\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/7_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 7\" width=\"960\" height=\"580\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Những cabin lấp lánh đèn trên vòng quay chầm chậm đưa du khách lên cao, phóng tầm mắt ngắm nhìn toàn cảnh Hạ Long xinh đẹp. Ảnh: <em style=\"box-sizing: border-box;\">Bảo Ngọc.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" title=\"Hạ Long tuyệt đẹp bên bờ di sản trong \'Dấu ấn Việt Nam\' hình ảnh 8\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/8_3.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 8\" width=\"2048\" height=\"1238\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Toàn cảnh công viên Đại Dương Hạ Long – điểm sáng mới trong ngành du lịch tỉnh Quảng Ninh.</td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" title=\"Hạ Long tuyệt đẹp bên bờ di sản trong \'Dấu ấn Việt Nam\' hình ảnh 9\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/9_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 9\" width=\"2048\" height=\"1238\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Công viên có nhiều trò chơi mạo hiểm, tạo cảm giác mạnh cho du khách. Ảnh: <em style=\"box-sizing: border-box;\">Bảo Ngọc.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" title=\"Hạ Long tuyệt đẹp bên bờ di sản trong \'Dấu ấn Việt Nam\' hình ảnh 10\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/10_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 10\" width=\"2048\" height=\"1238\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Nằm ngay kế bên vịnh Hạ Long ở phía đông bắc là vịnh Bái Tử Long, một cảnh đẹp hoang sơ còn lưu giữ những nét văn hóa sinh hoạt truyền thống của địa phương từ thuở xa xưa. Nhìn từ trên cao, những hòn đảo trên vịnh như những con rồng chầu vào vùng than. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung.</em></td>\n</tr>\n</tbody>\n</table>\n<div id=\"advMiddle2\" class=\"banner\" style=\"box-sizing: border-box;\"> </div>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/11_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 11\" width=\"2048\" height=\"1238\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Vịnh gồm hàng trăm hòn đảo lớn nhỏ và khá đông người sinh sống. Người dân sống trên vịnh chủ yếu làm nghề đánh bắt và nuôi trồng thủy hải sản. Những chuyến tàu khách bằng gỗ hàng ngày vẫn đưa khách và hàng hóa từ đất liền ra các xã đảo. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" title=\"Hạ Long tuyệt đẹp bên bờ di sản trong \'Dấu ấn Việt Nam\' hình ảnh 12\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/12_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 12\" width=\"2048\" height=\"1238\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Một ngư dân đang gỡ lưới cá trên vịnh. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/121.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 13\" width=\"2032\" height=\"1229\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Ngoài nét đẹp thiên nhiên ban tặng, thành phố Hạ Long còn là trung tâm kinh tế phát triển năng động, sôi nổi với những khu công nghiệp công nghệ cao, cảng biển nước sâu. Trong ảnh là cảng Cái Lân nhìn từ giữa dòng Cửa Lục với những chiếc cần cẩu giương cao. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" title=\"Hạ Long tuyệt đẹp bên bờ di sản trong \'Dấu ấn Việt Nam\' hình ảnh 14\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/13_5.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 14\" width=\"5409\" height=\"3269\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Vịnh Hạ Long rực sáng trong đêm. Với những giá trị sẵn có cùng nỗ lực xây dựng, phát triển không ngừng, thành phố Hạ Long hứa hẹn sẽ tiếp tục dẫn đầu trong các ngành công nghiệp – dịch vụ, đóng góp to lớn vào sự phát triển của đất nước.</td>\n</tr>\n</tbody>\n</table>\n</div>', 'posts/April2019/BPslV6Y37jNJIC4qL3Sh.jpg', 'ha-long-tuyet-dep-ben-bo-di-san-trong-dau-an-viet-nam', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 1, 0, '2019-03-31 21:16:10', '2019-04-22 19:45:56');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 'CẨM NANG DU LỊCH HẠ LONG', '', 'Nhằm đem đến cho du khách sự tiện lợi và trải nghiệm kì nghỉ tốt nhất tại Hạ Long, DTJ Homtel trân trọng gửi đến Quý khách cuốn cẩm nang du lịch đầy đủ nhất về thành phố du lịch Hạ Long. Cảm ơn Quý khách đã sử dụng dịch vụ của DTJ Hometel và hi vọng Quý khách sẽ tiếp tục ủng hộ chúng tôi trong chặng đường sắp tới.st', '<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Nhằm đem đến cho du khách sự tiện lợi và trải nghiệm kì nghỉ tốt nhất tại Hạ Long, DTJ Homtel trân trọng gửi đến Quý khách cuốn cẩm nang du lịch đầy đủ nhất về thành phố du lịch Hạ Long. Cảm ơn Quý khách đã sử dụng dịch vụ của DTJ Hometel và hi vọng Quý khách sẽ tiếp tục ủng hộ chúng tôi trong chặng đường sắp tới.<span id=\"more-3948\" style=\"box-sizing: border-box;\"></span><br style=\"box-sizing: border-box;\" />Chúc Quý khách và gia đình, bạn bè có một kỳ nghỉ trọn vẹn, hạnh phúc tại thành phố Hạ Long.<br style=\"box-sizing: border-box;\" />Trân trọng!</p>\n<h3 style=\"box-sizing: border-box; font-family: Montserrat; line-height: 1.1em; color: #333333; margin-top: 40px; margin-bottom: 15px; font-size: 24px; letter-spacing: 0.21px; text-align: center;\"><span style=\"box-sizing: border-box;\">THÔNG TIN NHANH DU LỊCH HẠ LONG</span></h3>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">I. Phương tiện tham quan Hạ Long</span></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bold;\">1. Taxi đi lại trong thành phố có các hãng như</span>:</p>\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding-left: 0px;\">\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Taxi 886 –Móng Cái: 033 3886 886.</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Hạ Long: 033 362 62 62.</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Hồng Gai: 033 384 84 84</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Mai Linh: 033 3628 628</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Thành Hưng: 033. 3659659</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Thịnh Hưng: 033. 3616161</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Sao Mai: 033. 3822822</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Đông Bắc: 033. 3828282</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Quảng Ninh: 033. 3656656</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Bãi Cháy: 033. 3646464</li>\n</ul>\n<p><img class=\"alignnone size-full wp-image-3960\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/taxihalong.jpg\" sizes=\"(max-width: 900px) 100vw, 900px\" srcset=\"http://dtjhometel.com/wp-content/uploads/2018/06/taxihalong.jpg 900w, http://dtjhometel.com/wp-content/uploads/2018/06/taxihalong-768x512.jpg 768w, http://dtjhometel.com/wp-content/uploads/2018/06/taxihalong-600x400.jpg 600w\" alt=\"\" width=\"100%\" /></p>\n<div class=\"clearfix\" style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\"> </div>\n<div style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">2. Tàu tham quan Vịnh hạ Long</span></div>\n<div class=\"col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 385px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\">\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Bạn có thể thuê tàu tham quan vịnh Hạ Long tại 2 cảng sau:</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">– <span style=\"box-sizing: border-box; font-weight: bold;\">Cảng quốc tế Tuần Châu</span> (ĐT: 033.3842134)</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">– <span style=\"box-sizing: border-box; font-weight: bold;\">Cảng khách Hòn Gai Vinashin</span> (ĐT: 033.3628234)</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Giá thuê tàu trên vịnh Hạ Long, vịnh Bái Tử Long khác nhau theo từng loại tàu. Thuê cả tàu giá dao động từ 1,2 đến 1,6tr/ tàu.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Ngoài ra quý khách cần mua vé du lịch trên Vịnh Hạ Long: Người lớn: 290.000đ, trẻ em dưới 1,2m miễn phí.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><img class=\"size-full wp-image-3964 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/Signature-Cruise-KN.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"http://dtjhometel.com/wp-content/uploads/2018/06/Signature-Cruise-KN.jpg 1280w, http://dtjhometel.com/wp-content/uploads/2018/06/Signature-Cruise-KN-768x395.jpg 768w\" alt=\"\" width=\"100%\" /></p>\n</div>\n<div class=\"col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 385px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\">\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bold;\">3. Các tuyến tham quan Vịnh:</span><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Tuyến 1</span>: Cảng tàu – Công viên Vạn Cảnh</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Động Thiên Cung, hang Đầu Gỗ, hòn Chó Đá, làng chài Ba Hang, hòn Đỉnh Hương, hòn Trống Mái (Gà Chọi).</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Tuyến 2</span>: Cảng tàu – Công viên các hang động</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Bãi tắm Soi Sim, đảo Ti Tốp, hang Sửng Sốt, động Mê Cung, hang Bồ Nâu, hang Luồn, hang Trống, hang Trinh Nữ, hang Hồ Động Tiên.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Tuyến 3</span>: Cảng tàu – Trung tâm bảo tồn văn hóa biển</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Trung tâm Văn hóa nổi Cửa Vạn, hang Tiên Ông, hồ Ba Hầm, đền Bà Men, Áng Dù, rừng Trúc.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Tuyến 4</span>: Cảng tàu – Trung tâm giải trí biển</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Hang Cỏ, hang Thầy, Cống Đỏ, hang Cạp La, Làng chài Vông Viêng, khu sinh thái Tùng Áng – Cống Đỏ, công viên Hòn Xếp.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Tuyến 5</span>: Cảng tàu – Bến Gia Luận (Cát Bà – Hải Phòng)</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Hòn Chó Đá, làng chài Ba Hang, hòn Đỉnh Hương, hòn Trống Mái (Gà Chọi)</p>\n</div>\n<div class=\"clearfix\" style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\"> </div>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">II. Các địa điểm tham quan của Hạ Long</span></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Động Thiên Cung: </span>Động Thiên Cung nằm ở phía bắc đảo Đầu Gỗ, cách cảng tàu du lịch 4km về phía nam. Là một trong những hang động đẹp nhất ở Hạ Long. Hang rộng gần 10.000m² có cấu trúc rất phức tạp, gồm nhiều cấp, nhiều ngăn với các trần và bờ vách rất cao, rộng. Đặc biệt trong hang, ở đâu đâu ta cũng thấy vô vàn các khối nhũ, măng đá với các hình dáng kì lạ.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"size-full wp-image-3970 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/dongthiencung.jpg\" sizes=\"(max-width: 1000px) 100vw, 1000px\" srcset=\"http://dtjhometel.com/wp-content/uploads/2018/06/dongthiencung.jpg 1000w, http://dtjhometel.com/wp-content/uploads/2018/06/dongthiencung-768x513.jpg 768w, http://dtjhometel.com/wp-content/uploads/2018/06/dongthiencung-600x400.jpg 600w\" alt=\"\" width=\"100%\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Hang Đầu Gỗ: </span>Cùng nằm trên dãy đảo Đầu Gỗ, cách động Thiên Cung khoảng 300m. Đầu Gỗ là hang động rộng, đẹp mang nét cổ kính rêu phong, người Pháp gọi là “Động các kỳ quan”.  Hang có hệ động thực vật đa dạng phong phú. Do có cửa hang được mở rộng nên độ ẩm trong lòng hang cao, cộng với sự tác động của ánh sáng mặt trời nên có thể thấy ngay được sự phát triển đa dạng của hệ thực vật, đặc biệt là rêu, cây dương xỉ và cây thân gỗ… Đây là một đặc điểm khác biệt so với nhiều hang động khác trên vịnh Hạ Long.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Động Mê Cung </span>nằm ở độ cao 25m trên đảo Lờm Bò cách đảo Ti-tốp khoảng 2km về phía tây nam. Nhìn từ xa cửa động như một mái nhà ăn sâu vào sườn đảo. Động Mê Cung có cấu trúc phức tạp nhiều tầng cấp, nhiều ngăn, ngách trải rộng trong phạm vi mái đá với những hanh lang dài hơn 100m, cao dần về phía tây và trông xuống một hồ nhỏ có tên Hồ Mê Cung.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Hang Trống và Hang Trinh Nữ:</span> Nằm ở trên hai cánh của một vòng cung núi nhỏ phía đông dãy đảo Bồ Hòn, cách hang Sửng Sốt hơn 3km theo đường biển về phía đông nam. Hai hang cách nhau 700-800m qua một vụng biển nhỏ.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Đảo Soi Sim:</span> Soi Sim có diện tích khoảng 8,7ha, nằm ở phía tây Vịnh Hạ Long, cách cảng tàu du lịch Bãi Cháy (TP Hạ Long) khoảng 12km, cách đảo Ti Tốp khoảng 700m. Trên đảo là một khu rừng nguyên sinh với nhiều loại thực vật phong phú, trong đó có nhiều loài cây đặc hữu, có giá trị, đặc trưng của hệ sinh thái Vịnh Hạ Long. Người dân địa phương cho biết, do trên đảo mọc rất nhiều cây sim nên mới được gọi tên là Soi Sim.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"size-full wp-image-3971 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/daosoisim.jpg\" sizes=\"(max-width: 960px) 100vw, 960px\" srcset=\"http://dtjhometel.com/wp-content/uploads/2018/06/daosoisim.jpg 960w, http://dtjhometel.com/wp-content/uploads/2018/06/daosoisim-768x356.jpg 768w\" alt=\"\" width=\"100%\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Đảo Ti Tốp:</span> là hòn đảo có bờ dốc đứng, một bờ nghiêng với một bãi cát trắng, phẳng. Các tàu du lịch thường ghé vào đây. Du khách lên bờ để tắm biển hoặc leo lên đỉnh núi để ngắm toàn quang cảnh hòn đảo. Từ trên cao nhìn xuống, bãi tắm Ti Tốp có hình dáng như một vầng trăng ôm trọn lấy chân đảo. Khác với nhiều điểm du lịch khác trên Vịnh Hạ Long, ngoài phong cảnh thiên nhiên tươi đẹp, đảo Ti Tốp còn sở hữu một bãi tắm đẹp, gọi là bãi tắm Ti Tốp. Bãi tắm tuy diện tích không lớn nhưng yên tĩnh, thoáng đãng và rất sạch, cát ở bãi tắm liên tục được thuỷ triều lên xuống rửa sạch, trắng tinh, nước biển trong xanh bốn mùa.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Hang Luồn</span>: Du lịch Hạ Long tự hào với hệ thống hang động rất lớn, mỗi hang động đều có những vẻ đẹp riêng và những câu chuyện gắn liền với nó. Một trong những hang động tiêu biểu là hang Luồn nằm trên đảo Bồ Hòn, cách Bãi Cháy 14km. Tại đây bạn có thể ngắm nhìn những búp thạch nhũ được kiến tạo trong hàng triệu năm với nhiều hình dạng và kích cỡ khác nhau. Phía trước hang là hòn Con Rùa, bên phải là Cổng Trời.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Hang Sửng Sốt</span>: nằm ở khu vực trung tâm của Di sản Thế giới vịnh Hạ Long, trên đảo Bồ Hòn. Bên trong hang Sửng Sốt là những nhũ đá hóa thạch có hình dạng vô cùng phong phú. Hang Sửng Sốt nằm ở khu vực tập trung nhiều điểm tham quan nổi tiếng của du lịch Hạ Long (bãi tắm Ti Tốp – hang Bồ Nâu – động Mê Cung – hang Luồn – hang Sửng Sốt) và được người Pháp đặt cho hang cái tên “Grotte des surprises” (động của sự sửng sốt).</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Bãi Cháy: </span>Khu nghỉ mát Bãi Cháy nằm dọc theo bờ vịnh Hạ Long, thích hợp để nghỉ ngơi và tắm biển. Khu nghỉ mát này quanh năm lộng gió biển, nhiệt độ trung bình năm khoảng trên 20° C.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Đảo Tuần Châu</span>: là hòn đảo đẹp nhất trong số 1.969 hòn đảo ở vịnh Hạ Long, cũng là hòn đảo duy nhất có dân cư sinh sống. Tại đây có bờ biển nhân tạo lớn nhất Việt Nam. Bờ biển Trà Cổ thoai thoải với lớp cát trắng là nơi lý tưởng để vui chơi và tham gia các trờ chơi dưới nước thú vị.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"size-full wp-image-3973 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/tuan-chau-island-halong-bay.jpg\" sizes=\"(max-width: 1000px) 100vw, 1000px\" srcset=\"http://dtjhometel.com/wp-content/uploads/2018/06/tuan-chau-island-halong-bay.jpg 1000w, http://dtjhometel.com/wp-content/uploads/2018/06/tuan-chau-island-halong-bay-768x432.jpg 768w\" alt=\"\" width=\"100%\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Làng chài Cửa Vạn</span>: Một trong những điểm đến đậm chất Việt của du lịch Hạ Long. Tại làng chài Cửa Vạn, du khách không chỉ được đắm mình trong không gian êm ả, thanh bình mà còn được tìm hiểu đời sống văn hoá của ngư dân, được học cách cách chèo thuyền, giăng lưới, thả câu bắt tôm cá…</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Đảo Quan Lạn </span>thuộc huyện Vân Đồn, cách thành phố Hạ Long khoảng 55 km. Đảo Quan Lạn được biết đến là điểm du lịch biển đẹp, hấp dẫn du khách bởi không gian trong xanh, khoáng đạt, cảnh quan nguyên sơ, trong lành. Trên đảo còn có nhiều di tích lịch sử văn hóa, ghi dấu những chiến công hiển hách của cha ông ta trong đấu tranh chống giặc ngoại xâm. Đặc biệt đến Quan Lạn vào dịp hè, điểm đến không thể thiếu là các bãi tắm như: Sơn Hào, Chân Tiên… Lưu trú tại đây, du khách có thể lựa chọn các khu nhà nghỉ sát bãi biển, tham gia đốt lửa trại giao lưu với người dân địa phương, ra khơi đánh cá, câu mực…</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Đảo Ngọc Vừng</span> là đảo đất có diện tích khoảng 30 km2 thuộc vịnh Bái Tử Long, cách trung tâm thị xã Cẩm Phả khoảng 40km, cách cảng tàu du lịch Tuần Châu khoảng 35km. Trước kia, người dân trên đảo chuyên làm nghề khai thác ngọc trai dưới đáy biển. Ngọc trai ở đây nổi tiếng đẹp và sáng. Vào ban đêm, tàu thuyền từ xa thường nhìn thấy hào quang của trai biển tạo thành một vừng sáng xung quanh đảo, vì thế mà đảo có tên là Ngọc Vừng. Đảo có núi Vạn Xuân cao 182m, có di chỉ khảo cổ thuộc văn hóa Hạ Long, có bến cảng cổ Cống Yên thuộc hệ thống thương cảng cổ Vân Đồn từ thế kỷ XII và di tích thành cổ nhà Nguyễn.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Đảo Mắt Rồng:</span> Đảo Mắt Rồng với diện tích khoảng 30 ha còn được biết đến bởi tên gọi là hòn Bái Đông. Đảo nằm ở phía Nam của vùng vịnh Hạ Long, tiếp giáp với khu vực vịnh Lan Hạ. Có thể nói điểm thu hút nhất của đảo Mắt Rồng nằm ở nét hoang sơ, nguyên thủy. Nếu có khả năng tài chính thực hiện một chuyến du lịch bằng thủy phi cơ, bạn sẽ được chiêm ngưỡng toàn bộ vịnh Hạ Long từ trên cao thì sẽ hiểu tại sao hòn đảo này được gọi bằng cái tên Mắt Rồng. Đảo nằm lọt thỏm giữa các dãy núi hùng vĩ. Và chắc chắn nếu bạn được tận mắt chiêm ngưỡng làn nước trong xanh mát lạnh của đảo bạn sẽ chỉ muốn đắm mình mãi ở nơi dường như có thể nhìn thấu cả đáy đó.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Núi Bài Thơ</span> nằm giữa TP Hạ Long mang một dáng vẻ vừa kỳ bí vừa thu hút du khách ngay từ cái nhìn đầu tiên. Từ những góc độ khác nhau, núi lúc có dáng như hổ phục, lúc có dáng như sư tử vờn mồi, lúc có dáng như con rồng sắp cất cánh. Từ đỉnh núi Bài Thơ cao 168m – một trong những ngọn núi cao nhất tại Hạ Long, du khách có thể phóng tầm mắt ra xa nhìn bao quát hầu hết các trục đường chính của TP Hạ Long – thủ phủ tỉnh Quảng Ninh cũng như di sản thiên nhiên thế giới vịnh Hạ Long.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Bảo tàng Quảng Ninh: </span></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Bảo tàng – thư viện Quảng Ninh là một công trình kiến trúc nghệ thuật độc đáo. Chỉ mới nhìn từ bên ngoài thôi nhưng đã có rất nhiều bạn trẻ phải “wow” lên rồi! Ngay từ hàng bậc thang rất cao tới phần kính đen tuyền như tấm gương khổng lồ phản chiếu hình ảnh biển trời Hạ Long, cộng thêm font chữ viết tên Bảo tàng đầy ấn tượng đã đủ để chụp một tá tấm hình sống ảo. Vào đến phía trong thì hẳn là ai cũng phải ngợp vì không gian rộng rãi. Với 3 tầng nhà, Bảo tàng Quảng Ninh đem đến một cái nhìn đầy đủ nhất cho khách tham quan về thiên nhiên và con người nơi đây. Bảo tàng mở cửa vào các ngày trong tuần, trừ thứ 2, từ 8h sáng đến 17h chiều. Giá vé để vào tham quan bảo tàng sẽ là 30.000 đồng/lần/người với người lớn; 15.000 đồng/lần/người với học sinh – sinh viên và 10.000 đồng/lần/người với trẻ em.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Dragon Park: </span>Nếu bạn đi đông người, ưa vui chơi, khám phá và muốn thử qua cảm giác mạnh thì Dragon Park sẽ rất thích hợp đây. Đảm bảo là vui chơi đã đời không thua kém bất kỳ công viên giải trí nào đâu nhé! Đây là khu công viên chủ đề lớn nhất Đông Nam Á cơ mà! Công viên chủ đề Dragon Park nằm trong quần thể Sun World Group Park có tới hơn 30 trò chơi đủ các thể loại, từ siêu mạo hiểm, mang đến cảm giác được chinh phục rất đã cho đến những trò chơi đã quen thuộc và gắn liền tuổi thơ.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"size-full wp-image-3975 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/sunwordhalong.jpg\" sizes=\"(max-width: 1000px) 100vw, 1000px\" srcset=\"http://dtjhometel.com/wp-content/uploads/2018/06/sunwordhalong.jpg 1000w, http://dtjhometel.com/wp-content/uploads/2018/06/sunwordhalong-768x432.jpg 768w\" alt=\"\" width=\"100%\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Cáp treo Nữ hoàng</span> băng qua cửa ngõ Vịnh Cửa Lục, nối liền từ bờ biển Bãi Cháy tới Ba Đèo (Hòn Gai, TP. Hạ Long), nên nếu có mặt trên hệ thống cáp treo này bạn sẽ phải choáng ngợp trước cảnh sắc xinh đẹp của vịnh Hạ Long từ trên cao. Dù là ngày hay đêm thì khung cảnh mà bạn được trực tiếp trải nghiệm đều rất rất tuyệt! Nằm trên đỉnh đồi Ba Đèo, Vòng quay Mặt trời là vòng quay lớn thứ hai Việt Nam và cũng là một trong những vòng quay lớn hàng đầu thế giới. Tại đây, bạn sẽ được ngắm vịnh Hạ Long từ độ cao 215m so với mực nước biển cơ đấy! Thu vào mắt mình những hình ảnh rộng lớn, kỳ vĩ và tuyệt đẹp của vịnh Hạ Long nhất định sẽ là trải nghiệm không thể bỏ lỡ.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Chùa Ba Vàng:</span> Toạ lạc trên lưng chừng núi Thành Đẳng, chùa còn có tên gọi là Bảo Quang Tự, tên dân gian thường gọi là Ba Vàng. Về đêm, ngôi chùa được thắp sáng tạo nên một khung cảnh vô cùng thoát tục như chốn bồng lai tiên cảnh. Chùa nằm ở độ cao 340m trên một vị trí rất đẹp ở phía Tây thành phố Uông Bí, phía trước là Bạch Đằng giang uốn lượn, xa xa là thành phố cảng Hải Phòng, hút tầm mắt là biển Đồ Sơn với muôn trùng sóng vỗ. Bên trái là những dãy núi Thanh Long trùng điệp chầu về, bên phải là những dãy núi Bạch Hổ hùng vĩ phục xuống.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Khu di tích Yên Tử:</span> Du lịch Hạ Long không chỉ có biển. Nếu thích đi chùa lễ bái thì du khách hãy ghé khu di tích Yên Tử. Đây là một hệ thống chùa, am, tháp và rừng cây cổ thụ hoà quyện với cảnh vật thiên nhiên, nằm rải rác từ dốc Đỏ đến núi Yên Tử theo chiều cao dần.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">III. Trải nghiệm và trò chơi</span></p>\n<div>\n<div class=\"col-md-3\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 192.5px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px; text-align: center;\"><img class=\"size-full wp-image-3978 aligncenter\" style=\"box-sizing: border-box; border: 1px solid #333333; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto; padding: 3px;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/cheo-thuyen-kayak.jpg\" alt=\"\" width=\"100%\" /><br style=\"box-sizing: border-box;\" /><em style=\"box-sizing: border-box;\">Chèo thuyền Kayak</em></div>\n<div class=\"col-md-3\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 192.5px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px; text-align: center;\"><img class=\"size-full wp-image-3979 aligncenter\" style=\"box-sizing: border-box; border: 1px solid #333333; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto; padding: 3px;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/Cristina42.jpg\" alt=\"\" width=\"100%\" /><br style=\"box-sizing: border-box;\" /><em style=\"box-sizing: border-box;\">Câu mực đêm</em></div>\n<div class=\"col-md-3\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 192.5px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px; text-align: center;\"><img class=\"size-full wp-image-3980 aligncenter\" style=\"box-sizing: border-box; border: 1px solid #333333; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto; padding: 3px;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/ngamthuyphico.jpg\" alt=\"\" width=\"100%\" /><br style=\"box-sizing: border-box;\" /><em style=\"box-sizing: border-box;\">Ngắm Vịnh Hạ Long từ thủy phi cơ</em></div>\n<div class=\"col-md-3\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 192.5px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px; text-align: center;\"><img class=\"size-full wp-image-3977 aligncenter\" style=\"box-sizing: border-box; border: 1px solid #333333; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto; padding: 3px;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/captreoxebus2tang.jpg\" alt=\"\" width=\"100%\" /><br style=\"box-sizing: border-box;\" /><em style=\"box-sizing: border-box;\">Đi cáp treo ‘xe bus 2 tầng’</em></div>\n</div>\n<div class=\"clear\" style=\"clear: both;\"> </div>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"> </p>\n<div class=\"col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 385px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\">\n<div style=\"clear: both;\"> </div>\nIV. Đặc sản, món ăn, ăn vặt của Hạ Long Ăn sáng: Bún hải sản, bún chả, bún cù kỳ – trục đường Cái dăm – song song với Đường Hoàng Quốc Việt. Xôi trắng chả mực, Bánh cuốn chả mực Món ngán, Sá sùng. Món sam biển, Bánh “gật gù” Nem chua, nem chạo thị trấn Quảng Yên Cà sấy Tiên Yên Rượu nếp ngâm Hoành Bồ ở Hạ Long V. Nhà hàng, quán cafe ngon tại Hạ Long 1958 Restaurant Linh Dan Restaurant Nhà hàng Cua Vàng Nhà Hàng Vịnh Cát Nhà hàng Rock House Pizza Nhà hàng Hồng Hạnh: tại Bãi Cháy và Hòn Gai Nhà hàng Hoàng Quân – Hạ Long Nhà Hàng Cù Kì Bay Papa’s BBQ Midori House Quán cà phê Wander Station Brisa Coffee Cộng Cà Phê Cafe Nam Phong Emeraude Cafex VI. Phương tiện di chuyển 1. Xe máy/ô tô Lộ trình Hà Nội – Bắc Ninh – Hạ Long: 155 km. Đây là tuyến đường bộ từ Hà Nội đi du lịch Hạ Long ngắn nhất, đi bằng ôtô hết khoảng từ khoảng 3 tiếng, hành trình như sau: – Hà Nội theo tuyến đường 5 – ngã ba Sài Đồng: 10 km. – Sài Đồng theo đường 1 – Bắc Ninh: 23 km. – Từ Bắc Ninh theo đường 18 – Phả Lại- Chí Linh – Đông Triều – Uông Bí – Hạ Long: 122 km. Lộ trình Hà Nội – Bắc Ninh – Hạ Long: 160 km. – Sân bay Nội bài (Hà Nội) theo đường Nội Bài – Bắc Ninh (32km) đến Bắc Ninh. – Nối vào Quốc lộ 18a qua Phả Lại, Sao Đỏ, Đông Triều, Uống Bí đến Hạ Long. 2. Xe khách Du khách có thể đi các hãng xe lớn tập trung ở bến xe Mỹ Đình, chuyến đầu tiên khởi hành lúc 6:00 giờ sáng và chuyến cuối lúc 17:00 giờ chiều (chuyến hành trình mất từ 3-4 tiếng). Các chuyến xe cách nhau từ 5 đến 15 phút đến bến xe Bãi Cháy ở Hạ Long, tỉnh Quảng Ninh. Giá vé xe dao động từ 100 ngàn đồng/khách ghế ngồi đến 200 ngàn đồng/khách giường nằm. 3. Thủy phi cơ Hiện nay ngoài các phương tiện di chuyển thông thường, khách du lịch Vịnh Hạ Long từ Hà Nội còn có thêm sự lựa chọn mới với thủy phi cơ hiện đại và sang trọng của Hãng hàng không Hải Âu.\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Để đặt vé máy bay thủy phi cơ,  bạn có thể vào trang website :<span style=\"box-sizing: border-box; font-weight: bold;\"> </span><a style=\"box-sizing: border-box; background-color: transparent; color: #e7c130; text-decoration-line: none; outline: none;\" href=\"https://www.seaplanes.vn/vi/\"><span style=\"box-sizing: border-box; font-weight: bold;\">seaplanes.vn</span></a></p>\n</div>', 'posts/April2019/9LZ3F6N6YgPS3EojAhF7.jpg', 'cam-nang-du-lich-ha-long', 'This is the meta description', 'keyword1, keyword2, keyword3', 1, 0, '2019-03-31 21:16:10', '2019-04-22 20:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-03-31 21:16:09', '2019-03-31 21:16:09'),
(2, 'user', 'Normal User', '2019-03-31 21:16:09', '2019-03-31 21:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `price` float DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `policy` longtext COLLATE utf8mb4_unicode_ci,
  `available` longtext COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `booked` tinyint(4) DEFAULT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `title`, `price`, `excerpt`, `description`, `policy`, `available`, `meta_description`, `status`, `booked`, `apartment_id`, `images`, `image`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Twin', '<p>2 NL + 2 trẻ em dưới 12 tuổi <br />(ở ghép tối đa thêm 1 người lớn có phụ thu)</p>', 1100000, '<p>Phòng Twin nằm trong căn hộ 2PN. (Căn hộ có 2 Phòng Ngủ, 2 Nhà vệ sinh riêng biệt khép kín) <br />Khách sử dụng chung nhà bếp và phòng khách miễn phí</p>', '<p><span style=\"color: #222222; font-family: utmavo;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a est libero. Nam in mollis lorem, id lobortis dolor. Maecenas consectetur elit a leo fringilla rutrum. Morbi non volutpat metus. Vivamus nec enim ac augue pellentesque rutrum sit amet non odio. Donec ornare aliquet urna. Quisque euismod id mauris eget convallis.</span><br style=\"box-sizing: border-box; color: #222222; font-family: utmavo;\" /><br style=\"box-sizing: border-box; color: #222222; font-family: utmavo;\" /><span style=\"color: #222222; font-family: utmavo;\">Vestibulum vel nunc tincidunt turpis posuere suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam vehicula odio non ante posuere vestibulum. Quisque vulputate ac libero porttitor dignissim. Curabitur quis elit placerat, pellentesque quam id, malesuada magna. Vivamus ut rutrum nisi. In vitae nulla in purus aliquet vestibulum ac ac lorem. Etiam pharetra quam quis arcu consectetur, vel tempus mauris sollicitudin.</span><br style=\"box-sizing: border-box; color: #222222; font-family: utmavo;\" /><br style=\"box-sizing: border-box; color: #222222; font-family: utmavo;\" /><span style=\"color: #222222; font-family: utmavo;\">Nullam in lectus rutrum leo vehicula gravida faucibus eu erat. Morbi sapien diam, fringilla eu diam a, pharetra egestas erat. Proin mi sem, dignissim ut feugiat sed, pulvinar id nunc. Donec sed diam quis libero ornare cursus. In nec ultricies nisi.</span></p>', '<p><span style=\"color: #222222; font-family: utmavo;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a est libero. Nam in mollis lorem, id lobortis dolor. Maecenas consectetur elit a leo fringilla rutrum. Morbi non volutpat metus. Vivamus nec enim ac augue pellentesque rutrum sit amet non odio. Donec ornare aliquet urna. Quisque euismod id mauris eget convallis.</span><br style=\"box-sizing: border-box; color: #222222; font-family: utmavo;\" /><br style=\"box-sizing: border-box; color: #222222; font-family: utmavo;\" /><span style=\"color: #222222; font-family: utmavo;\">Vestibulum vel nunc tincidunt turpis posuere suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam vehicula odio non ante posuere vestibulum. Quisque vulputate ac libero porttitor dignissim. Curabitur quis elit placerat, pellentesque quam id, malesuada magna. Vivamus ut rutrum nisi. In vitae nulla in purus aliquet vestibulum ac ac lorem. Etiam pharetra quam quis arcu consectetur, vel tempus mauris sollicitudin.</span><br style=\"box-sizing: border-box; color: #222222; font-family: utmavo;\" /><br style=\"box-sizing: border-box; color: #222222; font-family: utmavo;\" /><span style=\"color: #222222; font-family: utmavo;\">Nullam in lectus rutrum leo vehicula gravida faucibus eu erat. Morbi sapien diam, fringilla eu diam a, pharetra egestas erat. Proin mi sem, dignissim ut feugiat sed, pulvinar id nunc. Donec sed diam quis libero ornare cursus. In nec ultricies nisi.</span></p>', '<p><span style=\"color: #222222; font-family: utmavo;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a est libero. Nam in mollis lorem, id lobortis dolor. Maecenas consectetur elit a leo fringilla rutrum. Morbi non volutpat metus. Vivamus nec enim ac augue pellentesque rutrum sit amet non odio. Donec ornare aliquet urna. Quisque euismod id mauris eget convallis.</span><br style=\"box-sizing: border-box; color: #222222; font-family: utmavo;\" /><br style=\"box-sizing: border-box; color: #222222; font-family: utmavo;\" /><span style=\"color: #222222; font-family: utmavo;\">Vestibulum vel nunc tincidunt turpis posuere suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam vehicula odio non ante posuere vestibulum. Quisque vulputate ac libero porttitor dignissim. Curabitur quis elit placerat, pellentesque quam id, malesuada magna. Vivamus ut rutrum nisi. In vitae nulla in purus aliquet vestibulum ac ac lorem. Etiam pharetra quam quis arcu consectetur, vel tempus mauris sollicitudin.</span><br style=\"box-sizing: border-box; color: #222222; font-family: utmavo;\" /><br style=\"box-sizing: border-box; color: #222222; font-family: utmavo;\" /><span style=\"color: #222222; font-family: utmavo;\">Nullam in lectus rutrum leo vehicula gravida faucibus eu erat. Morbi sapien diam, fringilla eu diam a, pharetra egestas erat. Proin mi sem, dignissim ut feugiat sed, pulvinar id nunc. Donec sed diam quis libero ornare cursus. In nec ultricies nisi.</span></p>', '', 0, 0, 1, '[\"rooms\\/April2019\\/isTzzo8l5MzBrBO6YHIL.jpg\",\"rooms\\/April2019\\/tuac7WsGm4ilHwFMz6DC.jpg\",\"rooms\\/April2019\\/m9dumZ9uNaFW8ZGF3rGR.jpg\",\"rooms\\/April2019\\/mOKt04tg2RnypeQRLQv0.jpg\"]', 'rooms/April2019/9AP9XWQk3e1EhkbmpkBX.jpg', '2019-04-18 08:17:00', '2019-04-25 18:33:44', 'twin');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `image`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Outdoor pool', 'services/April2019/ZmZtx4ySFAxnz0LSZHX9.JPG', 0, 1, '2019-04-17 10:10:00', '2019-04-26 03:15:45'),
(2, 'VinMart', 'services/April2019/oajWwfZPtcSi9C6eQs5A.jpg', 0, 1, '2019-04-22 20:35:00', '2019-04-26 03:14:52'),
(3, 'Children\'s play area', 'services/April2019/De6OIQurHskLXjk2Egpp.jpg', 0, 1, '2019-04-22 20:35:00', '2019-04-26 03:15:12'),
(4, 'Gym', 'services/April2019/g6U4EKuPPqdNScW4qafa.jpg', 0, 1, '2019-04-22 20:36:00', '2019-04-26 03:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'DTJ Hometel', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'DTJ Hometel là căn hộ khách sạn cao cấp với đầy đủ tiện nghi, dịch vụ đẳng cấp 3*+, thiết kế tối giản ,tiện nghi tinh tế đến từng chi tiết ..', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/April2019/FoANGXl1bxBPfmX0JjWi.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'VDO Software', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to DTJ', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.hotline', 'hotline', '0973 275 424', NULL, 'text', 6, 'Site'),
(12, 'site.email', 'email', 'hometel@dtj.com.vn', NULL, 'text', 7, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `images`, `status`, `created_at`, `updated_at`, `trang`, `image`) VALUES
(3, '[\"sliders\\/April2019\\/ZvgEWnEFnuNP0UiIP7sO.JPG\",\"sliders\\/April2019\\/wSEXpiI7CBkTWHTIZi1V.JPG\",\"sliders\\/April2019\\/Hm4SAJrm7uhzLs60D1KD.jpg\"]', 1, '2019-04-17 09:52:00', '2019-04-25 21:45:14', 'home', NULL),
(4, '[\"sliders\\/April2019\\/ohjbXgMZIAwI6SrsTNHE.JPG\",\"sliders\\/April2019\\/x96s4Ml1BYy3Msyx9RpR.JPG\",\"sliders\\/April2019\\/g7kOY0qqqWHKyNXfRTrS.JPG\",\"sliders\\/April2019\\/Xu4t6m2NyZzpOXn8sGkY.JPG\",\"sliders\\/April2019\\/NcEmI812S8A6PgkHuSxB.JPG\",\"sliders\\/April2019\\/6An7HSOXQvc0So3K5Pyv.JPG\",\"sliders\\/April2019\\/yxWyzq6taUEqZ3rkG2DJ.JPG\",\"sliders\\/April2019\\/ixBMaOxikx5c8jrK7hdb.JPG\",\"sliders\\/April2019\\/Q5qhimZogND6lIQfv15B.JPG\"]', 1, '2019-04-25 21:13:00', '2019-04-25 21:16:23', 'footer', NULL),
(5, NULL, 1, '2019-04-25 21:44:48', '2019-04-25 21:44:48', 'contact', 'sliders/April2019/AEmjlBggyjX3Nev8m8Nd.jpg'),
(6, NULL, 1, '2019-04-25 21:47:00', '2019-04-25 21:48:27', 'new', 'sliders/April2019/tAmCBUcbLj2r7sCG9YbC.jpg'),
(7, NULL, 1, '2019-04-25 21:49:00', '2019-04-25 21:52:33', 'photo', 'sliders/April2019/k0OuqFDmWo0AbPvpmD0v.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-03-31 21:16:10', '2019-03-31 21:16:10'),
(31, 'posts', 'title', 1, 'vi', 'TỪ 1/9, CHÍNH THỨC THÔNG XE CAO TỐC HẠ LONG – HẢI PHÒNG', '2019-04-16 01:09:45', '2019-04-22 19:47:30'),
(32, 'posts', 'seo_title', 1, 'vi', '', '2019-04-16 01:09:45', '2019-04-16 01:09:45'),
(33, 'posts', 'excerpt', 1, 'vi', 'Cao tốc Hạ Long – Hải Phòng trước ngày thông xe Cao tốc Hạ Long – Hải Phòng khi hoàn thành sẽ rút ngắn đường từ thành phố lớn của Quảng Ninh đi Hà Nội từ 180 km còn 130 km, thời gian đi ôtô giảm từ 3,5 giờ xuống còn 1,5 giờ.', '2019-04-16 01:09:45', '2019-04-22 19:47:30'),
(34, 'posts', 'body', 1, 'vi', '<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Cao tốc Hạ Long – Hải Phòng trước ngày thông xe Cao tốc Hạ Long – Hải Phòng khi hoàn thành sẽ rút ngắn đường từ thành phố lớn của Quảng Ninh đi Hà Nội từ 180 km còn 130 km, thời gian đi ôtô giảm từ 3,5 giờ xuống còn 1,5 giờ.<span id=\"more-4231\" style=\"box-sizing: border-box;\"></span></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Ngày 24/8, Hội đồng nghiệm thu nhà nước các công trình xây dựng đã kiểm tra và chấp thuận thông xe tuyến cao tốc Hạ Long – Hải Phòng, gồm Dự án đường cao tốc nối TP Hạ Long với Cầu Bạch Đằng và Dự án Cầu Bạch Đằng, <em style=\"box-sizing: border-box;\">theo Zing.</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Như vậy, trong ngày 1/9/2018, cao tốc Hạ Long – Hải Phòng chính thức đủ điều kiện thông xe.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"size-full wp-image-907943 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.dkn.tv/wp-content/uploads/2018/08/cao-tco.jpg\" alt=\"\" width=\"640\" height=\"360\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Dự án cao tốc Hạ Long – Hải Phòng được khởi công từ ngày 13/9/2014 tại vị trí đầu tuyến thuộc phường Đại Yên, TP Hạ Long (Quảng Ninh).</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dkn.tv/wp-content/uploads/-000//1/cao_toc_zing_2-640x360.jpg\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Báo cáo của Sở Giao thông Vận tải và Công ty cổ phần BOT cầu Bạch Đằng, đến nay cả hai dự án đường cao tốc nối TP Hạ Long với cầu Bạch Đằng và dự án <span style=\"box-sizing: border-box; font-weight: bold;\">cầu Bạch Đằng </span>đã hoàn thiện toàn bộ các hạng mục xây lắp chính, <em style=\"box-sizing: border-box;\">theo Tiền Phong.</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"wp-image-907940 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.dkn.tv/wp-content/uploads/2018/08/bac-dang-549x366.jpg\" alt=\"\" width=\"549\" height=\"366\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: center; font-family: Arial;\"><em style=\"box-sizing: border-box;\">Cầu Bạch Đằng đang hoàn thiện các hạng mục công trình phụ trợ, chờ ngày thông xe. (Ảnh; Tiền Phong).</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Đây là dự án tiêu biểu với tổng vốn đầu tư ngoài ngân sách lên đến trên 30.000 tỷ đồng. Cao tốc Hạ Long – Hải Phòng dài 24,6 km, rộng 25 m, được thiết kế 4 làn xe, vận tốc tối đa 100 km/h.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dkn.tv/wp-content/uploads/-000//1/cao_toc_ha_long_hai_phong_zing_4-640x427.jpg\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Đường dẫn và nút giao cuối tuyến cầu Bạch Đằng đã hoàn thành thi công thảm nhựa mặt đường cầu chính. <img class=\"aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dkn.tv/wp-content/uploads/-000//1/cao_toc_ha_long_hai_phong_zing_5-640x427.jpg\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Nhà thầu đã thi công sơn kẻ vạch, lắp đặt lan can cầu, đường dẫn và tổ chức thử tải.<br style=\"box-sizing: border-box;\" /><img class=\"aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dkn.tv/wp-content/uploads/-000//1/cao_toc_ha_long_hai_phong_zing_12-640x427.jpg\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Cao tốc Hạ Long – Hải Phòng đến nay cơ bản hoàn thành và sẵn sàng đưa vào hoạt động vào tháng 9 tới.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Dự án được tỉnh Quảng Ninh coi là bước đột phá về nội lực, tiên phong trong cả nước trong việc đề xuất Chính phủ được tự huy động các nguồn vốn để xây dựng</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dkn.tv/wp-content/uploads/-000//1/cao_toc_zing_7-640x360.jpg\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Sau khi hoàn thành, tuyến đường này được đánh giá sẽ đóng vai trò quan trọng trong việc hoàn chỉnh tuyến kết nối vùng kinh tế động lực phía Bắc (Hà Nội – Hải Phòng – Quảng Ninh), hoàn thiện tuyến cao tốc theo trục ven biển vùng duyên hải Bắc Bộ.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Công trình cũng rút ngắn quãng đường từ TP Hạ Long (Quảng Ninh) đi Hà Nội từ 180 km hiện nay xuống còn 130 km, thời gian đi ôtô giảm từ 3,5 giờ xuống còn 1,5 giờ. Chiều dài quãng đường từ Hải Phòng đi Hạ Long giảm 2/3 (từ 75 km còn 25 km).</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Tuyến cao tốc sẽ giúp cho việc kết nối hạ tầng giao thông giữa các tuyến được đồng bộ, tăng lưu lượng hàng hóa vận chuyển từ Quảng Ninh đi các tỉnh khu vực phía Bắc và ngược lại.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><em style=\"box-sizing: border-box;\">Thanh Thanh (TH)</em></p>', '2019-04-16 01:09:45', '2019-04-22 19:47:30'),
(35, 'posts', 'slug', 1, 'vi', 'tu-1-9-chinh-thuc-thong-xe-cao-toc-ha-long-hai-phong', '2019-04-16 01:09:45', '2019-04-22 19:47:30'),
(36, 'posts', 'meta_description', 1, 'vi', 'This is the meta description', '2019-04-16 01:09:45', '2019-04-16 01:09:45'),
(37, 'posts', 'meta_keywords', 1, 'vi', 'keyword1, keyword2, keyword3', '2019-04-16 01:09:45', '2019-04-16 01:09:45'),
(38, 'data_types', 'display_name_singular', 7, 'vi', 'Hometel', '2019-04-16 01:28:44', '2019-04-16 01:28:44'),
(39, 'data_types', 'display_name_plural', 7, 'vi', 'Hometels', '2019-04-16 01:28:44', '2019-04-16 01:28:44'),
(40, 'hometels', 'name', 1, 'vi', 'HOMETEL HA LONG', '2019-04-16 01:35:48', '2019-05-02 04:16:38'),
(41, 'hometels', 'content', 1, 'vi', '<div>DTJ Hometel là đơn vị đầu tiên cung cấp Căn hộ Hometel tại Hạ Long – hình thức lưu trú mới xuất hiện tại Việt Nam trong 1 năm trở lại đây. Hometel là sự tích hợp giữa Căn Hộ (Home) và Khách sạn (Hotel) mang lại đầy đủ tiện nghi cho khách hàng như được sống trong căn nhà của mình, đồng thời vẫn được trải nghiệm dịch vụ chất lượng cao như ở Khách sạn mà giá cả cực kỳ hợp lý.</div>\n<div> </div>\n<div>Từ tháng 6 năm 2018, DTJ Hometel chính thức đi vào hoạt động với dịch vụ cho thuê căn hộ Green Bay tại khu vực Bãi Cháy Hạ Long. DTJ Hometel độc đáo tọa lạc trên đường bao biển Vịnh Hạ long, giữa Đảo Tuần Châu và Công viên Sun World phong cách thiết kế hiện đại, tiêu chuẩn 3 sao cộng. Với vị trí thuận lợi nằm ở tòa nhà Green Bay Premium - trung tâm quần thể của BIM Group:</div>', '2019-04-16 01:35:48', '2019-04-22 19:34:00'),
(42, 'hometels', 'slug', 1, 'vi', 'hometel-ha-long', '2019-04-16 01:35:48', '2019-04-22 19:34:00'),
(43, 'hometels', 'description', 1, 'vi', '', '2019-04-16 01:35:48', '2019-04-16 01:35:48'),
(44, 'menu_items', 'title', 16, 'vi', 'Hometels', '2019-04-16 20:08:05', '2019-04-17 09:15:53'),
(45, 'data_types', 'display_name_singular', 8, 'vi', 'Apartment', '2019-04-16 20:31:55', '2019-04-16 20:31:55'),
(46, 'data_types', 'display_name_plural', 8, 'vi', 'Apartments', '2019-04-16 20:31:55', '2019-04-16 20:31:55'),
(47, 'data_types', 'display_name_singular', 9, 'vi', 'Room', '2019-04-16 22:57:41', '2019-04-16 22:57:41'),
(48, 'data_types', 'display_name_plural', 9, 'vi', 'Rooms', '2019-04-16 22:57:41', '2019-04-16 22:57:41'),
(49, 'menu_items', 'title', 19, 'vi', 'Trang chủ', '2019-04-17 03:11:02', '2019-04-17 03:11:35'),
(50, 'menu_items', 'title', 20, 'vi', 'Giới thiệu', '2019-04-17 03:13:10', '2019-04-17 03:13:10'),
(51, 'menu_items', 'title', 21, 'vi', 'Chi nhánh - căn hộ', '2019-04-17 03:15:42', '2019-04-17 03:15:42'),
(52, 'menu_items', 'title', 22, 'vi', 'Hometel Hạ Long', '2019-04-17 03:17:18', '2019-04-22 19:37:48'),
(53, 'menu_items', 'title', 23, 'vi', 'Hình ảnh', '2019-04-17 03:18:00', '2019-04-17 03:18:00'),
(54, 'menu_items', 'title', 24, 'vi', 'Tin tức', '2019-04-17 03:18:35', '2019-04-17 03:18:35'),
(55, 'menu_items', 'title', 25, 'vi', 'Liên hệ', '2019-04-17 03:19:05', '2019-04-17 03:19:05'),
(57, 'data_types', 'display_name_singular', 12, 'vi', 'Slider', '2019-04-17 09:23:12', '2019-04-17 09:23:12'),
(58, 'data_types', 'display_name_plural', 12, 'vi', 'Sliders', '2019-04-17 09:23:12', '2019-04-17 09:23:12'),
(59, 'menu_items', 'title', 28, 'vi', 'Sliders', '2019-04-17 09:23:39', '2019-04-17 09:23:39'),
(60, 'apartments', 'name', 1, 'vi', 'Căn hộ 2 PN', '2019-04-17 10:04:18', '2019-04-24 00:57:43'),
(61, 'apartments', 'content', 1, 'vi', '<table style=\"border-collapse: collapse; width: 100%; height: 132px;\" border=\"1\">\n<tbody>\n<tr style=\"height: 13px;\">\n<td style=\"width: 35%; height: 13px;\"><strong>Danh sách phòng</strong>:</td>\n<td style=\"height: 13px;\">CH-812, CH-1113, CH-12A03, CH-12A11, CH-12B07, CH-2013</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 35%; height: 13px;\"><strong>Hướng ban công</strong>:</td>\n<td style=\"height: 13px;\">View biển</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 35%; height: 13px;\"><strong>Số người</strong>:</td>\n<td style=\"height: 13px;\">4 người lớn &amp; 3 trẻ em (dưới 12 tuổi)</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Loại phòng</strong>:</td>\n<td style=\"height: 13px;\">1 phòng đơn &amp; 1 phòng đôi</td>\n</tr>\n<tr style=\"height: 15px;\">\n<td style=\"height: 15px;\"><strong>Loại giường</strong>:</td>\n<td style=\"height: 15px;\">1 giường Queen (1m8<sup> </sup>* 2m) và 2 giường single (1m2<sup> </sup>* 2m)</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Nội thất</strong>:</td>\n<td style=\"height: 13px;\">Bàn trà, ghế Sopha, ghế thư giãn, tủ lạnh, tủ quần áo…</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Phòng tắm</strong>:</td>\n<td style=\"height: 13px;\">Vòi sen &amp; bồn rửa mặt, khăn tắm, gương, khăn các loại, máy sấy tóc, vật dụng phòng tắm</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Giải trí</strong>:</td>\n<td style=\"height: 13px;\">Tivi truyền hình cáp, Wifi miễn phí</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Vật dụng an toàn và an ninh</strong>:</td>\n<td style=\"height: 13px;\">Két sắt trong phòng, khóa từ hiện đại</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Ghi chú</strong>:</td>\n<td style=\"height: 13px;\">Nếu thêm người, tính thêm phụ thu.</td>\n</tr>\n</tbody>\n</table>', '2019-04-17 10:04:18', '2019-04-24 20:48:42'),
(62, 'apartments', 'tieuchuan', 1, 'vi', '<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight text-center\" style=\"text-align: center;\"><img src=\"/images/icon1.png\" alt=\"\" /> 70 m2</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon2.png\" alt=\"\" /> Sử dụng toàn bộ<br />căn hộ</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon3.png\" alt=\"\" /> Tiêu chuẩn<br />7 người</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon4.png\" alt=\"\" /> 1 giường Queen<br />2 giường single</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon5.png\" alt=\"\" /> View vịnh/ Núi</div>', '2019-04-17 10:04:18', '2019-04-24 02:11:40'),
(63, 'apartments', 'chinhsach', 1, 'vi', '<div><strong>1. Giá phòng chưa bao gồm:</strong></div>\n<div>10% VAT và 5% phí dịch vụ.</div>\n<div><strong>2. Giá phòng đã bao gồm:</strong></div>\n<div>- Cà phê, Trà và nước miễn phí đặt phòng.</div>\n<div>- Miễn phí sử dụng wifi.</div>\n<div>- Miễn phí sử dụng hồ bơi và các dịch vụ thuộc tòa nhà<span style=\"white-space: pre;\"> <br /></span></div>\n<div><strong>3. Chính sách ở cuối tuần và nghỉ lễ tết</strong></div>\n<div> - Phụ thu cuối tuần 100.000/phòng/đêm đối với các ngày T6, T7</div>\n<div>- Phụ thu 20% so với giá niêm yết trong giai đoạn Lễ Tết: 01/01/2019 (Tết Dương lịch); 15 – 20/02/2019 (Tết nguyên đán); 25/04/2019 (Giỗ tổ Hùng Vương); 28/04/2019 – 01/05/2019; (Ngày Thống Nhất); 01 – 02/09/2019 (Lễ Quốc Khánh); 24 – 25/12/2019 (Lễ Giáng Sinh); 31/12/2019 (Tết Dương lịch)</div>\n<div><strong>4. Chính sách trẻ em và ở ghép :</strong></div>\n<div> - Miễn phí trẻ em dưới 12 tuổi, mỗi giường được thêm tối đa 1 trẻ em ở cùng với bố mẹ, trẻ em tiếp theo tính như ở ghép thêm người, phụ thu 100.000 VND/em</div>\n<div>- Trẻ em trên 12 tuổi tính như người lớn</div>\n<div>- Phụ thu 100.000/phòng/đêm đối với 1 khách ở ghép.<span style=\"white-space: pre;\"> <br /></span></div>\n<div><strong>5. Nhận Phòng và Trả phòng</strong></div>\n<div>- Thời gian nhận phòng: 14:00 và trả phòng 12:00 trưa ngày hôm sau.</div>\n<div>- Trường hợp yêu cầu trả phòng trễ như sau:</div>\n<div>-Trả phòng trễ trước 15:00 – Phụ phí 20% của tiền phòng 1 đêm</div>\n<div>- Trả phòng trễ trước 18:00 – Phụ phí 50% của tiền phòng 1 đêm</div>\n<div>- Trả phòng trễ sau 18:00 – Phụ phí 100% tiền phòng 1 đêm<span style=\"white-space: pre;\"> <br /></span></div>\n<div><strong>6. Điều kiện hủy phòng &amp; khách không đến:</strong></div>\n<div>– Việc hủy phòng được xác nhận từ (07) ngày trước ngày nhận phòng sẽ không bị phạt phí hủy</div>\n<div>– Việc hủy phòng được xác nhận trong vòng (04) ngày đến (06) ngày trước ngày nhận phòng thì sẽ bị phạt phí hủy bẳng 50% tổng giá trị tiền phòng đã đặt (bao gồm thuế và phí phục vụ).</div>\n<div>\"– Việc hủy phòng được xác nhận trong vòng (03) ngày hoặc bảy mươi hai (72) giờ trước ngày nhận phòng thì sẽ bị tính phí hủy bằng 100% tổng giá trị tiền phòng đã đặt (bao gồm thuế và phí phục vụ)\"</div>', '2019-04-17 10:04:18', '2019-04-24 21:00:40'),
(64, 'apartments', 'slug', 1, 'vi', 'can-ho-2-phong-ngu', '2019-04-17 10:04:18', '2019-04-24 00:57:43'),
(65, 'apartments', 'description', 1, 'vi', '', '2019-04-17 10:04:18', '2019-04-17 10:04:18'),
(66, 'services', 'name', 1, 'vi', 'Bề bơi ngoài trời', '2019-04-17 10:10:04', '2019-04-22 20:36:45'),
(67, 'rooms', 'name', 1, 'vi', 'Twin', '2019-04-18 08:17:48', '2019-04-18 08:17:48'),
(68, 'rooms', 'title', 1, 'vi', '2 NL + 2 trẻ em dưới 12 tuổi<br />(ở ghép tối đa thêm 1 người lớn có phụ thu)<br />2 gường đôi 1m2 - View vịnh/góc vịnh rộng 35m2', '2019-04-18 08:17:48', '2019-04-18 08:17:48'),
(69, 'rooms', 'excerpt', 1, 'vi', 'Phòng Twin nằm trong căn hộ 2PN. <br />(Căn hộ có 2 Phòng Ngủ, 2 Nhà vệ sinh riêng biệt khép kín) <br />Khách sử dụng chung nhà bếp và phòng khách miễn phí', '2019-04-18 08:17:48', '2019-04-18 08:17:48'),
(70, 'rooms', 'description', 1, 'vi', '', '2019-04-18 08:17:48', '2019-04-18 08:17:48'),
(71, 'rooms', 'slug', 1, 'vi', 'twin', '2019-04-18 08:17:48', '2019-04-18 08:17:48'),
(72, 'rooms', 'policy', 1, 'vi', '', '2019-04-18 08:17:48', '2019-04-18 08:17:48'),
(73, 'rooms', 'available', 1, 'vi', '', '2019-04-18 08:17:48', '2019-04-18 08:17:48'),
(74, 'rooms', 'meta_description', 1, 'vi', '', '2019-04-18 08:17:48', '2019-04-18 08:17:48'),
(83, 'pages', 'title', 2, 'vi', 'Giới thiệu', '2019-04-19 21:06:32', '2019-04-19 21:06:32'),
(84, 'pages', 'excerpt', 2, 'vi', 'Giới thiệu', '2019-04-19 21:06:32', '2019-04-19 21:06:32'),
(85, 'pages', 'slug', 2, 'vi', 'gioi-thieu', '2019-04-19 21:06:32', '2019-04-19 21:06:32'),
(86, 'pages', 'body', 2, 'vi', '<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><em style=\"box-sizing: border-box; margin-bottom: 0px;\"><span style=\"box-sizing: border-box; font-weight: bold; margin-bottom: 0px;\">Kính gửi Quý khách hàng!</span></em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold; margin-bottom: 0px;\">DTJ Hometel</span> là căn hộ khách sạn cao cấp với đầy đủ tiện nghi, dịch vụ đẳng cấp 3*+, thiết kế tối giản ,tiện nghi tinh tế đến từng chi tiết ..</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Nằm ở vị trí lý tưởng giữa khu Bãi Cháy và bến tàu Tuần Châu, <span style=\"box-sizing: border-box; font-weight: bold; margin-bottom: 0px;\">DTJ Hometel</span> được trang bị đầy đủ tiện nghi và được thiết kế tối ưu nhất để lưu trú dài hạn và ngắn hạn cho tất cả Khách hàng. Với tất cả các phòng ngủ view vịnh có một không hai, bạn có thể thưởng ngoạn cảnh quan tuyệt vời của Vịnh Hạ Long từ ban công căn hộ.</p>\n<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/pages/a1.jpg\" alt=\"\" /></div>\n<br /><span style=\"box-sizing: border-box; font-weight: bold; font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\">Vị trí đắc địa:</span><br style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\" /><span style=\"font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\">– 7 phút lái xe đến Bãi Tắm Bãi Cháy, Cáp Treo Nữ Hoàng và Công viên Sunworld</span><br style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\" /><span style=\"font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\">– 10 phút lái xe đến đảo Tuần Châu, nơi tất cả các chuyến tàu khởi hành thăm Vịnh Hạ Long và Đảo Cát Bà</span><br style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\" /><span style=\"font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\">– 3 phút lái xe đến chợ Cái Dăm (chợ nổi tiếng với hải sản tươi sống ở Hạ Long)</span><br style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\" /><span style=\"font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\">– 3 phút lái xe đến The Little Vietnam, Hạ Long Marine Plaza – Chợ đêm Hạ Long.</span><br style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\" /><span style=\"font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\">– Nhà hát múa rối nước cách chỉ 150m</span><br style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\" /><span style=\"font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\">– Cảng tàu quốc tế Hòn Gai cách 3 km</span><br style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\" /><span style=\"font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\">– Sân bay Quốc tế Cát Bi cách 33 km.</span><br style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\" /><span style=\"font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\">– Sân bay quốc tế Vân Đồn cách 50 km</span><br style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\" /><span style=\"box-sizing: border-box; font-weight: bold; margin-bottom: 0px; font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\">DTJ Hometel</span><span style=\"font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\"> – Nỗ lực đồng hành cùng bạn trong hành trình khám phá Vịnh Hạ Long – Kỳ quan thiên nhiên thế giới !</span><br />\n<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/pages/a2.jpg\" alt=\"\" /></div>\n<br /><span style=\"font-family: Arial; font-size: 15px; letter-spacing: 0.3px; text-align: justify;\">100% các căn hộ của DTJ Hometel tại khu căn hộ Green Bay đều có view hướng vịnh với tầm nhìn thoáng đãng cùng trang thiết bị nội thất hiện đại.</span><br />\n<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/pages/a3.jpg\" alt=\"\" /></div>\n<br /><span style=\"font-size: inherit; letter-spacing: 0.02em; text-align: justify; font-family: Arial;\">Mục tiêu phát triển tiếp theo của Công ty là đẩy mạnh kinh doanh trực tuyến: Dịch vụ trao đổi, đặt và thanh toán chi phí xe, phòng, tour trực tuyến, cũng như chấp nhận thanh toán đa dạng các tuyến, điểm du lịch mới lạ nhằm mục đích công nghệ hóa, tạo thuận lợi và tiết kiệm thời gian công sức của quý khách hàng.</span><br />\n<p style=\"box-sizing: border-box; margin: 14px 0px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: inherit; text-align: right;\"><span style=\"box-sizing: border-box; font-weight: bold;\">DTJ Hometel</span><br style=\"box-sizing: border-box; margin-bottom: 0px;\" />Trân trọng cảm ơn!</p>', '2019-04-19 21:06:32', '2019-04-22 19:29:29'),
(87, 'data_types', 'display_name_singular', 6, 'vi', 'Page', '2019-04-19 21:07:16', '2019-04-19 21:07:16'),
(88, 'data_types', 'display_name_plural', 6, 'vi', 'Pages', '2019-04-19 21:07:16', '2019-04-19 21:07:16'),
(89, 'posts', 'title', 2, 'vi', 'HẠ LONG TUYỆT ĐẸP BÊN BỜ DI SẢN TRONG ‘DẤU ẤN VIỆT NAM’', '2019-04-20 01:42:11', '2019-04-22 19:45:56'),
(90, 'posts', 'seo_title', 2, 'vi', '', '2019-04-20 01:42:11', '2019-04-20 01:42:11'),
(91, 'posts', 'excerpt', 2, 'vi', 'Nằm bên bờ di sản thiên nhiên thế giới 2 lần được UNESCO công nhận, có thể nói Hạ Long là thành phố du lịch nổi bật nhất miền Bắc với thiên nhiên kỳ thú, cơ sở hạ tầng phát triển.', '2019-04-20 01:42:11', '2019-04-22 19:45:56');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(92, 'posts', 'body', 2, 'vi', '<p class=\"the-article-summary cms-desc\" style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Nằm bên bờ di sản thiên nhiên thế giới 2 lần được UNESCO công nhận, có thể nói Hạ Long là thành phố du lịch nổi bật nhất miền Bắc với thiên nhiên kỳ thú, cơ sở hạ tầng phát triển.<span id=\"more-4236\" style=\"box-sizing: border-box;\"></span></p>\n<div class=\"the-article-body cms-body\" style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\">\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/1_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 1\" width=\"2048\" height=\"1238\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Toàn cảnh vịnh Hạ Long nhìn từ núi Bài Thơ. Vịnh Hạ Long nằm ở phía đông bắc Việt Nam, bao gồm vùng biển thuộc thành phố Hạ Long, thành phố Cẩm Phả và một phần huyện đảo Vân Đồn, tỉnh Quảng Ninh. Sở hữu vẻ đẹp mang tính thẩm mỹ cao và giá trị địa chất kiến tạo phong phú, vịnh Hạ Long trở thành di sản thiên nhiên thế giới do UNESCO công nhận, đồng thời nằm trong danh sách những vịnh đẹp nhất thế giới. Ảnh: <em style=\"box-sizing: border-box;\">Hà Minh Hiếu.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/2_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 2\" width=\"2048\" height=\"1247\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Nằm bên bờ thắng cảnh thơ mộng, thành phố Hạ Long vừa mang nét mềm mại, nhẹ nhàng, lại vừa mang dấu ấn hiện đại, phát triển, năng động của công cuộc công nghiệp hóa, đô thị hóa đất nước. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/3_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 3\" width=\"1688\" height=\"1021\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Con đường Bài Thơ quanh co uốn lượn dọc bờ biển. Một bên là Công viên hoa Hạ Long tươi xanh, một bên là vịnh biển vừa hùng vĩ vừa nên thơ. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/4_3.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 4\" width=\"1257\" height=\"760\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Cầu Bãi Cháy nối hai bờ sông Cửa Lục là một trong những cây cầu dây văng đẹp nhất cả nước, đồng thời có ý nghĩa giao thông quan trọng, thúc đẩy sự phát triển của vùng kinh tế trọng điểm phía Bắc. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung. </em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/5_3.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 5\" width=\"2048\" height=\"1238\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Những công trình giúp nâng tầm thành phố Hạ Long như vòng quay Mặt Trời, cáp treo Nữ Hoàng, cầu Bãi Cháy cùng tụ hội trong một khung hình, tỏa sáng lung linh, rực rỡ khi thành phố lên đèn. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung. </em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/6_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 6\" width=\"2048\" height=\"1247\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Vòng quay Mặt Trời nằm trong tổ hợp dự án công viên Đại Dương, được đầu tư mạnh tay với những hạng mục vui chơi giải trí hàng đầu thế giới, trải rộng trên quy mô lớn, thu hút đông đảo du khách. Ảnh: <em style=\"box-sizing: border-box;\">Bảo Ngọc.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" title=\"Hạ Long tuyệt đẹp bên bờ di sản trong \'Dấu ấn Việt Nam\' hình ảnh 7\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/7_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 7\" width=\"960\" height=\"580\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Những cabin lấp lánh đèn trên vòng quay chầm chậm đưa du khách lên cao, phóng tầm mắt ngắm nhìn toàn cảnh Hạ Long xinh đẹp. Ảnh: <em style=\"box-sizing: border-box;\">Bảo Ngọc.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" title=\"Hạ Long tuyệt đẹp bên bờ di sản trong \'Dấu ấn Việt Nam\' hình ảnh 8\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/8_3.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 8\" width=\"2048\" height=\"1238\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Toàn cảnh công viên Đại Dương Hạ Long – điểm sáng mới trong ngành du lịch tỉnh Quảng Ninh.</td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" title=\"Hạ Long tuyệt đẹp bên bờ di sản trong \'Dấu ấn Việt Nam\' hình ảnh 9\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/9_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 9\" width=\"2048\" height=\"1238\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Công viên có nhiều trò chơi mạo hiểm, tạo cảm giác mạnh cho du khách. Ảnh: <em style=\"box-sizing: border-box;\">Bảo Ngọc.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" title=\"Hạ Long tuyệt đẹp bên bờ di sản trong \'Dấu ấn Việt Nam\' hình ảnh 10\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/10_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 10\" width=\"2048\" height=\"1238\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Nằm ngay kế bên vịnh Hạ Long ở phía đông bắc là vịnh Bái Tử Long, một cảnh đẹp hoang sơ còn lưu giữ những nét văn hóa sinh hoạt truyền thống của địa phương từ thuở xa xưa. Nhìn từ trên cao, những hòn đảo trên vịnh như những con rồng chầu vào vùng than. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung.</em></td>\n</tr>\n</tbody>\n</table>\n<div id=\"advMiddle2\" class=\"banner\" style=\"box-sizing: border-box;\"> </div>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/11_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 11\" width=\"2048\" height=\"1238\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Vịnh gồm hàng trăm hòn đảo lớn nhỏ và khá đông người sinh sống. Người dân sống trên vịnh chủ yếu làm nghề đánh bắt và nuôi trồng thủy hải sản. Những chuyến tàu khách bằng gỗ hàng ngày vẫn đưa khách và hàng hóa từ đất liền ra các xã đảo. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" title=\"Hạ Long tuyệt đẹp bên bờ di sản trong \'Dấu ấn Việt Nam\' hình ảnh 12\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/12_4.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 12\" width=\"2048\" height=\"1238\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Một ngư dân đang gỡ lưới cá trên vịnh. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/121.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 13\" width=\"2032\" height=\"1229\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Ngoài nét đẹp thiên nhiên ban tặng, thành phố Hạ Long còn là trung tâm kinh tế phát triển năng động, sôi nổi với những khu công nghiệp công nghệ cao, cảng biển nước sâu. Trong ảnh là cảng Cái Lân nhìn từ giữa dòng Cửa Lục với những chiếc cần cẩu giương cao. Ảnh: <em style=\"box-sizing: border-box;\">Nguyễn Thành Chung.</em></td>\n</tr>\n</tbody>\n</table>\n<table class=\"picture\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: transparent; font-size: 14px; line-height: 1.28571; border-width: 1px 0px 0px 1px; margin-bottom: 24px; width: 788px; border-style: solid; border-color: rgba(0, 0, 0, 0.1); border-image: initial;\" align=\"center\">\n<tbody style=\"box-sizing: border-box;\">\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pic\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\"><img class=\"optimized\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" title=\"Hạ Long tuyệt đẹp bên bờ di sản trong \'Dấu ấn Việt Nam\' hình ảnh 14\" src=\"https://znews-photo-td.zadn.vn/w960/Uploaded/jaroin/2017_08_15/13_5.jpg\" alt=\"Ha Long tuyet dep ben bo di san trong \'Dau an Viet Nam\' hinh anh 14\" width=\"5409\" height=\"3269\" /></td>\n</tr>\n<tr style=\"box-sizing: border-box;\">\n<td class=\"pCaption caption\" style=\"box-sizing: border-box; border-color: rgba(0, 0, 0, 0.1); padding: 8px; border-width: 0px 1px 1px 0px; border-style: solid; border-image: initial; font-size: 13px;\">Vịnh Hạ Long rực sáng trong đêm. Với những giá trị sẵn có cùng nỗ lực xây dựng, phát triển không ngừng, thành phố Hạ Long hứa hẹn sẽ tiếp tục dẫn đầu trong các ngành công nghiệp – dịch vụ, đóng góp to lớn vào sự phát triển của đất nước.</td>\n</tr>\n</tbody>\n</table>\n</div>', '2019-04-20 01:42:11', '2019-04-22 19:45:56'),
(93, 'posts', 'slug', 2, 'vi', 'ha-long-tuyet-dep-ben-bo-di-san-trong-dau-an-viet-nam', '2019-04-20 01:42:11', '2019-04-22 19:45:56'),
(94, 'posts', 'meta_description', 2, 'vi', 'Meta Description for sample post', '2019-04-20 01:42:11', '2019-04-20 01:42:11'),
(95, 'posts', 'meta_keywords', 2, 'vi', 'keyword1, keyword2, keyword3', '2019-04-20 01:42:11', '2019-04-20 01:42:11'),
(96, 'posts', 'title', 3, 'vi', 'CẨM NANG DU LỊCH HẠ LONG', '2019-04-20 01:42:17', '2019-04-22 19:43:49'),
(97, 'posts', 'seo_title', 3, 'vi', '', '2019-04-20 01:42:17', '2019-04-20 01:42:17'),
(98, 'posts', 'excerpt', 3, 'vi', 'Nhằm đem đến cho du khách sự tiện lợi và trải nghiệm kì nghỉ tốt nhất tại Hạ Long, DTJ Homtel trân trọng gửi đến Quý khách cuốn cẩm nang du lịch đầy đủ nhất về thành phố du lịch Hạ Long. Cảm ơn Quý khách đã sử dụng dịch vụ của DTJ Hometel và hi vọng Quý khách sẽ tiếp tục ủng hộ chúng tôi trong chặng đường sắp tới.st', '2019-04-20 01:42:17', '2019-04-22 20:06:27');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(99, 'posts', 'body', 3, 'vi', '<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Nhằm đem đến cho du khách sự tiện lợi và trải nghiệm kì nghỉ tốt nhất tại Hạ Long, DTJ Homtel trân trọng gửi đến Quý khách cuốn cẩm nang du lịch đầy đủ nhất về thành phố du lịch Hạ Long. Cảm ơn Quý khách đã sử dụng dịch vụ của DTJ Hometel và hi vọng Quý khách sẽ tiếp tục ủng hộ chúng tôi trong chặng đường sắp tới.<span id=\"more-3948\" style=\"box-sizing: border-box;\"></span><br style=\"box-sizing: border-box;\" />Chúc Quý khách và gia đình, bạn bè có một kỳ nghỉ trọn vẹn, hạnh phúc tại thành phố Hạ Long.<br style=\"box-sizing: border-box;\" />Trân trọng!</p>\n<h3 style=\"box-sizing: border-box; font-family: Montserrat; line-height: 1.1em; color: #333333; margin-top: 40px; margin-bottom: 15px; font-size: 24px; letter-spacing: 0.21px; text-align: center;\"><span style=\"box-sizing: border-box;\">THÔNG TIN NHANH DU LỊCH HẠ LONG</span></h3>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">I. Phương tiện tham quan Hạ Long</span></p>\n<div class=\"col-md-5\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 320.828px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\">\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bold;\">1. Taxi đi lại trong thành phố có các hãng như</span>:</p>\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding-left: 0px;\">\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Taxi 886 –Móng Cái: 033 3886 886.</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Hạ Long: 033 362 62 62.</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Hồng Gai: 033 384 84 84</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Mai Linh: 033 3628 628</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Thành Hưng: 033. 3659659</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Thịnh Hưng: 033. 3616161</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Sao Mai: 033. 3822822</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Đông Bắc: 033. 3828282</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Quảng Ninh: 033. 3656656</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Bãi Cháy: 033. 3646464</li>\n</ul>\n</div>\n<div class=\"col-md-7\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 449.156px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\"><img class=\"alignnone size-full wp-image-3960\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/taxihalong.jpg\" sizes=\"(max-width: 900px) 100vw, 900px\" srcset=\"http://dtjhometel.com/wp-content/uploads/2018/06/taxihalong.jpg 900w, http://dtjhometel.com/wp-content/uploads/2018/06/taxihalong-768x512.jpg 768w, http://dtjhometel.com/wp-content/uploads/2018/06/taxihalong-600x400.jpg 600w\" alt=\"\" width=\"100%\" /></div>\n<div class=\"clearfix\" style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\"> </div>\n<div style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">2. Tàu tham quan Vịnh hạ Long</span></div>\n<div class=\"col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 385px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\">\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Bạn có thể thuê tàu tham quan vịnh Hạ Long tại 2 cảng sau:</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">– <span style=\"box-sizing: border-box; font-weight: bold;\">Cảng quốc tế Tuần Châu</span> (ĐT: 033.3842134)</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">– <span style=\"box-sizing: border-box; font-weight: bold;\">Cảng khách Hòn Gai Vinashin</span> (ĐT: 033.3628234)</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Giá thuê tàu trên vịnh Hạ Long, vịnh Bái Tử Long khác nhau theo từng loại tàu. Thuê cả tàu giá dao động từ 1,2 đến 1,6tr/ tàu.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Ngoài ra quý khách cần mua vé du lịch trên Vịnh Hạ Long: Người lớn: 290.000đ, trẻ em dưới 1,2m miễn phí.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><img class=\"size-full wp-image-3964 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/Signature-Cruise-KN.jpg\" sizes=\"(max-width: 1280px) 100vw, 1280px\" srcset=\"http://dtjhometel.com/wp-content/uploads/2018/06/Signature-Cruise-KN.jpg 1280w, http://dtjhometel.com/wp-content/uploads/2018/06/Signature-Cruise-KN-768x395.jpg 768w\" alt=\"\" width=\"100%\" /></p>\n</div>\n<div class=\"col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 385px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\">\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bold;\">3. Các tuyến tham quan Vịnh:</span><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Tuyến 1</span>: Cảng tàu – Công viên Vạn Cảnh</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Động Thiên Cung, hang Đầu Gỗ, hòn Chó Đá, làng chài Ba Hang, hòn Đỉnh Hương, hòn Trống Mái (Gà Chọi).</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Tuyến 2</span>: Cảng tàu – Công viên các hang động</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Bãi tắm Soi Sim, đảo Ti Tốp, hang Sửng Sốt, động Mê Cung, hang Bồ Nâu, hang Luồn, hang Trống, hang Trinh Nữ, hang Hồ Động Tiên.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Tuyến 3</span>: Cảng tàu – Trung tâm bảo tồn văn hóa biển</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Trung tâm Văn hóa nổi Cửa Vạn, hang Tiên Ông, hồ Ba Hầm, đền Bà Men, Áng Dù, rừng Trúc.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Tuyến 4</span>: Cảng tàu – Trung tâm giải trí biển</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Hang Cỏ, hang Thầy, Cống Đỏ, hang Cạp La, Làng chài Vông Viêng, khu sinh thái Tùng Áng – Cống Đỏ, công viên Hòn Xếp.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><em style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Tuyến 5</span>: Cảng tàu – Bến Gia Luận (Cát Bà – Hải Phòng)</em></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\">Hòn Chó Đá, làng chài Ba Hang, hòn Đỉnh Hương, hòn Trống Mái (Gà Chọi)</p>\n</div>\n<div class=\"clearfix\" style=\"box-sizing: border-box; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\"> </div>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">II. Các địa điểm tham quan của Hạ Long</span></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Động Thiên Cung: </span>Động Thiên Cung nằm ở phía bắc đảo Đầu Gỗ, cách cảng tàu du lịch 4km về phía nam. Là một trong những hang động đẹp nhất ở Hạ Long. Hang rộng gần 10.000m² có cấu trúc rất phức tạp, gồm nhiều cấp, nhiều ngăn với các trần và bờ vách rất cao, rộng. Đặc biệt trong hang, ở đâu đâu ta cũng thấy vô vàn các khối nhũ, măng đá với các hình dáng kì lạ.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"size-full wp-image-3970 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/dongthiencung.jpg\" sizes=\"(max-width: 1000px) 100vw, 1000px\" srcset=\"http://dtjhometel.com/wp-content/uploads/2018/06/dongthiencung.jpg 1000w, http://dtjhometel.com/wp-content/uploads/2018/06/dongthiencung-768x513.jpg 768w, http://dtjhometel.com/wp-content/uploads/2018/06/dongthiencung-600x400.jpg 600w\" alt=\"\" width=\"100%\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Hang Đầu Gỗ: </span>Cùng nằm trên dãy đảo Đầu Gỗ, cách động Thiên Cung khoảng 300m. Đầu Gỗ là hang động rộng, đẹp mang nét cổ kính rêu phong, người Pháp gọi là “Động các kỳ quan”.  Hang có hệ động thực vật đa dạng phong phú. Do có cửa hang được mở rộng nên độ ẩm trong lòng hang cao, cộng với sự tác động của ánh sáng mặt trời nên có thể thấy ngay được sự phát triển đa dạng của hệ thực vật, đặc biệt là rêu, cây dương xỉ và cây thân gỗ… Đây là một đặc điểm khác biệt so với nhiều hang động khác trên vịnh Hạ Long.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Động Mê Cung </span>nằm ở độ cao 25m trên đảo Lờm Bò cách đảo Ti-tốp khoảng 2km về phía tây nam. Nhìn từ xa cửa động như một mái nhà ăn sâu vào sườn đảo. Động Mê Cung có cấu trúc phức tạp nhiều tầng cấp, nhiều ngăn, ngách trải rộng trong phạm vi mái đá với những hanh lang dài hơn 100m, cao dần về phía tây và trông xuống một hồ nhỏ có tên Hồ Mê Cung.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Hang Trống và Hang Trinh Nữ:</span> Nằm ở trên hai cánh của một vòng cung núi nhỏ phía đông dãy đảo Bồ Hòn, cách hang Sửng Sốt hơn 3km theo đường biển về phía đông nam. Hai hang cách nhau 700-800m qua một vụng biển nhỏ.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Đảo Soi Sim:</span> Soi Sim có diện tích khoảng 8,7ha, nằm ở phía tây Vịnh Hạ Long, cách cảng tàu du lịch Bãi Cháy (TP Hạ Long) khoảng 12km, cách đảo Ti Tốp khoảng 700m. Trên đảo là một khu rừng nguyên sinh với nhiều loại thực vật phong phú, trong đó có nhiều loài cây đặc hữu, có giá trị, đặc trưng của hệ sinh thái Vịnh Hạ Long. Người dân địa phương cho biết, do trên đảo mọc rất nhiều cây sim nên mới được gọi tên là Soi Sim.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"size-full wp-image-3971 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/daosoisim.jpg\" sizes=\"(max-width: 960px) 100vw, 960px\" srcset=\"http://dtjhometel.com/wp-content/uploads/2018/06/daosoisim.jpg 960w, http://dtjhometel.com/wp-content/uploads/2018/06/daosoisim-768x356.jpg 768w\" alt=\"\" width=\"100%\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Đảo Ti Tốp:</span> là hòn đảo có bờ dốc đứng, một bờ nghiêng với một bãi cát trắng, phẳng. Các tàu du lịch thường ghé vào đây. Du khách lên bờ để tắm biển hoặc leo lên đỉnh núi để ngắm toàn quang cảnh hòn đảo. Từ trên cao nhìn xuống, bãi tắm Ti Tốp có hình dáng như một vầng trăng ôm trọn lấy chân đảo. Khác với nhiều điểm du lịch khác trên Vịnh Hạ Long, ngoài phong cảnh thiên nhiên tươi đẹp, đảo Ti Tốp còn sở hữu một bãi tắm đẹp, gọi là bãi tắm Ti Tốp. Bãi tắm tuy diện tích không lớn nhưng yên tĩnh, thoáng đãng và rất sạch, cát ở bãi tắm liên tục được thuỷ triều lên xuống rửa sạch, trắng tinh, nước biển trong xanh bốn mùa.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Hang Luồn</span>: Du lịch Hạ Long tự hào với hệ thống hang động rất lớn, mỗi hang động đều có những vẻ đẹp riêng và những câu chuyện gắn liền với nó. Một trong những hang động tiêu biểu là hang Luồn nằm trên đảo Bồ Hòn, cách Bãi Cháy 14km. Tại đây bạn có thể ngắm nhìn những búp thạch nhũ được kiến tạo trong hàng triệu năm với nhiều hình dạng và kích cỡ khác nhau. Phía trước hang là hòn Con Rùa, bên phải là Cổng Trời.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Hang Sửng Sốt</span>: nằm ở khu vực trung tâm của Di sản Thế giới vịnh Hạ Long, trên đảo Bồ Hòn. Bên trong hang Sửng Sốt là những nhũ đá hóa thạch có hình dạng vô cùng phong phú. Hang Sửng Sốt nằm ở khu vực tập trung nhiều điểm tham quan nổi tiếng của du lịch Hạ Long (bãi tắm Ti Tốp – hang Bồ Nâu – động Mê Cung – hang Luồn – hang Sửng Sốt) và được người Pháp đặt cho hang cái tên “Grotte des surprises” (động của sự sửng sốt).</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Bãi Cháy: </span>Khu nghỉ mát Bãi Cháy nằm dọc theo bờ vịnh Hạ Long, thích hợp để nghỉ ngơi và tắm biển. Khu nghỉ mát này quanh năm lộng gió biển, nhiệt độ trung bình năm khoảng trên 20° C.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Đảo Tuần Châu</span>: là hòn đảo đẹp nhất trong số 1.969 hòn đảo ở vịnh Hạ Long, cũng là hòn đảo duy nhất có dân cư sinh sống. Tại đây có bờ biển nhân tạo lớn nhất Việt Nam. Bờ biển Trà Cổ thoai thoải với lớp cát trắng là nơi lý tưởng để vui chơi và tham gia các trờ chơi dưới nước thú vị.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"size-full wp-image-3973 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/tuan-chau-island-halong-bay.jpg\" sizes=\"(max-width: 1000px) 100vw, 1000px\" srcset=\"http://dtjhometel.com/wp-content/uploads/2018/06/tuan-chau-island-halong-bay.jpg 1000w, http://dtjhometel.com/wp-content/uploads/2018/06/tuan-chau-island-halong-bay-768x432.jpg 768w\" alt=\"\" width=\"100%\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Làng chài Cửa Vạn</span>: Một trong những điểm đến đậm chất Việt của du lịch Hạ Long. Tại làng chài Cửa Vạn, du khách không chỉ được đắm mình trong không gian êm ả, thanh bình mà còn được tìm hiểu đời sống văn hoá của ngư dân, được học cách cách chèo thuyền, giăng lưới, thả câu bắt tôm cá…</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Đảo Quan Lạn </span>thuộc huyện Vân Đồn, cách thành phố Hạ Long khoảng 55 km. Đảo Quan Lạn được biết đến là điểm du lịch biển đẹp, hấp dẫn du khách bởi không gian trong xanh, khoáng đạt, cảnh quan nguyên sơ, trong lành. Trên đảo còn có nhiều di tích lịch sử văn hóa, ghi dấu những chiến công hiển hách của cha ông ta trong đấu tranh chống giặc ngoại xâm. Đặc biệt đến Quan Lạn vào dịp hè, điểm đến không thể thiếu là các bãi tắm như: Sơn Hào, Chân Tiên… Lưu trú tại đây, du khách có thể lựa chọn các khu nhà nghỉ sát bãi biển, tham gia đốt lửa trại giao lưu với người dân địa phương, ra khơi đánh cá, câu mực…</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Đảo Ngọc Vừng</span> là đảo đất có diện tích khoảng 30 km2 thuộc vịnh Bái Tử Long, cách trung tâm thị xã Cẩm Phả khoảng 40km, cách cảng tàu du lịch Tuần Châu khoảng 35km. Trước kia, người dân trên đảo chuyên làm nghề khai thác ngọc trai dưới đáy biển. Ngọc trai ở đây nổi tiếng đẹp và sáng. Vào ban đêm, tàu thuyền từ xa thường nhìn thấy hào quang của trai biển tạo thành một vừng sáng xung quanh đảo, vì thế mà đảo có tên là Ngọc Vừng. Đảo có núi Vạn Xuân cao 182m, có di chỉ khảo cổ thuộc văn hóa Hạ Long, có bến cảng cổ Cống Yên thuộc hệ thống thương cảng cổ Vân Đồn từ thế kỷ XII và di tích thành cổ nhà Nguyễn.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Đảo Mắt Rồng:</span> Đảo Mắt Rồng với diện tích khoảng 30 ha còn được biết đến bởi tên gọi là hòn Bái Đông. Đảo nằm ở phía Nam của vùng vịnh Hạ Long, tiếp giáp với khu vực vịnh Lan Hạ. Có thể nói điểm thu hút nhất của đảo Mắt Rồng nằm ở nét hoang sơ, nguyên thủy. Nếu có khả năng tài chính thực hiện một chuyến du lịch bằng thủy phi cơ, bạn sẽ được chiêm ngưỡng toàn bộ vịnh Hạ Long từ trên cao thì sẽ hiểu tại sao hòn đảo này được gọi bằng cái tên Mắt Rồng. Đảo nằm lọt thỏm giữa các dãy núi hùng vĩ. Và chắc chắn nếu bạn được tận mắt chiêm ngưỡng làn nước trong xanh mát lạnh của đảo bạn sẽ chỉ muốn đắm mình mãi ở nơi dường như có thể nhìn thấu cả đáy đó.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Núi Bài Thơ</span> nằm giữa TP Hạ Long mang một dáng vẻ vừa kỳ bí vừa thu hút du khách ngay từ cái nhìn đầu tiên. Từ những góc độ khác nhau, núi lúc có dáng như hổ phục, lúc có dáng như sư tử vờn mồi, lúc có dáng như con rồng sắp cất cánh. Từ đỉnh núi Bài Thơ cao 168m – một trong những ngọn núi cao nhất tại Hạ Long, du khách có thể phóng tầm mắt ra xa nhìn bao quát hầu hết các trục đường chính của TP Hạ Long – thủ phủ tỉnh Quảng Ninh cũng như di sản thiên nhiên thế giới vịnh Hạ Long.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Bảo tàng Quảng Ninh: </span></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Bảo tàng – thư viện Quảng Ninh là một công trình kiến trúc nghệ thuật độc đáo. Chỉ mới nhìn từ bên ngoài thôi nhưng đã có rất nhiều bạn trẻ phải “wow” lên rồi! Ngay từ hàng bậc thang rất cao tới phần kính đen tuyền như tấm gương khổng lồ phản chiếu hình ảnh biển trời Hạ Long, cộng thêm font chữ viết tên Bảo tàng đầy ấn tượng đã đủ để chụp một tá tấm hình sống ảo. Vào đến phía trong thì hẳn là ai cũng phải ngợp vì không gian rộng rãi. Với 3 tầng nhà, Bảo tàng Quảng Ninh đem đến một cái nhìn đầy đủ nhất cho khách tham quan về thiên nhiên và con người nơi đây. Bảo tàng mở cửa vào các ngày trong tuần, trừ thứ 2, từ 8h sáng đến 17h chiều. Giá vé để vào tham quan bảo tàng sẽ là 30.000 đồng/lần/người với người lớn; 15.000 đồng/lần/người với học sinh – sinh viên và 10.000 đồng/lần/người với trẻ em.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Dragon Park: </span>Nếu bạn đi đông người, ưa vui chơi, khám phá và muốn thử qua cảm giác mạnh thì Dragon Park sẽ rất thích hợp đây. Đảm bảo là vui chơi đã đời không thua kém bất kỳ công viên giải trí nào đâu nhé! Đây là khu công viên chủ đề lớn nhất Đông Nam Á cơ mà! Công viên chủ đề Dragon Park nằm trong quần thể Sun World Group Park có tới hơn 30 trò chơi đủ các thể loại, từ siêu mạo hiểm, mang đến cảm giác được chinh phục rất đã cho đến những trò chơi đã quen thuộc và gắn liền tuổi thơ.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><img class=\"size-full wp-image-3975 aligncenter\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/sunwordhalong.jpg\" sizes=\"(max-width: 1000px) 100vw, 1000px\" srcset=\"http://dtjhometel.com/wp-content/uploads/2018/06/sunwordhalong.jpg 1000w, http://dtjhometel.com/wp-content/uploads/2018/06/sunwordhalong-768x432.jpg 768w\" alt=\"\" width=\"100%\" /></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Cáp treo Nữ hoàng</span> băng qua cửa ngõ Vịnh Cửa Lục, nối liền từ bờ biển Bãi Cháy tới Ba Đèo (Hòn Gai, TP. Hạ Long), nên nếu có mặt trên hệ thống cáp treo này bạn sẽ phải choáng ngợp trước cảnh sắc xinh đẹp của vịnh Hạ Long từ trên cao. Dù là ngày hay đêm thì khung cảnh mà bạn được trực tiếp trải nghiệm đều rất rất tuyệt! Nằm trên đỉnh đồi Ba Đèo, Vòng quay Mặt trời là vòng quay lớn thứ hai Việt Nam và cũng là một trong những vòng quay lớn hàng đầu thế giới. Tại đây, bạn sẽ được ngắm vịnh Hạ Long từ độ cao 215m so với mực nước biển cơ đấy! Thu vào mắt mình những hình ảnh rộng lớn, kỳ vĩ và tuyệt đẹp của vịnh Hạ Long nhất định sẽ là trải nghiệm không thể bỏ lỡ.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Chùa Ba Vàng:</span> Toạ lạc trên lưng chừng núi Thành Đẳng, chùa còn có tên gọi là Bảo Quang Tự, tên dân gian thường gọi là Ba Vàng. Về đêm, ngôi chùa được thắp sáng tạo nên một khung cảnh vô cùng thoát tục như chốn bồng lai tiên cảnh. Chùa nằm ở độ cao 340m trên một vị trí rất đẹp ở phía Tây thành phố Uông Bí, phía trước là Bạch Đằng giang uốn lượn, xa xa là thành phố cảng Hải Phòng, hút tầm mắt là biển Đồ Sơn với muôn trùng sóng vỗ. Bên trái là những dãy núi Thanh Long trùng điệp chầu về, bên phải là những dãy núi Bạch Hổ hùng vĩ phục xuống.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Khu di tích Yên Tử:</span> Du lịch Hạ Long không chỉ có biển. Nếu thích đi chùa lễ bái thì du khách hãy ghé khu di tích Yên Tử. Đây là một hệ thống chùa, am, tháp và rừng cây cổ thụ hoà quyện với cảnh vật thiên nhiên, nằm rải rác từ dốc Đỏ đến núi Yên Tử theo chiều cao dần.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">III. Trải nghiệm và trò chơi</span></p>\n<div>\n<div class=\"col-md-3\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 192.5px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px; text-align: center;\"><img class=\"size-full wp-image-3978 aligncenter\" style=\"box-sizing: border-box; border: 1px solid #333333; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto; padding: 3px;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/cheo-thuyen-kayak.jpg\" alt=\"\" width=\"100%\" /><br style=\"box-sizing: border-box;\" /><em style=\"box-sizing: border-box;\">Chèo thuyền Kayak</em></div>\n<div class=\"col-md-3\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 192.5px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px; text-align: center;\"><img class=\"size-full wp-image-3979 aligncenter\" style=\"box-sizing: border-box; border: 1px solid #333333; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto; padding: 3px;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/Cristina42.jpg\" alt=\"\" width=\"100%\" /><br style=\"box-sizing: border-box;\" /><em style=\"box-sizing: border-box;\">Câu mực đêm</em></div>\n<div class=\"col-md-3\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 192.5px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px; text-align: center;\"><img class=\"size-full wp-image-3980 aligncenter\" style=\"box-sizing: border-box; border: 1px solid #333333; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto; padding: 3px;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/ngamthuyphico.jpg\" alt=\"\" width=\"100%\" /><br style=\"box-sizing: border-box;\" /><em style=\"box-sizing: border-box;\">Ngắm Vịnh Hạ Long từ thủy phi cơ</em></div>\n<div class=\"col-md-3\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 192.5px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px; text-align: center;\"><img class=\"size-full wp-image-3977 aligncenter\" style=\"box-sizing: border-box; border: 1px solid #333333; vertical-align: middle; max-width: 770px; height: auto; display: block; margin-left: auto; margin-right: auto; padding: 3px;\" src=\"http://dtjhometel.com/wp-content/uploads/2018/06/captreoxebus2tang.jpg\" alt=\"\" width=\"100%\" /><br style=\"box-sizing: border-box;\" /><em style=\"box-sizing: border-box;\">Đi cáp treo ‘xe bus 2 tầng’</em></div>\n</div>\n<div class=\"clear\" style=\"clear: both;\"> </div>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"> </p>\n<div class=\"col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 385px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\">\n<div style=\"clear: both;\"> </div>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bold;\">IV. Đặc sản, món ăn, ăn vặt của Hạ Long</span></p>\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding-left: 0px;\">\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Ăn sáng: Bún hải sản, bún chả, bún cù kỳ – trục đường Cái dăm – song song với Đường Hoàng Quốc Việt.</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Xôi trắng chả mực, Bánh cuốn chả mực</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Món ngán, Sá sùng. Món sam biển, Bánh “gật gù”</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Nem chua, nem chạo thị trấn Quảng Yên</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Cà sấy Tiên Yên</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Rượu nếp ngâm Hoành Bồ ở Hạ Long</li>\n</ul>\n</div>\n<div class=\"col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 385px; font-family: Arial; font-size: 15px; letter-spacing: 0.21px;\">\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: bold;\">V. Nhà hàng, quán cafe ngon tại Hạ Long</span></p>\n<div class=\"col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 177.5px;\">\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding-left: 0px;\">\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">1958 Restaurant</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Linh Dan Restaurant</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Nhà hàng Cua Vàng</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Nhà Hàng Vịnh Cát</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Nhà hàng Rock House Pizza</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Nhà hàng Hồng Hạnh: tại Bãi Cháy và Hòn Gai</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Nhà hàng Hoàng Quân – Hạ Long</li>\n</ul>\n</div>\n<div class=\"col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 177.5px;\">\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding-left: 0px;\">\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Nhà Hàng Cù Kì Bay</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Papa’s BBQ</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Midori House</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Quán cà phê Wander Station</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Brisa Coffee</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Cộng Cà Phê</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Cafe Nam Phong</li>\n<li style=\"box-sizing: border-box; padding: 5px 0px; line-height: 1.6em; letter-spacing: 0.02em; list-style-position: inside;\">Emeraude Cafex</li>\n</ul>\n</div>\n</div>\n<br /><br /><br /><br /><br />\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\"><br /><br /><br />VI. Phương tiện di chuyển</span></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">1. Xe máy/ô tô</span></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Lộ trình Hà Nội – Bắc Ninh – Hạ Long</span>: 155 km. Đây là tuyến đường bộ từ Hà Nội đi du lịch Hạ Long ngắn nhất, đi bằng ôtô hết khoảng từ khoảng 3 tiếng, hành trình như sau:</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">– Hà Nội theo tuyến đường 5 – ngã ba Sài Đồng: 10 km.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">– Sài Đồng theo đường 1 – Bắc Ninh: 23 km.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">– Từ Bắc Ninh theo đường 18 – Phả Lại- Chí Linh – Đông Triều – Uông Bí – Hạ Long: 122 km.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Lộ trình Hà Nội – Bắc Ninh – Hạ Long</span>: 160 km.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">– Sân bay Nội bài (Hà Nội) theo đường Nội Bài – Bắc Ninh (32km) đến Bắc Ninh.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">– Nối vào Quốc lộ 18a qua Phả Lại, Sao Đỏ, Đông Triều, Uống Bí đến Hạ Long.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">2. Xe khách</span></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Du khách có thể đi các hãng xe lớn tập trung ở bến xe Mỹ Đình, chuyến đầu tiên khởi hành lúc 6:00 giờ sáng và chuyến cuối lúc 17:00 giờ chiều (chuyến hành trình mất từ 3-4 tiếng). Các chuyến xe cách nhau từ 5 đến 15 phút đến bến xe Bãi Cháy ở Hạ Long, tỉnh Quảng Ninh. Giá vé xe dao động từ 100 ngàn đồng/khách ghế ngồi đến 200 ngàn đồng/khách giường nằm.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\"><span style=\"box-sizing: border-box; font-weight: bold;\">3. Thủy phi cơ</span></p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Hiện nay ngoài các phương tiện di chuyển thông thường, khách du lịch Vịnh Hạ Long từ Hà Nội còn có thêm sự lựa chọn mới với thủy phi cơ hiện đại và sang trọng của Hãng hàng không Hải Âu.</p>\n<p style=\"box-sizing: border-box; margin: 14px 0px; line-height: 1.6em; letter-spacing: 0.02em; font-size: 15px; text-align: justify; font-family: Arial;\">Để đặt vé máy bay thủy phi cơ,  bạn có thể vào trang website :<span style=\"box-sizing: border-box; font-weight: bold;\"> </span><a style=\"box-sizing: border-box; background-color: transparent; color: #e7c130; text-decoration-line: none; outline: none;\" href=\"https://www.seaplanes.vn/vi/\"><span style=\"box-sizing: border-box; font-weight: bold;\">seaplanes.vn</span></a></p>', '2019-04-20 01:42:17', '2019-04-22 20:02:01'),
(100, 'posts', 'slug', 3, 'vi', 'cam-nang-du-lich-ha-long', '2019-04-20 01:42:17', '2019-04-22 19:43:49'),
(101, 'posts', 'meta_description', 3, 'vi', 'This is the meta description', '2019-04-20 01:42:17', '2019-04-20 01:42:17'),
(102, 'posts', 'meta_keywords', 3, 'vi', 'keyword1, keyword2, keyword3', '2019-04-20 01:42:17', '2019-04-20 01:42:17'),
(103, 'data_types', 'display_name_singular', 13, 'vi', 'Contact', '2019-04-21 01:00:08', '2019-04-21 01:00:08'),
(104, 'data_types', 'display_name_plural', 13, 'vi', 'Contacts', '2019-04-21 01:00:08', '2019-04-21 01:00:08'),
(105, 'data_types', 'display_name_singular', 16, 'vi', 'Photo', '2019-04-21 23:41:19', '2019-04-21 23:41:19'),
(106, 'data_types', 'display_name_plural', 16, 'vi', 'Photos', '2019-04-21 23:41:19', '2019-04-21 23:41:19'),
(107, 'photos', 'name', 1, 'vi', 'Phòng khách', '2019-04-21 23:50:18', '2019-04-21 23:50:18'),
(108, 'photos', 'name', 2, 'vi', 'Phòng ngủ', '2019-04-21 23:51:25', '2019-04-21 23:51:25'),
(109, 'data_types', 'display_name_singular', 18, 'vi', 'Booking', '2019-04-22 07:15:11', '2019-04-22 07:15:11'),
(110, 'data_types', 'display_name_plural', 18, 'vi', 'Bookings', '2019-04-22 07:15:11', '2019-04-22 07:15:11'),
(111, 'categories', 'slug', 1, 'vi', 'tin-tuc', '2019-04-22 19:55:57', '2019-04-22 19:55:57'),
(112, 'categories', 'name', 1, 'vi', 'Tin tức', '2019-04-22 19:55:57', '2019-04-22 19:55:57'),
(113, 'services', 'name', 2, 'vi', 'Siêu thị VinMart', '2019-04-22 20:35:02', '2019-04-22 20:36:30'),
(114, 'services', 'name', 3, 'vi', 'Vui chơi trẻ em', '2019-04-22 20:35:25', '2019-04-22 20:36:37'),
(115, 'services', 'name', 4, 'vi', 'Phòng tập Gym', '2019-04-22 20:36:11', '2019-04-22 20:36:23'),
(116, 'data_types', 'display_name_singular', 5, 'vi', 'Post', '2019-04-23 07:43:58', '2019-04-23 07:43:58'),
(117, 'data_types', 'display_name_plural', 5, 'vi', 'Posts', '2019-04-23 07:43:58', '2019-04-23 07:43:58'),
(118, 'abouts', 'name', 1, 'vi', 'DTJ HOMETEL', '2019-04-23 08:47:49', '2019-04-23 08:47:49'),
(119, 'abouts', 'content', 1, 'vi', '<span style=\"color: #666666; font-family: utmavo;\">DTJ Hometel là đơn vị đầu tiên cung cấp Căn hộ Hometel tại Hạ Long – hình thức lưu trú mới xuất hiện tại Việt Nam trong 1 năm trở lại đây. Hometel là sự tích hợp giữa Căn Hộ (Home) và Khách sạn (Hotel) mang lại đầy đủ tiện nghi cho khách hàng như được sống trong căn nhà của mình, đồng thời vẫn được trải nghiệm dịch vụ chất lượng cao như ở Khách sạn mà giá cả cực kỳ hợp lý.</span><br style=\"box-sizing: border-box; color: #666666; font-family: utmavo;\" /><br style=\"box-sizing: border-box; color: #666666; font-family: utmavo;\" /><span style=\"color: #666666; font-family: utmavo;\">Từ tháng 6 năm 2018, DTJ Hometel chính thức đi vào hoạt động với dịch vụ cho thuê căn hộ Green Bay tại khu vực Bãi Cháy Hạ Long. DTJ Hometel độc đáo tọa lạc trên đường bao biển Vịnh Hạ long, giữa Đảo Tuần Châu và Công viên Sun World phong cách thiết kế hiện đại, tiêu chuẩn 3 sao cộng. Với vị trí thuận lợi nằm ở tòa nhà Green Bay Premium - trung tâm quần thể của BIM Group:</span>', '2019-04-23 08:47:49', '2019-04-23 08:47:49'),
(120, 'abouts', 'title', 1, 'vi', '', '2019-04-23 08:47:49', '2019-04-25 06:52:51'),
(121, 'menu_items', 'title', 34, 'vi', 'Bookings', '2019-04-23 09:26:43', '2019-04-23 09:26:43'),
(122, 'menu_items', 'title', 35, 'vi', 'Abouts', '2019-04-23 09:27:01', '2019-04-23 09:27:01'),
(123, 'data_types', 'display_name_singular', 19, 'vi', 'About', '2019-04-23 09:29:04', '2019-04-23 09:29:04'),
(124, 'data_types', 'display_name_plural', 19, 'vi', 'Abouts', '2019-04-23 09:29:04', '2019-04-23 09:29:04'),
(125, 'apartments', 'name', 2, 'vi', 'Căn hộ 3 PN', '2019-04-24 01:17:25', '2019-04-24 01:17:25'),
(126, 'apartments', 'content', 2, 'vi', '<table style=\"border-collapse: collapse; width: 100%; height: 132px;\" border=\"1\">\n<tbody>\n<tr style=\"height: 13px;\">\n<td style=\"width: 35%; height: 13px;\"><strong>Danh sách phòng</strong>:</td>\n<td style=\"height: 13px;\">CH-1015, CH-1016, CH-2415</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Hướng ban công</strong>:</td>\n<td style=\"height: 13px;\">View biển &amp; view núi</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 35%; height: 13px;\"><strong>Số người</strong>:</td>\n<td style=\"height: 13px;\">6 người lớn &amp; 3 trẻ em (dưới 12 tuổi)</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Loại phòng</strong>:</td>\n<td style=\"height: 13px;\">3 phòng đơn</td>\n</tr>\n<tr style=\"height: 15px;\">\n<td style=\"height: 15px;\"><strong>Loại giường</strong>:</td>\n<td style=\"height: 15px;\">1 giường Queen (1m8<sup> </sup>* 2m) và 2 giường single (1m2<sup> </sup>* 2m)</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Nội thất</strong>:</td>\n<td style=\"height: 13px;\">Bàn trà, ghế Sopha, ghế thư giãn, tủ lạnh, tủ quần áo…</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Phòng tắm</strong>:</td>\n<td style=\"height: 13px;\">Vòi sen &amp; bồn rửa mặt, khăn tắm, gương, khăn các loại, máy sấy tóc, vật dụng phòng tắm</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Giải trí</strong>:</td>\n<td style=\"height: 13px;\">Tivi truyền hình cáp, Wifi miễn phí</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Vật dụng an toàn và an ninh</strong>:</td>\n<td style=\"height: 13px;\">Két sắt trong phòng, khóa từ hiện đại</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Ghi chú</strong>:</td>\n<td style=\"height: 13px;\">Nếu thêm người, tính thêm phụ thu.</td>\n</tr>\n</tbody>\n</table>', '2019-04-24 01:17:25', '2019-04-24 21:11:32'),
(127, 'apartments', 'tieuchuan', 2, 'vi', '<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight text-center\" style=\"text-align: center;\"><img src=\"/images/icon1.png\" alt=\"\" /> 90 m2</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon2.png\" alt=\"\" /> Sử dụng toàn bộ<br />căn hộ</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon3.png\" alt=\"\" /> Tiêu chuẩn<br />9 người</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon4.png\" alt=\"\" /> 1 giường Queen<br />2 giường Superior</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon5.png\" alt=\"\" /> View vịnh/ Núi</div>', '2019-04-24 01:17:26', '2019-04-24 02:13:18'),
(128, 'apartments', 'chinhsach', 2, 'vi', '<div><strong>1. Giá phòng chưa bao gồm: </strong></div>\n<div>10% VAT và 5% phí dịch vụ.</div>\n<div><strong>2. Giá phòng đã bao gồm: </strong></div>\n<div>- Cà phê, Trà và nước miễn phí đặt phòng.</div>\n<div>- Miễn phí sử dụng wifi.</div>\n<div>- Miễn phí sử dụng hồ bơi và các dịch vụ thuộc tòa nhà</div>\n<div><strong>3. Chính sách ở cuối tuần và nghỉ lễ tết </strong></div>\n<div> - Phụ thu cuối tuần 100.000/phòng/đêm đối với các ngày T6, T7</div>\n<div>- Phụ thu 20% so với giá niêm yết trong giai đoạn Lễ Tết: 01/01/2019 (Tết Dương lịch); 15 – 20/02/2019 (Tết nguyên đán); 25/04/2019 (Giỗ tổ Hùng Vương); 28/04/2019 – 01/05/2019; (Ngày Thống Nhất); 01 – 02/09/2019 (Lễ Quốc Khánh); 24 – 25/12/2019 (Lễ Giáng Sinh); 31/12/2019 (Tết Dương lịch)</div>\n<div><strong>4. Chính sách trẻ em và ở ghép : </strong></div>\n<div> - Miễn phí trẻ em dưới 12 tuổi, mỗi giường được thêm tối đa 1 trẻ em ở cùng với bố mẹ, trẻ em tiếp theo tính như ở ghép thêm người, phụ thu 100.000 VND/em</div>\n<div>- Trẻ em trên 12 tuổi tính như người lớn</div>\n<div>- Phụ thu 100.000/phòng/đêm đối với 1 khách ở ghép.</div>\n<div><strong>5. Nhận Phòng và Trả phòng </strong></div>\n<div>- Thời gian nhận phòng: 14:00 và trả phòng 12:00 trưa ngày hôm sau.</div>\n<div>- Trường hợp yêu cầu trả phòng trễ như sau:</div>\n<div>-Trả phòng trễ trước 15:00 – Phụ phí 20% của tiền phòng 1 đêm</div>\n<div>- Trả phòng trễ trước 18:00 – Phụ phí 50% của tiền phòng 1 đêm</div>\n<div>- Trả phòng trễ sau 18:00 – Phụ phí 100% tiền phòng 1 đêm</div>\n<div><strong>6. Điều kiện hủy phòng &amp; khách không đến: </strong></div>\n<div>– Việc hủy phòng được xác nhận từ (07) ngày trước ngày nhận phòng sẽ không bị phạt phí hủy.</div>\n<div>– Việc hủy phòng được xác nhận trong vòng (04) ngày đến (06) ngày trước ngày nhận phòng thì sẽ bị phạt phí hủy bẳng 50% tổn g giá trị tiền phòng đã đặt (bao gồm thuế và phí phục vụ).</div>\n<div>\"– Việc hủy phòng được xác nhận trong vòng (03) ngày hoặc bảy mươi hai (72) giờ trước ngày nhận phòng thì sẽ bị tính phí hủy bằng 100% tổng giá trị tiền phòng đã đặt (bao gồm thuế và phí phục vụ)\"</div>', '2019-04-24 01:17:26', '2019-04-24 21:11:32'),
(129, 'apartments', 'slug', 2, 'vi', 'can-ho-3-pn', '2019-04-24 01:17:26', '2019-04-24 01:17:26'),
(130, 'apartments', 'description', 2, 'vi', '', '2019-04-24 01:17:26', '2019-04-24 01:17:26'),
(131, 'utilities', 'name', 1, 'vi', 'Wifi', '2019-04-24 02:49:09', '2019-04-24 02:49:09'),
(132, 'data_types', 'display_name_singular', 20, 'vi', 'Utility', '2019-04-24 03:05:31', '2019-04-24 03:05:31'),
(133, 'data_types', 'display_name_plural', 20, 'vi', 'Utilities', '2019-04-24 03:05:31', '2019-04-24 03:05:31'),
(134, 'utilities', 'name', 2, 'vi', 'TV kết nối My TV', '2019-04-24 03:15:11', '2019-04-24 03:15:11'),
(135, 'utilities', 'name', 4, 'vi', 'Điều hoà ', '2019-04-24 03:15:32', '2019-04-24 20:32:53'),
(136, 'utilities', 'name', 3, 'vi', 'Loa Bluetooth', '2019-04-24 18:27:02', '2019-04-24 18:27:02'),
(137, 'utilities', 'name', 5, 'vi', 'Sofa', '2019-04-24 18:31:06', '2019-04-24 18:31:06'),
(138, 'utilities', 'name', 6, 'vi', 'Bình nóng lạnh', '2019-04-24 18:40:21', '2019-04-24 20:23:40'),
(139, 'utilities', 'name', 7, 'vi', 'Vòi hoa sen', '2019-04-24 18:41:01', '2019-04-24 20:23:23'),
(140, 'utilities', 'name', 8, 'vi', 'Dép đi trong nhà', '2019-04-24 18:44:54', '2019-04-24 20:23:14'),
(141, 'utilities', 'name', 9, 'vi', 'Tủ lạnh', '2019-04-24 18:48:22', '2019-04-24 20:23:06'),
(142, 'utilities', 'name', 10, 'vi', 'Máy giặt', '2019-04-24 18:49:08', '2019-04-24 20:22:53'),
(143, 'utilities', 'name', 11, 'vi', 'Bếp từ', '2019-04-24 18:51:52', '2019-04-24 20:22:45'),
(144, 'utilities', 'name', 12, 'vi', 'Lò vi sóng', '2019-04-24 18:53:28', '2019-04-24 20:22:32'),
(145, 'utilities', 'name', 13, 'vi', 'Dụng cụ nhà bếp', '2019-04-24 18:56:41', '2019-04-24 20:19:39'),
(146, 'utilities', 'name', 14, 'vi', 'Bình siêu tốc', '2019-04-24 19:01:37', '2019-04-24 20:19:30');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(147, 'utilities', 'name', 15, 'vi', 'Máy sưởi', '2019-04-24 19:02:48', '2019-04-24 20:19:22'),
(148, 'utilities', 'name', 16, 'vi', 'Tủ quần áo', '2019-04-24 19:04:56', '2019-04-24 20:19:13'),
(149, 'utilities', 'name', 17, 'vi', 'Giá để giầy', '2019-04-24 20:18:35', '2019-04-24 20:19:05'),
(150, 'utilities', 'name', 18, 'vi', 'Bộ bàn ăn', '2019-04-24 20:25:26', '2019-04-24 20:25:26'),
(151, 'utilities', 'name', 19, 'vi', 'Điện thoại bàn', '2019-04-24 20:26:03', '2019-04-24 20:33:26'),
(152, 'utilities', 'name', 20, 'vi', 'Dịch vụ phòng 24/7', '2019-04-24 20:26:53', '2019-04-24 20:33:34'),
(153, 'utilities', 'name', 21, 'vi', 'Máy sấy tóc', '2019-04-24 20:28:34', '2019-04-24 20:28:34'),
(155, 'photos', 'name', 3, 'vi', 'Phòng ngủ', '2019-04-25 00:08:42', '2019-04-25 00:08:42'),
(157, 'photos', 'name', 5, 'vi', 'Phòng tắm', '2019-04-25 00:10:54', '2019-04-25 00:10:54'),
(158, 'hometels', 'title', 1, 'vi', '', '2019-04-25 06:57:08', '2019-04-25 18:33:10'),
(159, 'photos', 'name', 6, 'vi', 'Phòng khách', '2019-04-25 19:04:24', '2019-04-25 19:04:24'),
(160, 'photos', 'name', 7, 'vi', 'Phòng ngủ', '2019-04-25 19:05:15', '2019-04-25 19:05:15'),
(161, 'photos', 'name', 8, 'vi', 'Phòng tắm', '2019-04-25 19:05:48', '2019-04-25 19:05:48'),
(162, 'photos', 'name', 9, 'vi', 'Nhà bếp', '2019-04-25 19:06:35', '2019-04-25 19:06:35'),
(163, 'apartments', 'name', 3, 'vi', 'Luxury', '2019-04-26 01:05:52', '2019-04-26 01:05:52'),
(164, 'apartments', 'content', 3, 'vi', '<table style=\"border-collapse: collapse; width: 100%; height: 132px;\" border=\"1\">\n<tbody>\n<tr style=\"height: 13px;\">\n<td style=\"width: 35%; height: 13px;\"><strong>Danh sách phòng</strong>:</td>\n<td style=\"height: 13px;\">CH-1015, CH-1016, CH-2415</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Hướng ban công</strong>:</td>\n<td style=\"height: 13px;\">View biển &amp; view núi</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 35%; height: 13px;\"><strong>Số người</strong>:</td>\n<td style=\"height: 13px;\">6 người lớn &amp; 3 trẻ em (dưới 12 tuổi)</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Loại phòng</strong>:</td>\n<td style=\"height: 13px;\">3 phòng đơn</td>\n</tr>\n<tr style=\"height: 15px;\">\n<td style=\"height: 15px;\"><strong>Loại giường</strong>:</td>\n<td style=\"height: 15px;\">1 giường Queen (1m8<sup> </sup>* 2m) và 2 giường single (1m2<sup> </sup>* 2m)</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Nội thất</strong>:</td>\n<td style=\"height: 13px;\">Bàn trà, ghế Sopha, ghế thư giãn, tủ lạnh, tủ quần áo…</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Phòng tắm</strong>:</td>\n<td style=\"height: 13px;\">Vòi sen &amp; bồn rửa mặt, khăn tắm, gương, khăn các loại, máy sấy tóc, vật dụng phòng tắm</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Giải trí</strong>:</td>\n<td style=\"height: 13px;\">Tivi truyền hình cáp, Wifi miễn phí</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Vật dụng an toàn và an ninh</strong>:</td>\n<td style=\"height: 13px;\">Két sắt trong phòng, khóa từ hiện đại</td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"height: 13px;\"><strong>Ghi chú</strong>:</td>\n<td style=\"height: 13px;\">Nếu thêm người, tính thêm phụ thu.<br /><br /></td>\n</tr>\n</tbody>\n</table>', '2019-04-26 01:05:52', '2019-04-26 01:05:52'),
(165, 'apartments', 'tieuchuan', 3, 'vi', '<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight text-center\" style=\"text-align: center;\"><img src=\"/images/icon1.png\" alt=\"\" /> 90 m2</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon2.png\" alt=\"\" /> Sử dụng toàn bộ<br />căn hộ</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon3.png\" alt=\"\" /> Tiêu chuẩn<br />9 người</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon4.png\" alt=\"\" /> 1 giường Queen<br />2 giường Superior</div>\n<div class=\"p-2 utmavobold cl-icon flex-fill bd-highlight\" style=\"text-align: center;\"><img src=\"/images/icon5.png\" alt=\"\" /> View vịnh/ Núi</div>', '2019-04-26 01:05:52', '2019-04-26 01:05:52'),
(166, 'apartments', 'chinhsach', 3, 'vi', '<div><strong>1. Giá phòng chưa bao gồm:</strong></div>\n<div>10% VAT và 5% phí dịch vụ.</div>\n<div><strong>2. Giá phòng đã bao gồm:</strong></div>\n<div>- Cà phê, Trà và nước miễn phí đặt phòng.</div>\n<div>- Miễn phí sử dụng wifi.</div>\n<div>- Miễn phí sử dụng hồ bơi và các dịch vụ thuộc tòa nhà</div>\n<div><strong>3. Chính sách ở cuối tuần và nghỉ lễ tết</strong></div>\n<div> - Phụ thu cuối tuần 100.000/phòng/đêm đối với các ngày T6, T7</div>\n<div>- Phụ thu 20% so với giá niêm yết trong giai đoạn Lễ Tết: 01/01/2019 (Tết Dương lịch); 15 – 20/02/2019 (Tết nguyên đán); 25/04/2019 (Giỗ tổ Hùng Vương); 28/04/2019 – 01/05/2019; (Ngày Thống Nhất); 01 – 02/09/2019 (Lễ Quốc Khánh); 24 – 25/12/2019 (Lễ Giáng Sinh); 31/12/2019 (Tết Dương lịch)</div>\n<div><strong>4. Chính sách trẻ em và ở ghép :</strong></div>\n<div> - Miễn phí trẻ em dưới 12 tuổi, mỗi giường được thêm tối đa 1 trẻ em ở cùng với bố mẹ, trẻ em tiếp theo tính như ở ghép thêm người, phụ thu 100.000 VND/em</div>\n<div>- Trẻ em trên 12 tuổi tính như người lớn</div>\n<div>- Phụ thu 100.000/phòng/đêm đối với 1 khách ở ghép.</div>\n<div><strong>5. Nhận Phòng và Trả phòng</strong></div>\n<div>- Thời gian nhận phòng: 14:00 và trả phòng 12:00 trưa ngày hôm sau.</div>\n<div>- Trường hợp yêu cầu trả phòng trễ như sau:</div>\n<div>-Trả phòng trễ trước 15:00 – Phụ phí 20% của tiền phòng 1 đêm</div>\n<div>- Trả phòng trễ trước 18:00 – Phụ phí 50% của tiền phòng 1 đêm</div>\n<div>- Trả phòng trễ sau 18:00 – Phụ phí 100% tiền phòng 1 đêm</div>\n<div><strong>6. Điều kiện hủy phòng &amp; khách không đến:</strong></div>\n<div>– Việc hủy phòng được xác nhận từ (07) ngày trước ngày nhận phòng sẽ không bị phạt phí hủy.</div>\n<div>– Việc hủy phòng được xác nhận trong vòng (04) ngày đến (06) ngày trước ngày nhận phòng thì sẽ bị phạt phí hủy bẳng 50% tổn g giá trị tiền phòng đã đặt (bao gồm thuế và phí phục vụ).</div>\n<div>\"– Việc hủy phòng được xác nhận trong vòng (03) ngày hoặc bảy mươi hai (72) giờ trước ngày nhận phòng thì sẽ bị tính phí hủy bằng 100% tổng giá trị tiền phòng đã đặt (bao gồm thuế và phí phục vụ)\"</div>', '2019-04-26 01:05:52', '2019-04-26 01:05:52'),
(167, 'apartments', 'slug', 3, 'vi', 'luxury', '2019-04-26 01:05:52', '2019-04-26 01:05:52'),
(168, 'apartments', 'description', 3, 'vi', '', '2019-04-26 01:05:52', '2019-04-26 01:05:52'),
(169, 'photos', 'name', 10, 'vi', 'Phòng ngủ', '2019-04-26 01:09:15', '2019-04-26 01:09:15'),
(170, 'photos', 'name', 11, 'vi', 'Phòng khách', '2019-04-26 01:09:50', '2019-04-26 01:09:50'),
(171, 'hometels', 'name', 2, 'vi', 'Hometel Nha Trang', '2019-04-26 01:23:28', '2019-04-26 01:23:28'),
(172, 'hometels', 'title', 2, 'vi', '', '2019-04-26 01:23:28', '2019-04-26 01:23:28'),
(173, 'hometels', 'content', 2, 'vi', '<div>DTJ Hometel là đơn vị đầu tiên cung cấp Căn hộ Hometel tại Hạ Long – hình thức lưu trú mới xuất hiện tại Việt Nam trong 1 năm trở lại đây. Hometel là sự tích hợp giữa Căn Hộ (Home) và Khách sạn (Hotel) mang lại đầy đủ tiện nghi cho khách hàng như được sống trong căn nhà của mình, đồng thời vẫn được trải nghiệm dịch vụ chất lượng cao như ở Khách sạn mà giá cả cực kỳ hợp lý.</div>\n<div> </div>\n<div>Từ tháng 6 năm 2018, DTJ Hometel chính thức đi vào hoạt động với dịch vụ cho thuê căn hộ Green Bay tại khu vực Bãi Cháy Hạ Long. DTJ Hometel độc đáo tọa lạc trên đường bao biển Vịnh Hạ long, giữa Đảo Tuần Châu và Công viên Sun World phong cách thiết kế hiện đại, tiêu chuẩn 3 sao cộng. Với vị trí thuận lợi nằm ở tòa nhà Green Bay Premium - trung tâm quần thể của BIM Group:</div>', '2019-04-26 01:23:28', '2019-04-26 01:23:28'),
(174, 'hometels', 'slug', 2, 'vi', 'hometel-nha-trang', '2019-04-26 01:23:28', '2019-04-26 01:23:28'),
(175, 'hometels', 'description', 2, 'vi', '', '2019-04-26 01:23:28', '2019-04-26 01:23:28'),
(176, 'hometels', 'name', 3, 'vi', 'Hometel Phú Quốc', '2019-04-26 01:25:23', '2019-04-26 01:25:23'),
(177, 'hometels', 'title', 3, 'vi', '', '2019-04-26 01:25:23', '2019-04-26 01:25:23'),
(178, 'hometels', 'content', 3, 'vi', '<div>DTJ Hometel là đơn vị đầu tiên cung cấp Căn hộ Hometel tại Hạ Long – hình thức lưu trú mới xuất hiện tại Việt Nam trong 1 năm trở lại đây. Hometel là sự tích hợp giữa Căn Hộ (Home) và Khách sạn (Hotel) mang lại đầy đủ tiện nghi cho khách hàng như được sống trong căn nhà của mình, đồng thời vẫn được trải nghiệm dịch vụ chất lượng cao như ở Khách sạn mà giá cả cực kỳ hợp lý.</div>\n<div> </div>\n<div>Từ tháng 6 năm 2018, DTJ Hometel chính thức đi vào hoạt động với dịch vụ cho thuê căn hộ Green Bay tại khu vực Bãi Cháy Hạ Long. DTJ Hometel độc đáo tọa lạc trên đường bao biển Vịnh Hạ long, giữa Đảo Tuần Châu và Công viên Sun World phong cách thiết kế hiện đại, tiêu chuẩn 3 sao cộng. Với vị trí thuận lợi nằm ở tòa nhà Green Bay Premium - trung tâm quần thể của BIM Group:</div>', '2019-04-26 01:25:23', '2019-04-26 01:25:23'),
(179, 'hometels', 'slug', 3, 'vi', 'hometel-phu-quoc', '2019-04-26 01:25:23', '2019-04-26 01:25:23'),
(180, 'hometels', 'description', 3, 'vi', '', '2019-04-26 01:25:23', '2019-04-26 01:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$8PS1Lmd4zM0oHWn5UplJ7eHXcPLjXZl1hbfwa2GEttKeuRG.6jy4S', 'oLZR6GZDmHCQqPpiDh7jSlzDYbwFGhidU9PCbjc6MhLl5oRsNshYnaOcwuZg', NULL, '2019-03-31 21:16:10', '2019-03-31 21:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `utilities`
--

CREATE TABLE `utilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `utilities`
--

INSERT INTO `utilities` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Wifi', 'fas fa-wifi', 1, '2019-04-24 02:43:00', '2019-04-24 22:36:17'),
(2, 'TV kết nối MyTV', 'fas fa-tv', 1, '2019-04-24 02:43:00', '2019-04-24 18:25:16'),
(3, 'Loa Bluetooth', 'fas fa-headphones-alt', 1, '2019-04-24 02:43:00', '2019-04-24 18:27:02'),
(4, 'Điều hoà ', 'fas fa-band-aid', 1, '2019-04-24 03:15:00', '2019-04-24 18:32:03'),
(5, 'Sofa', 'fas fa-couch', 1, '2019-04-24 18:31:00', '2019-04-24 20:23:49'),
(6, 'Bình nóng lạnh', 'fas fa-digital-tachograph', 1, '2019-04-24 18:40:00', '2019-04-24 20:23:40'),
(7, 'Vòi hoa sen', 'fas fa-shower', 1, '2019-04-24 18:41:00', '2019-04-24 20:23:23'),
(8, 'Dép đi trong nhà', 'fas fa-shoe-prints', 1, '2019-04-24 18:44:00', '2019-04-24 20:23:14'),
(9, 'Tủ lạnh', 'far fa-snowflake', 1, '2019-04-24 18:48:00', '2019-04-24 20:23:06'),
(10, 'Máy giặt', 'fas fa-tshirt', 1, '2019-04-24 18:49:00', '2019-04-24 20:22:53'),
(11, 'Bếp từ', 'fab fa-first-order-alt', 1, '2019-04-24 18:51:00', '2019-04-24 20:22:45'),
(12, 'Lò vi sóng', 'fas fa-chart-line', 1, '2019-04-24 18:53:00', '2019-04-24 20:22:32'),
(13, 'Dụng cụ nhà bếp', 'fas fa-fire', 1, '2019-04-24 18:56:00', '2019-04-24 20:19:39'),
(14, 'Bình siêu tốc', 'fas fa-blender', 1, '2019-04-24 19:01:00', '2019-04-24 20:19:30'),
(15, 'Máy sưởi', 'fab fa-free-code-camp', 1, '2019-04-24 19:02:00', '2019-04-24 20:19:22'),
(16, 'Tủ quần áo', 'fab fa-trello', 1, '2019-04-24 19:04:00', '2019-04-24 20:19:13'),
(17, 'Giá để giầy', 'fas fa-bars', 1, '2019-04-24 20:18:00', '2019-04-24 20:19:05'),
(18, 'Bộ bàn ăn', 'fas fa-chess-board', 1, '2019-04-24 20:25:26', '2019-04-24 20:25:26'),
(19, 'Điện thoại bàn', 'fas fa-phone', 1, '2019-04-24 20:26:00', '2019-04-24 20:33:26'),
(20, 'Dịch vụ phòng 24/7', 'fab fa-servicestack', 1, '2019-04-24 20:26:00', '2019-04-24 20:33:34'),
(21, 'Máy sấy tóc', NULL, 1, '2019-04-24 20:28:34', '2019-04-24 20:28:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apartment_posts`
--
ALTER TABLE `apartment_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apartment_utilities`
--
ALTER TABLE `apartment_utilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `hometels`
--
ALTER TABLE `hometels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apartments`
--
ALTER TABLE `apartments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `apartment_posts`
--
ALTER TABLE `apartment_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `apartment_utilities`
--
ALTER TABLE `apartment_utilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hometels`
--
ALTER TABLE `hometels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `utilities`
--
ALTER TABLE `utilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
