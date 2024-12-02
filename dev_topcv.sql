-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: nienluancn
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user.png',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Che Thanh Kien','user.png','kien123@gmail.com','chethanhkien214');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicants`
--

DROP TABLE IF EXISTS `applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicants` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filecv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `links` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduce_yourself` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `study_degree` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hobby` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perfection_level` int(11) DEFAULT NULL,
  `status_public_cv` int(11) DEFAULT 0,
  `status_account` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127009756 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicants`
--

LOCK TABLES `applicants` WRITE;
/*!40000 ALTER TABLE `applicants` DISABLE KEYS */;
INSERT INTO `applicants` VALUES (87595529,'CHẾ THANH KIÊN','applicant/bgk05RYkahprRcOW2M97XVPBXhWQTeDpul2qcaF5.jpg','kienb1910088@student.ctu.edu.vn','87595529','Hồ Chí Minh','Nam','0395004764','Xóm 3, thôn Thu Xà, xã Nghĩa Hòa, huyện Tư Nghĩa, tỉnh Quảng Ngãi','fileCv/TufVbqCeu2fnhrvC3VNeKY584GRM6waeRH7evWgA.pdf','https://github.com/Kien221','<div>\r\n<p>● Perform a mix of new software development, enhancements and defect resolution as required● Build and Implement project applications according to design specifications● Research technical issues and provide recommendations to enhance company websites</p>\r\n</div>','<div>\r\n<div>\r\n<p>&nbsp;Perform a mix of new software development, enhancements and defect resolution as required</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;br&gt;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ● Build and Implement project applications according to design specifications</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ● Research technical issues and provide recommendations to enhance company websites</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;br&gt;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ● Work with external partners in the design and development of software solutions</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;br&gt;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ● Work as a team with other development staff in Magento and JavaScript related technologies</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;br&gt;</p>\r\n</div>\r\n</div>','<div>\r\n<div>\r\n<p>&nbsp;Perform a mix of new software development, enhancements and defect resolution as required</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;br&gt;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ● Build and Implement project applications according to design specifications</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ● Research technical issues and provide recommendations to enhance company websites</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;br&gt;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ● Work with external partners in the design and development of software solutions</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;br&gt;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ● Work as a team with other development staff in Magento and JavaScript related technologies</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;br&gt;</p>\r\n</div>\r\n</div>',NULL,NULL,40,1,1,'2023-02-16 07:21:32','2024-05-13 01:15:24'),(127009755,'che thanh kien','applicant/TAh7a0VAZu38VsFWkN2JUSB3Co7724cFMR83qYMf.jpg','thanhkien2021008@gmail.com','127009755','Hồ Chí Minh','Nam','0395004764','ninh kieu can tho','fileCv/sc20G32ogzEj1hKwXHf3c9thOSxz1FgO4Un7XZUQ.pdf',NULL,'<div>● Perform a mix of new software development, enhancements and defect resolution as required● Build and Implement project applications according to design specifications● Research technical issues and provide recommendations to enhance company websites</div>','<div>\r\n<div>\r\n<div>\r\n<div>Tr&igrave;nh độ&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Đại Học<br />\r\nTốt nghiệp:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; GIỎI</div>\r\n</div>\r\n</div>\r\n</div>',NULL,NULL,NULL,40,1,1,'2023-03-05 00:02:17','2024-05-13 02:07:02');
/*!40000 ALTER TABLE `applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply_cvs`
--

DROP TABLE IF EXISTS `apply_cvs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply_cvs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `applicant_id` bigint(20) unsigned DEFAULT NULL,
  `type_cv` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `brief_introduce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `apply_cvs_post_id_foreign` (`post_id`),
  KEY `apply_cvs_applicant_id_foreign` (`applicant_id`),
  CONSTRAINT `apply_cvs_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  CONSTRAINT `apply_cvs_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply_cvs`
--

LOCK TABLES `apply_cvs` WRITE;
/*!40000 ALTER TABLE `apply_cvs` DISABLE KEYS */;
INSERT INTO `apply_cvs` VALUES (19,7,127009755,'cv_upload','fileCv/KQhIKyiu6yeKOpeQ863Ekkq0rs2j4jXLp2kcpqyS.pdf','1','abc','2023-03-08 04:43:03','2023-10-17 01:08:23'),(28,18,87595529,'cv_web','','2',NULL,'2023-03-18 03:03:09','2023-03-25 01:54:06'),(30,16,87595529,'cv_web','','1',NULL,'2023-03-18 03:04:20','2023-03-25 01:44:34'),(36,19,127009755,'cv_web','','1',NULL,'2023-03-20 19:04:16','2023-03-20 20:26:27'),(70,26,127009755,'cv_upload','fileCv/0nWR1XJx5jQFAXklXRY2bKoeT3r4xNZHScMQjZqa.pdf','1','I want to apply for php position','2024-05-13 02:03:58','2024-05-13 02:04:26');
/*!40000 ALTER TABLE `apply_cvs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatting`
--

DROP TABLE IF EXISTS `chatting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatting` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `text_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chatting_room_id_foreign` (`room_id`),
  CONSTRAINT `chatting_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms_chat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatting`
--

LOCK TABLES `chatting` WRITE;
/*!40000 ALTER TABLE `chatting` DISABLE KEYS */;
INSERT INTO `chatting` VALUES (253,14,'hello e',1,1,'2024-05-13 02:05:27','2024-05-13 02:05:27'),(254,14,'Dạ em chào anh ạ',0,0,'2024-05-13 02:06:13','2024-05-13 02:06:13'),(255,14,'adaf',0,0,'2024-07-16 08:50:46','2024-07-16 08:50:46');
/*!40000 ALTER TABLE `chatting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hr_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_employees` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_company` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `companies_hr_id_foreign` (`hr_id`),
  CONSTRAINT `companies_hr_id_foreign` FOREIGN KEY (`hr_id`) REFERENCES `hrs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,1,'Công ty cổ phần chứng khoán Everest','company/logo_company/1YYR73gIHe9clSLJat2Cg7c1A7hLO5O1zMFNGxbU.png','kienb1910088@student.ctu.edu.vn','0395004764','http://localhost:8000/hr/create_company/view','12312','Xóm 3, thôn Thu Xà, xã Nghĩa Hòa, huyện Tư Nghĩa, tỉnh Quảng Ngãi','300-400 nhân viên','IT-Phần mềm','<p>C&ocirc;ng ty Cổ phần C&ocirc;ng nghệ số Thi&ecirc;n Quang (Thien Quang Digital technology joint stock company) th&agrave;nh lập năm 2015, tiền th&acirc;n l&agrave; C&ocirc;ng ty cổ phần IT-H&agrave; Nội (được th&agrave;nh lập v&agrave;o năm 2012) với 6 th&agrave;nh vi&ecirc;n s&aacute;ng lập c&oacute; kinh nghiệm v&agrave; đam m&ecirc; về CNTT v&agrave; kinh doanh. C&aacute;c th&agrave;nh vi&ecirc;n với nền tảng chuy&ecirc;n ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin, đ&atilde; v&agrave; đang l&agrave;m việc trong m&ocirc;i trường quốc tế (Anh, Mỹ, Nhật), từng c&oacute; kinh nghiệm trong việc điều h&agrave;nh c&ocirc;ng ty v&agrave; tham gia l&agrave;m việc tr&ecirc;n thị trường lao động quốc tế. Cả 6 th&agrave;nh vi&ecirc;n s&aacute;ng lập đều c&oacute; kiến thức nền tảng CNTT. Trong đ&oacute;, c&oacute; 2 th&agrave;nh vi&ecirc;n c&oacute; chuy&ecirc;n ng&agrave;nh về quản trị kinh doanh, một th&agrave;nh vi&ecirc;n c&oacute; chuy&ecirc;n ng&agrave;nh ng&acirc;n h&agrave;ng v&agrave; đang học tiến sỹ về t&agrave;i ch&iacute;nh năm cuối tại Nhật. Với đội ngũ nền tảng như vậy, ch&uacute;ng t&ocirc;i ki&ecirc;n tr&igrave; x&acirc;y dựng một tập thể vững mạnh, x&acirc;y dựng một dịch vụ ưu việt, cung cấp những sản phẩm CNTT đ&aacute;p ứng tốt nhu cầu của kh&aacute;ch h&agrave;ng.</p><p>Phục vụ chiến lược ph&aacute;t triển của c&ocirc;ng ty, ban gi&aacute;m đốc C&ocirc;ng ty đ&atilde; họp v&agrave; quyết định cung cấp dịch vụ hosting cho kh&aacute;ch h&agrave;ng mang thương hiệu HostingViet.vn.</p><p>L&agrave; một c&ocirc;ng ty đ&atilde; c&oacute; nhiều kinh nghiệm cung cấp dịch vụ chất lượng cao cho KH Ch&acirc;u &Acirc;u v&agrave; Nhật Bản. Hướng kinh doanh mới của c&ocirc;ng ty kế thừa v&agrave; học hỏi được nhiều từ c&aacute;c đối t&aacute;c. Ch&uacute;ng t&ocirc;i rất mong muốn được g&oacute;p một phần nhỏ v&agrave;o sự ph&aacute;t triển ng&agrave;nh CNTT của Việt Nam.</p>',0),(3,3,'CÔNG TY CỔ PHẦN CÔNG NGHỆ MOBIWORK VIỆT NAM','company/logo_company/qncU31zP7zSqcYRT7rs4IcMUOsIcN7HbXz6N3nhz.png','admin@gmail.com','0395004764','http://localhost:8000/hr/create_company/view','Abcd','Khu văn phòng Tầng 3, Toà CT1, Khu nhà ở Bộ Công An, Đường Phạm Văn Đồng, Phường Cổ Nhuế 2, Bắc Từ Liêm, TP Hà Nội','25-99 nhân viên','IT-Phần mềm','<p><em>C&ocirc;ng ty Cổ phần c&ocirc;ng nghệ Mobiwork tiền th&acirc;n l&agrave; C&ocirc;ng ty cổ phần th&ocirc;ng tin địa l&yacute; eK (eKGIS - th&agrave;nh lập năm 2001). Năm 2015, eKGIS quyết định t&aacute;ch MobiWork Việt Nam ra hoạt động độc lập, chuy&ecirc;n biệt nhằm n&acirc;ng cao chất lượng.</em><br /><em>Về c&ocirc;ng nghệ: MobiWork DMS c&oacute; nhiều lợi thế cạnh tranh trong c&ocirc;ng nghệ định vị, gi&aacute;m s&aacute;t. Ch&iacute;nh bởi vậy, d&ugrave; doanh nghiệp c&ograve;n kh&aacute; trẻ nhưng sản phẩm MobiWork DMS đ&atilde; c&oacute; chỗ đứng vững chắc tr&ecirc;n thị trường, v&agrave; được hơn 500 doanh nghiệp lớn tại Việt Nam đang tin tưởng sử dụng</em><br /><em>Về nh&acirc;n sự: Mobiwork DMS c&oacute; đội ngũ l&agrave; chuy&ecirc;n gia gi&agrave;u kinh nghiệm trong ph&aacute;t triển phần mềm v&agrave; triển khai giải ph&aacute;p quản trị hệ thống ph&acirc;n phối tại Việt Nam. Mobiwork đang kh&ocirc;ng ngừng n&acirc;ng cao t&iacute;nh năng sản phẩm v&agrave; dịch vụ tập trung v&agrave;o giải ph&aacute;p DMS với tầm nh&igrave;n trở th&agrave;nh nh&agrave; cung cấp h&agrave;ng &nbsp;đầu Việt Nam về giải ph&aacute;p DMS.</em></p><p><em>Th&ocirc;ng tin chi tiết xem tại website: mobiwork.vn</em></p>',0),(4,4,'CÔNG TY CỔ PHẦN WECARE GROUP','company/logo_company/f6PCiXuYGTRAYLnbAgqvLNNzsBpwjQ1mvSfePiwn.jpg','chethanhkien@gmail.com','0395004764','http://localhost:8000/hr/create_company/view','Abcd','Hà Nội: Tòa FPT Polytechnic, Trịnh Văn Bô, Nam Từ Liêm; TP HCM: Toà Innovation lô 24, Quang Trung, Q.12; Đà Nẵng: 137 Nguyễn Thị Thập, Hòa Minh, Liên Chiểu; Cần Thơ: 288 Nguyễn Văn Linh, Hưng Lợi, Ninh Kiều; Đắk Lắk: Tổ dân phố 8, P. Tân An, Buôn Ma Thuột','1000+ nhân viên','IT-Phần mềm','<p>Trường Cao đẳng FPT Polytechnic thuộc Tổ chức Gi&aacute;o dục FPT, l&agrave; Cơ sở đ&agrave;o tạo đ&agrave;o tạo trong l&ograve;ng doanh nghiệp. FPT Polytechnic được th&agrave;nh lập v&agrave;o th&aacute;ng 7 năm 2010 v&agrave; hiện tại, FPT Polytechnic đang c&oacute; 5 cơ sở tr&ecirc;n to&agrave;n quốc (H&agrave; Nội, Đ&agrave; Nẵng, T&acirc;y Nguy&ecirc;n, TP HCM, Cần Thơ) với 36.000 sinh vi&ecirc;n đang theo học.</p><p>Hơn 10 năm qua, FPT Polytechnic đ&atilde; khẳng định được năng lực giảng dạy qua việc đ&agrave;o tạo ra c&aacute;c kh&oacute;a sinh vi&ecirc;n được doanh nghiệp đ&aacute;nh gi&aacute; cao về năng lực v&agrave; kỹ năng thực h&agrave;nh. C&aacute;c chuy&ecirc;n ng&agrave;nh đ&agrave;o tạo của FPT Polytechnic lu&ocirc;n b&aacute;m s&aacute;t thị trường (C&ocirc;ng nghệ th&ocirc;ng tin, Đồ họa mỹ thuật đa phương tiện, Kinh doanh, Du lịch - Nh&agrave; h&agrave;ng - Kh&aacute;ch sạn, Chăm s&oacute;c sức khoẻ &amp; l&agrave;m đẹp...); phương ph&aacute;p đ&agrave;o tạo theo triết l&yacute; &ldquo;thực học thực nghiệp&rdquo;, sinh vi&ecirc;n FPT Polytechnic c&oacute; cơ hội vừa học vừa h&agrave;nh, l&agrave;m chủ kỹ năng nghề nghiệp ngay từ tr&ecirc;n ghế nh&agrave; trường.</p><p>Kh&ocirc;ng chỉ l&agrave; m&ocirc;i trường thực h&agrave;nh đầy s&ocirc;i động gi&agrave;nh cho sinh vi&ecirc;n, FPT Polytechnic c&ograve;n l&agrave; &ldquo;mảnh đất&rdquo; đầy cơ hội v&agrave; th&aacute;ch thức của h&agrave;ng ngh&igrave;n c&aacute;n bộ trẻ. FPT Polytechnic lu&ocirc;n ch&uacute; trọng việc ph&aacute;t hiện &ldquo;tinh hoa&rdquo; - t&igrave;m ra những &ldquo;vi&ecirc;n ngọc th&ocirc;&rdquo; gi&agrave;u tiềm năng để &quot;m&agrave;i giũa&quot;. C&aacute;c c&aacute; nh&acirc;n tiềm năng c&oacute; cơ hội thử sức, đồng thời đối mặt với nhiều thử th&aacute;ch để r&egrave;n luyện bản th&acirc;n. Tập thể FPT Polytechnic lu&ocirc;n n&ecirc;u cao tinh thần d&aacute;m nghĩ d&aacute;m l&agrave;m, năng động m&aacute;u lửa, sẵn s&agrave;ng phản ứng nhanh với mọi t&igrave;nh huống, vượt qua những giới hạn, c&ugrave;ng nhau chinh phục những đỉnh cao mới.</p>',0),(5,5,'VNPT Technology - Công ty Cổ phần Công nghệ Công nghiệp Bưu chính viễn thông','company/logo_company/q3iib3Eea5CqOnh1fOAN2ruZqtnvHADcviIQURxN.jpg','FPT@gmail.com','0395004764','http://localhost:8000/hr/create_company/view','tesst','124 Hoàng Quốc Việt, Nghĩa Tân, Cầu Giấy, Hà Nội','25-99 nhân viên','IT-Phần mềm','<p>VNPT Technology l&agrave; đơn vị chủ lực của Tập đo&agrave;n VNPT trong lĩnh vực C&ocirc;ng nghệ; C&ocirc;ng nghiệp Điện tử Viễn th&ocirc;ng; C&ocirc;ng nghệ th&ocirc;ng tin; Truyền th&ocirc;ng v&agrave; C&ocirc;ng nghiệp nội dung số.</p><p>T&iacute;nh đến thời điểm hiện nay, VNPT Technology đ&atilde; cho ra thị trường tr&ecirc;n 10 triệu sản phẩm bao gồm c&aacute;c thiết bị viễn th&ocirc;ng, thiết bị điện tử ti&ecirc;u d&ugrave;ng. B&ecirc;n cạnh đ&oacute;, thị trường quốc tế cũng được đẩy mạnh với việc xuất khẩu sản phẩm sang một số thị trường tiềm năng như L&agrave;o, Campuchia, Myanmar, Indonesia, Nepal&hellip;</p><p><strong>Lĩnh vực hoạt động</strong></p><p>VNPT Technology hoạt động trong c&aacute;c lĩnh vực: Nghi&ecirc;n cứu ph&aacute;t triển, Sản xuất C&ocirc;ng nghệ C&ocirc;ng nghiệp; Kinh doanh quốc tế; Thương mại &amp; Dịch vụ kỹ thuật.</p><p>Nghi&ecirc;n cứu ph&aacute;t triển sản phẩm c&ocirc;ng nghệ &amp; ODM: L&agrave; hoạt động cốt l&otilde;i của C&ocirc;ng ty nhằm tạo ra những gi&aacute; trị từ tri thức, tạo ra t&agrave;i sản tr&iacute; tuệ v&agrave; h&agrave;ng h&oacute;a dịch vụ với h&agrave;m lượng c&ocirc;ng nghệ cao. Nghi&ecirc;n cứu v&agrave; ph&aacute;t triển c&aacute;c c&ocirc;ng nghệ l&otilde;i trong 5 lĩnh vực: Băng rộng cố định, băng rộng kh&ocirc;ng d&acirc;y, IoT, c&ocirc;ng nghệ 5G v&agrave; Chuyển đổi số nhằm tạo ra những sản phẩm to&agrave;n diện từ Phần cứng/Thiết bị, nền tảng cho tới c&aacute;c ứng dụng người d&ugrave;ng. Mục ti&ecirc;u 2025, trở th&agrave;nh nh&agrave; nghi&ecirc;n cứu ph&aacute;t triển thiết kế gốc.</p><p>Sản xuất thiết bị c&ocirc;ng nghệ c&ocirc;ng nghiệp &amp; EMS: C&aacute;c sản phẩm tạo ra từ qu&aacute; tr&igrave;nh nghi&ecirc;n cứu v&agrave; ph&aacute;t triển, được sản xuất h&agrave;ng loạt qua hoạt động sản xuất c&ocirc;ng nghiệp điện tử đ&aacute;p ứng nhu cầu thị trường trong v&agrave; ngo&agrave;i nước. B&ecirc;n cạnh đ&oacute; dịch vụ sản xuất điện tử - EMS được mở rộng gi&uacute;p C&ocirc;ng ty tận dụng được năng lực v&agrave; hạ tầng sẵn c&oacute; đồng thời tham gia s&acirc;u rộng hơn v&agrave;o chuỗi cung ứng to&agrave;n cầu.</p><p>T&iacute;ch hợp hệ thống mạng viễn th&ocirc;ng, C&ocirc;ng nghệ th&ocirc;ng tin: Với gần 30 năm kinh nghiệm t&iacute;ch hợp c&aacute;c hệ thống lớn như mạng Viễn th&ocirc;ng, C&ocirc;ng ty x&aacute;c định trở th&agrave;nh đơn vị dẫn đầu trong lĩnh vực t&iacute;ch hợp hệ thống mạng Viễn th&ocirc;ng v&agrave; C&ocirc;ng nghệ th&ocirc;ng tin. Hoạt động t&iacute;ch hợp hệ thống to&agrave;n diện từ Ph&acirc;n tich, X&acirc;y dựng giải ph&aacute;p tổng thể, Thiết kế, Triển khai v&agrave; Đ&agrave;o tạo chuyển giao.</p><p>Thương mại, dịch vụ kỹ thuật ICT trong nước v&agrave; quốc tế: Hoạt động kinh doanh ph&aacute;t triển thị trường nhằm cung cấp c&aacute;c sản phẩm phẩm c&ocirc;ng nghệ, c&aacute;c giải ph&aacute;p t&iacute;ch hợp, dịch vụ kỹ thuật ICT trong nước v&agrave; quốc tế với c&aacute;c mảng thị trường bao gồm: Kinh doanh ph&aacute;t triển thị trường truyền thống/c&aacute;c nh&agrave; mạng; Kinh doanh ph&aacute;t triển thị trường Doanh nghiệp v&agrave; kh&aacute;ch h&agrave;ng c&aacute; nh&acirc;n; v&agrave; Kinh doanh ph&aacute;t triển thị trường quốc tế.</p><p>Chuyển đổi số doanh nghiệp SME: Đ&acirc;y l&agrave; một lĩnh vực mới được x&aacute;c định tập trung nghi&ecirc;n cứu v&agrave; ph&aacute;t triển trong giai đoạn 2020 &ndash; 2025, song h&agrave;nh c&ugrave;ng chiến lược Quốc gia số tới năm 2030. Gi&uacute;p c&aacute;c doanh nghiệp vừa v&agrave; nhỏ thay đổi c&aacute;c phương thức hoạt động nhằm tạo ra c&aacute;c sản phẩm mới, gi&aacute; trị mới th&ocirc;ng qua việc ứng dụng c&aacute;c bộ giải ph&aacute;p c&ocirc;ng nghệ v&agrave; chuyển dịch vận h&agrave;nh tr&ecirc;n kh&ocirc;ng gian số.</p>',0),(9,10,'TMA Solutions Bình Định','company/logo_company/JipChKMIlkHhhDl90gPCKPbVjK4tJknzWCkKU2Sa.png','thanhkien2021008@gmail.com','0395004764','https://www.tmasolutions.vn','diVal2x55','124 Hoàng Quốc Việt, Nghĩa Tân, Cầu Giấy, Hà Nội','1000+ nhân viên','IT-Phần mềm','<div>TMA Solutions was established in 1997 to provide quality software outsourcing services to leading companies worldwide. With 4,000 engineers, we stand as one of Vietnam&#39;s largest software outsourcing companies. Our engineering team was selected from a large pool of Vietnam IT outsourcing; they are well-trained and have successfully completed numerous large and complex projects to provide world-class technology solutions to customers in 30 countries</div>',0);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,'Làn Sóng Xanh 2024','<div>\r\n<div>\r\n<div>K&iacute;nh ch&agrave;o qu&yacute; Thầy C&ocirc; v&agrave; c&aacute;c em Sinh Vi&ecirc;n,\r\n<p>&nbsp;</p>\r\n\r\n<p>Kế hoạch triển khai thực hiện LVTN của ng&agrave;nh CNTT v&agrave; CNTT-CLC thuộc Khoa CNTT như sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong><em>Ng&agrave;y 21/04</em>:</strong>&nbsp;Deadline GVHD gửi file danh s&aacute;ch SV được bảo vệ LVTN về Khoa CNTT.&nbsp; Thầy C&ocirc; vui l&ograve;ng sử dụng template đ&iacute;nh k&egrave;m trong email v&agrave; reply lại email n&agrave;y gi&uacute;p (kh&ocirc;ng tạo email mới). C&aacute;m ơn Thầy C&ocirc;.</p>\r\n\r\n<p>-&nbsp;<em><strong>Tuần&nbsp;20-21</strong></em>: SV bảo vệ LVTN. Ch&uacute; &yacute;: SV nộp quyển b&aacute;o c&aacute;o LVTN v&agrave; chạy demo với th&agrave;nh vi&ecirc;n Hội đồng trước khi bảo vệ ch&iacute;nh thức theo hướng dẫn gửi k&egrave;m khi c&oacute; Quyết định th&agrave;nh lập Hội đồng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khoa CNTT đ&iacute;nh k&egrave;m link chứa template viết b&aacute;o c&aacute;o LVTN:</p>\r\n\r\n<p>- SV ng&agrave;nh CNTT sử dụng file &quot;MauLuanVan-NienLuan.docx&quot;</p>\r\n\r\n<p>- SV ng&agrave;nh CNTT-CLC sử dụng file &quot;ThesisTemplate.docx&quot;</p>\r\n\r\n<p><a href=\"https://drive.google.com/drive/folders/1Mo74t8lsJM8nDBodNJIwxa33SsuD_DgU?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1Mo74t8lsJM8nDBodNJIwxa33SsuD_DgU?usp=sharing</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c em sinh vi&ecirc;n nếu kh&ocirc;ng thấy email GVHD của m&igrave;nh trong email n&agrave;y th&igrave; reply b&aacute;o gấp cho c&ocirc; Khang biết nhe. C&aacute;m ơn c&aacute;c em.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tr&acirc;n trọng,</p>\r\n</div>\r\n</div>\r\n</div>','2024-03-24 08:31:11','2024-03-25 02:08:22'),(2,'Ngày Hội Tuyển Dụng','<div>K&iacute;nh ch&agrave;o qu&yacute; Thầy C&ocirc; v&agrave; c&aacute;c em Sinh Vi&ecirc;n,\r\n<p>&nbsp;</p>\r\n\r\n<p>Kế hoạch triển khai thực hiện LVTN của ng&agrave;nh CNTT v&agrave; CNTT-CLC thuộc Khoa CNTT như sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong><em>Ng&agrave;y 21/04</em>:</strong>&nbsp;Deadline GVHD gửi file danh s&aacute;ch SV được bảo vệ LVTN về Khoa CNTT.&nbsp; Thầy C&ocirc; vui l&ograve;ng sử dụng template đ&iacute;nh k&egrave;m trong email v&agrave; reply lại email n&agrave;y gi&uacute;p (kh&ocirc;ng tạo email mới). C&aacute;m ơn Thầy C&ocirc;.</p>\r\n\r\n<p>-&nbsp;<em><strong>Tuần&nbsp;20-21</strong></em>: SV bảo vệ LVTN. Ch&uacute; &yacute;: SV nộp quyển b&aacute;o c&aacute;o LVTN v&agrave; chạy demo với th&agrave;nh vi&ecirc;n Hội đồng trước khi bảo vệ ch&iacute;nh thức theo hướng dẫn gửi k&egrave;m khi c&oacute; Quyết định th&agrave;nh lập Hội đồng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khoa CNTT đ&iacute;nh k&egrave;m link chứa template viết b&aacute;o c&aacute;o LVTN:</p>\r\n\r\n<p>- SV ng&agrave;nh CNTT sử dụng file &quot;MauLuanVan-NienLuan.docx&quot;</p>\r\n\r\n<p>- SV ng&agrave;nh CNTT-CLC sử dụng file &quot;ThesisTemplate.docx&quot;</p>\r\n\r\n<p><a href=\"https://drive.google.com/drive/folders/1Mo74t8lsJM8nDBodNJIwxa33SsuD_DgU?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1Mo74t8lsJM8nDBodNJIwxa33SsuD_DgU?usp=sharing</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c em sinh vi&ecirc;n nếu kh&ocirc;ng thấy email GVHD của m&igrave;nh trong email n&agrave;y th&igrave; reply b&aacute;o gấp cho c&ocirc; Khang biết nhe. C&aacute;m ơn c&aacute;c em.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tr&acirc;n trọng,</p>\r\n</div>','2024-03-24 08:31:11','2024-03-25 02:08:05'),(3,'Ngày ấy sẽ đến','<p>K&iacute;nh ch&agrave;o qu&yacute; Thầy C&ocirc; v&agrave; c&aacute;c em Sinh Vi&ecirc;n,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kế hoạch triển khai thực hiện LVTN của ng&agrave;nh CNTT v&agrave; CNTT-CLC thuộc Khoa CNTT như sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong><em>Ng&agrave;y 21/04</em>:</strong>&nbsp;Deadline GVHD gửi file danh s&aacute;ch SV được bảo vệ LVTN về Khoa CNTT.&nbsp; Thầy C&ocirc; vui l&ograve;ng sử dụng template đ&iacute;nh k&egrave;m trong email v&agrave; reply lại email n&agrave;y gi&uacute;p (kh&ocirc;ng tạo email mới). C&aacute;m ơn Thầy C&ocirc;.</p>\r\n\r\n<p>-&nbsp;<em><strong>Tuần&nbsp;20-21</strong></em>: SV bảo vệ LVTN. Ch&uacute; &yacute;: SV nộp quyển b&aacute;o c&aacute;o LVTN v&agrave; chạy demo với th&agrave;nh vi&ecirc;n Hội đồng trước khi bảo vệ ch&iacute;nh thức theo hướng dẫn gửi k&egrave;m khi c&oacute; Quyết định th&agrave;nh lập Hội đồng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khoa CNTT đ&iacute;nh k&egrave;m link chứa template viết b&aacute;o c&aacute;o LVTN:</p>\r\n\r\n<p>- SV ng&agrave;nh CNTT sử dụng file &quot;MauLuanVan-NienLuan.docx&quot;</p>\r\n\r\n<p>- SV ng&agrave;nh CNTT-CLC sử dụng file &quot;ThesisTemplate.docx&quot;</p>\r\n\r\n<p><a href=\"https://drive.google.com/drive/folders/1Mo74t8lsJM8nDBodNJIwxa33SsuD_DgU?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1Mo74t8lsJM8nDBodNJIwxa33SsuD_DgU?usp=sharing</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c em sinh vi&ecirc;n nếu kh&ocirc;ng thấy email GVHD của m&igrave;nh trong email n&agrave;y th&igrave; reply b&aacute;o gấp cho c&ocirc; Khang biết nhe. C&aacute;m ơn c&aacute;c em.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tr&acirc;n trọng,</p>','2024-03-24 08:50:06','2024-03-25 02:07:48'),(14,'Fwd: Thông tin tuyển dụng của công ty Ryomo','<div>\r\n<p>K&iacute;nh ch&agrave;o qu&yacute; Thầy C&ocirc; v&agrave; c&aacute;c em Sinh Vi&ecirc;n,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kế hoạch triển khai thực hiện LVTN của ng&agrave;nh CNTT v&agrave; CNTT-CLC thuộc Khoa CNTT như sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong><em>Ng&agrave;y 21/04</em>:</strong>&nbsp;Deadline GVHD gửi file danh s&aacute;ch SV được bảo vệ LVTN về Khoa CNTT.&nbsp; Thầy C&ocirc; vui l&ograve;ng sử dụng template đ&iacute;nh k&egrave;m trong email v&agrave; reply lại email n&agrave;y gi&uacute;p (kh&ocirc;ng tạo email mới). C&aacute;m ơn Thầy C&ocirc;.</p>\r\n\r\n<p>-&nbsp;<em><strong>Tuần&nbsp;20-21</strong></em>: SV bảo vệ LVTN. Ch&uacute; &yacute;: SV nộp quyển b&aacute;o c&aacute;o LVTN v&agrave; chạy demo với th&agrave;nh vi&ecirc;n Hội đồng trước khi bảo vệ ch&iacute;nh thức theo hướng dẫn gửi k&egrave;m khi c&oacute; Quyết định th&agrave;nh lập Hội đồng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khoa CNTT đ&iacute;nh k&egrave;m link chứa template viết b&aacute;o c&aacute;o LVTN:</p>\r\n\r\n<p>- SV ng&agrave;nh CNTT sử dụng file &quot;MauLuanVan-NienLuan.docx&quot;</p>\r\n\r\n<p>- SV ng&agrave;nh CNTT-CLC sử dụng file &quot;ThesisTemplate.docx&quot;</p>\r\n\r\n<p><a href=\"https://drive.google.com/drive/folders/1Mo74t8lsJM8nDBodNJIwxa33SsuD_DgU?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1Mo74t8lsJM8nDBodNJIwxa33SsuD_DgU?usp=sharing</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c em sinh vi&ecirc;n nếu kh&ocirc;ng thấy email GVHD của m&igrave;nh trong email n&agrave;y th&igrave; reply b&aacute;o gấp cho c&ocirc; Khang biết nhe. C&aacute;m ơn c&aacute;c em.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tr&acirc;n trọng,</p>\r\n</div>','2024-03-24 10:17:09','2024-03-25 02:07:02'),(18,'[Khoa CNTT] LVTN ngành CNTT và CNTT-CLC, học kỳ 2 năm học 2023-2024','<div>\r\n<p>K&iacute;nh ch&agrave;o qu&yacute; Thầy C&ocirc; v&agrave; c&aacute;c em Sinh Vi&ecirc;n,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kế hoạch triển khai thực hiện LVTN của ng&agrave;nh CNTT v&agrave; CNTT-CLC thuộc Khoa CNTT như sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong><em>Ng&agrave;y 21/04</em>:</strong>&nbsp;Deadline GVHD gửi file danh s&aacute;ch SV được bảo vệ LVTN về Khoa CNTT.&nbsp; Thầy C&ocirc; vui l&ograve;ng sử dụng template đ&iacute;nh k&egrave;m trong email v&agrave; reply lại email n&agrave;y gi&uacute;p (kh&ocirc;ng tạo email mới). C&aacute;m ơn Thầy C&ocirc;.</p>\r\n\r\n<p>-&nbsp;<em><strong>Tuần&nbsp;20-21</strong></em>: SV bảo vệ LVTN. Ch&uacute; &yacute;: SV nộp quyển b&aacute;o c&aacute;o LVTN v&agrave; chạy demo với th&agrave;nh vi&ecirc;n Hội đồng trước khi bảo vệ ch&iacute;nh thức theo hướng dẫn gửi k&egrave;m khi c&oacute; Quyết định th&agrave;nh lập Hội đồng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khoa CNTT đ&iacute;nh k&egrave;m link chứa template viết b&aacute;o c&aacute;o LVTN:</p>\r\n\r\n<p>- SV ng&agrave;nh CNTT sử dụng file &quot;MauLuanVan-NienLuan.docx&quot;</p>\r\n\r\n<p>- SV ng&agrave;nh CNTT-CLC sử dụng file &quot;ThesisTemplate.docx&quot;</p>\r\n\r\n<p><a href=\"https://drive.google.com/drive/folders/1Mo74t8lsJM8nDBodNJIwxa33SsuD_DgU?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1Mo74t8lsJM8nDBodNJIwxa33SsuD_DgU?usp=sharing</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c em sinh vi&ecirc;n nếu kh&ocirc;ng thấy email GVHD của m&igrave;nh trong email n&agrave;y th&igrave; reply b&aacute;o gấp cho c&ocirc; Khang biết nhe. C&aacute;m ơn c&aacute;c em.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tr&acirc;n trọng,</p>\r\n</div>','2024-03-24 10:33:04','2024-03-25 02:02:02'),(19,'abv','<p>abc</p>','2024-03-26 21:14:18','2024-03-26 21:14:18');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hrs`
--

DROP TABLE IF EXISTS `hrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hrs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user.png',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `num_faul` int(11) NOT NULL DEFAULT 0,
  `token` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hrs`
--

LOCK TABLES `hrs` WRITE;
/*!40000 ALTER TABLE `hrs` DISABLE KEYS */;
INSERT INTO `hrs` VALUES (1,'Chế Thanh Kiên','user.png','kienb1910088@student.ctu.edu.vn','chethanhkien',NULL,NULL,1,1,'KNVUPmXWX6','2024-03-22'),(3,'Phus','user.png','emb1910059@student.ctu.edu.vn','chethanhkien214',NULL,NULL,1,0,'emKOvcYSwp','2024-03-22'),(4,'CÔNG TY CỔ PHẦN WECARE GROUP','user.png','chethanhkien@gmail.com','chethanhkien214',NULL,NULL,1,0,'DAV2aEG7KN','2024-03-22'),(5,'Công ty FPT','user.png','FPT@gmail.com','chethanhkien',NULL,NULL,1,0,'kIzCenklYB','2024-03-22'),(9,'Kiên','user.png','dangthimanh1972@gmail.com','chethanhkien214',NULL,NULL,1,0,'HstXSRXLoz','2024-04-24'),(10,'Chế Thanh Kiên','user.png','thanhkien2021008@gmail.com','chethanhkien214',NULL,NULL,1,1,'6bNqI1HcvU','2024-05-13');
/*!40000 ALTER TABLE `hrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images_companies`
--

DROP TABLE IF EXISTS `images_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images_companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_companies_company_id_foreign` (`company_id`),
  CONSTRAINT `images_companies_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images_companies`
--

LOCK TABLES `images_companies` WRITE;
/*!40000 ALTER TABLE `images_companies` DISABLE KEYS */;
INSERT INTO `images_companies` VALUES (1,1,'company/images_company/INPWv2Ds89E6hGt5Rq1cRN2RvP9GW28XOq3ecgvo.jpg'),(2,1,'company/images_company/WcoBAOLMptOgGcYsxHlFKS2ehWh503hUYyKGJQy8.jpg'),(3,1,'company/images_company/JYwmcRemS8AfhzOgCj9LEITcOPTVCItapRNwL7A7.jpg'),(7,3,'company/images_company/lWgbjadkSsVtZdwo99gWC5oLvqKpBZKNPGbBfeeN.jpg'),(8,3,'company/images_company/kmbMfIpJyRRa5essnGkUoYgoB0dpHzVChZecUiTt.jpg'),(9,3,'company/images_company/OP2Tj7nCDmB8Css6CfOvVqSxwSXtPMC4ufgabTCn.jpg'),(10,4,'company/images_company/o0ILMCDKkwDhCBLNjEK9js2QaD1PXjJpknCACaxv.jpg'),(11,4,'company/images_company/LX5D8qsBWRsS8iqlfeqkh0MerQVafok5C5vyBKlX.png'),(12,4,'company/images_company/lDQEYLgZJcB4cPjnlNLiYqD69ZgE17UoFLQAw9yc.jpg'),(13,5,'company/images_company/SrwSjbIRwsrYI6PPnQPHboN4FUfz4iCwuBlygIUQ.jpg'),(14,5,'company/images_company/M1X65Nro4UZNu7OkFNSvdhq3GHfjxwIxO9ntj7be.jpg'),(15,5,'company/images_company/jOhDBg4S7CiuczpQfBkGRLXlD67VodtUFLvoFiLT.jpg'),(40,9,'company/images_company/VrFn8MABRzWUB3hTp02RlOnY01dMqaVQdkrB3fwa.png'),(41,9,'company/images_company/Nod7ZG4cNbfAN2fURz8uarkI2NQdnFa6K4qzqckd.jpg'),(42,9,'company/images_company/C8POYvioHzFoxPxcKgVQkd1klhXoDylfwCrYL6DL.jpg');
/*!40000 ALTER TABLE `images_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_account`
--

DROP TABLE IF EXISTS `level_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_account` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hr_id` bigint(20) unsigned NOT NULL,
  `service_id` bigint(20) unsigned NOT NULL,
  `used_views` smallint(6) NOT NULL,
  `used_search` smallint(6) NOT NULL,
  `buy_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expire_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `level_account_hr_id_foreign` (`hr_id`),
  KEY `level_account_service_id_foreign` (`service_id`),
  CONSTRAINT `level_account_hr_id_foreign` FOREIGN KEY (`hr_id`) REFERENCES `hrs` (`id`),
  CONSTRAINT `level_account_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_account`
--

LOCK TABLES `level_account` WRITE;
/*!40000 ALTER TABLE `level_account` DISABLE KEYS */;
INSERT INTO `level_account` VALUES (24,10,2,7,6,'2024-05-13','2024-06-12');
/*!40000 ALTER TABLE `level_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `apply_cvs_id` bigint(20) unsigned DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_apply_cvs_id_foreign` (`apply_cvs_id`),
  CONSTRAINT `messages_apply_cvs_id_foreign` FOREIGN KEY (`apply_cvs_id`) REFERENCES `apply_cvs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (20,28,'Chúc mừng bạn đã được VNPT Technology - Công ty Cổ phần Công nghệ Công nghiệp Bưu chính viễn thông chấp nhận CV','applicant',1,'2023-03-25 01:54:07','2023-03-25 01:54:07'),(28,19,'Chúc mừng bạn đã được Công ty cổ phần chứng khoán Everest chấp nhận CV','applicant',1,'2023-10-17 01:08:24','2023-10-17 01:08:24'),(61,70,'Bạn có 1 cv mới từ che thanh kien','hr',1,'2024-05-13 02:03:59','2024-05-13 02:03:59'),(62,70,'CV bạn đã được chấp nhận TMA Solutions Bình Định sẽ sớm liên hệ đến bạn','applicant',1,'2024-05-13 02:04:26','2024-05-13 02:04:26');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'watch_cv',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) unsigned DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_salary` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_salary` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_money` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_recruitment` int(11) NOT NULL,
  `expired_post` date NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `benefit` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_expired` int(11) NOT NULL DEFAULT 1,
  `num_report` smallint(6) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_company_id_foreign` (`company_id`),
  CONSTRAINT `posts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (7,'(Hồ Chí Minh)-intern,fresher-PHP,ReactJS,C/C++ - Công ty cổ phần chứng khoán Everest','ho-chi-minh-internfresher-phpreactjscc-cong-ty-co-phan-chung-khoan-everest','[\"PHP\",\"ReactJS\",\"C\\/C++\"]',1,'Hồ Chí Minh','Bình Tân','[\"intern-fresher\",\"fresher\"]','full-time','12 triệu','15 triệu','VND',10,'2023-02-28','<p>● Perform a mix of new software development, enhancements and defect resolution as required<br />● Build and Implement project applications according to design specifications ● Research technical issues and provide recommendations to enhance company websites<br />● Work with external partners in the design and development of software solutions<br />● Work as a team with other development staff in Magento and JavaScript related technologies<br />● Identify and troubleshoot issues as needed<br />● Support research on emerging Magento frontend standards, and design patterns in support of development efforts<br />● Cultivate and disseminate knowledge of Magento frontend development best practices<br />● Liaise with network administrators, system analysts, programmer, and business stakeholders to resolve any defects<br />● Administer diagnostics to improve software stability and eliminate performance bottlenecks or security vulnerabilities</p>','<p>● Bachelor&rsquo;s in computer science or equivalent experience preferred<br />● 3+ years of Magento Ecommerce development experience<br />● 3+ years&rsquo; developing PHP, JS applications in React, Angular or Vue.js<br />● Solid understanding of OOP and working knowledge of MySQL<br />● Advanced understanding of standard front-end development technologies: HTML5,<br />● CSS2.1/3, JavaScript, JQuery, JSON, AJAX, XML, SOAP, WSDL<br />● Demonstrated professional development experience with Web Services frameworks and RESTful API standards<br />● Excellent grasp of database design and normalization rules<br />● Direct experience working in Agile software development methodology<br />● Experience extending or customizing existing products/frameworks<br />● Strong debugging skills with the ability to reach out and work with internal and external stakeholders to solve complex problems<br />● Problem solving and time management skills<br />● Ability to work in both an individual and team-based environment<br />● Magento Certifications preferred</p>','<p>● Flexible working time;<br />● Attractive salary (up to $2100) depending on work performance<br />● Attractive annual bonuses<br />● On job training given by our IT experts<br />● Dynamic and international working environment<br />● Regular professional seminar on the latest technologies.<br />● Opportunity to travel abroad (based in Singapore)<br />● Improve English skills</p>','2023-02-24 10:29:03',0,1,'2024-05-09 11:21:02'),(15,'(Đà Nẵng)-leader-PHP,ReactJS - Công ty cổ phần chứng khoán Everest','da-nang-leader-phpreactjs-cong-ty-co-phan-chung-khoan-everest','[\"PHP\",\"ReactJS\"]',1,'Đà Nẵng','Hải Châu','[\"leader\"]','full-time','1000','3,000','$',2,'2023-03-31','<p>&aacute;dsadsa</p>','<p>fsafasf</p>','<p>fasfasfas</p>','2023-03-04 05:34:35',1,0,'2023-03-04 05:34:35'),(16,'(Hồ Chí Minh) Kỹ Sư Google Earth Engine (Gee)','ho-chi-minh-ky-su-google-earth-engine-gee','[\"PHP\",\"ReactJS\",\"JaVa\",\"C\\/C++\"]',3,'Hồ Chí Minh','Quận 9','[\"intern-fresher\",\"fresher\"]','full-time','7 triệu','15 triệu','VND',5,'2023-03-31','<ul><li>Ph&aacute;t triển v&agrave; triển khai c&aacute;c m&ocirc; h&igrave;nh ph&acirc;n t&iacute;ch dữ liệu địa l&yacute; sử dụng Google Earth Engine (GEE) để giải quyết c&aacute;c vấn đề li&ecirc;n quan đến m&ocirc;i trường, đất đai v&agrave; đ&ocirc; thị.</li><li>Thực hiện c&aacute;c ph&acirc;n t&iacute;ch địa l&yacute; v&agrave; bản đồ h&oacute;a sử dụng GEE để hỗ trợ c&aacute;c dự &aacute;n nghi&ecirc;n cứu, quản l&yacute; t&agrave;i nguy&ecirc;n v&agrave; gi&aacute;m s&aacute;t đ&ocirc; thị.</li><li>Ph&aacute;t triển v&agrave; tối ưu h&oacute;a c&aacute;c quy tr&igrave;nh xử l&yacute; dữ liệu địa l&yacute; v&agrave; ứng dụng c&aacute;c kỹ thuật học m&aacute;y để cải thiện hiệu quả của c&aacute;c m&ocirc; h&igrave;nh</li></ul>','<p>Kiến thức</p><ul><li>Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh Khoa học m&aacute;y t&iacute;nh, Địa l&yacute;, Khoa học M&ocirc;i trường hoặc c&aacute;c chuy&ecirc;n ng&agrave;nh li&ecirc;n quan.</li><li>Hiểu biết về c&aacute;c kỹ thuật xử l&yacute; dữ liệu địa l&yacute; v&agrave; c&aacute;c phương ph&aacute;p ph&acirc;n t&iacute;ch dữ liệu địa l&yacute;.</li><li>C&oacute; kiến thức về c&aacute;c kỹ thuật học m&aacute;y v&agrave; c&oacute; kinh nghiệm trong việc &aacute;p dụng ch&uacute;ng v&agrave;o xử l&yacute; dữ liệu địa l&yacute;.</li></ul><p>Kinh nghiệm</p><ul><li>&Iacute;t nhất 1 năm kinh nghiệm l&agrave;m việc với Google Earth Engine</li><li>Kinh nghiệm trong việc lập tr&igrave;nh bằng JavaScript hoặc Python hoặc R.</li></ul><p>Th&aacute;i độ</p><ul><li>C&oacute; khả năng l&agrave;m việc độc lập v&agrave; l&agrave;m việc nh&oacute;m tốt</li><li>Nghi&ecirc;m t&uacute;c, c&oacute; tr&aacute;ch nhiệm với bản th&acirc;n, c&ocirc;ng việc, ham học hỏi</li></ul>','<ul><li>Mức lương: Thỏa thuận</li><li>Được trang bị đầy đủ thiết bị l&agrave;m việc</li><li>C&ocirc;ng ty đ&oacute;ng 100% BHYT, BHXH, BHTN</li><li>Du lịch, nghỉ m&aacute;t h&agrave;ng năm</li><li>Hưởng ph&uacute;c lợi c&aacute;c ng&agrave;y lễ: 2/9, 30/04, 1/5, 1/6,...thưởng lương th&aacute;ng 13 v&agrave; thưởng doanh thu năm</li><li>Hưởng ph&uacute;c lợi hiếu, hỉ, ốm đau, thai sản, nghỉ ph&eacute;p,... theo quy định</li><li>X&eacute;t tăng lương 1-2 lần/năm.</li><li>Tuần l&agrave;m việc 41,5h (8h00 - 12h00 từ T2 - s&aacute;ng T7 v&agrave; 13h30 - 17h00 từ T2- T6)</li></ul>','2023-03-16 00:49:19',1,0,'2023-03-16 00:49:19'),(17,'(Đà Nẵng)-Giảng Viên Công Nghệ Thông Tin','da-nang-giang-vien-cong-nghe-thong-tin','[\"JaVa\",\"ASP.NET\",\"Laravel\"]',4,'Đà Nẵng','Hải Châu','[\"Gi\\u1ea3ng Vi\\u00ean\"]','full-time','500','1000','$',3,'2023-03-31','<ul><li>Tham gia giảng dạy c&aacute;c m&ocirc;n học thuộc chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin/ứng dụng phần mềm theo chương tr&igrave;nh của FPT Polytechnic dưới sự ph&acirc;n c&ocirc;ng của Academic Head</li><li>Thực hiện việc quản l&yacute; sinh vi&ecirc;n, quản l&yacute; lớp học, coi thi, chấm thi, sử dụng t&agrave;i nguy&ecirc;n tr&ecirc;n LMS theo quy định của FPT Polytechnic</li><li>Tham gia c&aacute;c hoạt động chuy&ecirc;n m&ocirc;n: Họp chuy&ecirc;n m&ocirc;n, Workshop, hướng dẫn sinh vi&ecirc;n l&agrave;m đề t&agrave;i NCKH,&hellip;</li></ul>','<ul><li>Tốt nghiệp Đại học trở l&ecirc;n khối ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin c&aacute;c trường đại học sư phạm kỹ thuật, ĐH B&aacute;ch Khoa, HV Bưu ch&iacute;nh - viễn th&ocirc;ng, ĐH C&ocirc;ng nghệ, ĐH FPT, ĐH C&ocirc;ng nghiệp, ĐH Giao th&ocirc;ng vận tải...</li><li>C&oacute; kỹ năng sư phạm, kiến thức chuy&ecirc;n m&ocirc;n tốt</li><li>C&oacute; thể giảng dạy/c&oacute; kinh nghiệm của một hoặc một v&agrave;i m&ocirc;n sau: Lập tr&igrave;nh c&aacute;c ng&ocirc;n ngữ C, Java, C Sharp, HTML/CSS/Javascript, PHP, Android., Python</li><li>C&aacute;c nền tảng NodeJS, ReactJS, Angular, Laravel, Unity 2D, Spring MVC, Spring Boot, .NetCore, ReactJS, Angular ...</li><li>Hiểu biết về cơ sở dữ liệu</li><li>Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm Quản trị dự &aacute;n thực tế</li></ul>','<ul><li>Mức lương trung b&igrave;nh: 180.000 VNĐ/giờ</li><li>M&ocirc;i trường l&agrave;m việc năng động, chuy&ecirc;n nghiệp;</li><li>C&oacute; mức thu nhập hấp dẫn (trả theo năng lực). Cam kết lương tối thiểu 10tr trở l&ecirc;n (dự kiến c&oacute; thể tăng l&ecirc;n 12 - 13tr tối thiểu);</li><li>Được đ&oacute;ng BHXH, BHYT, BHTN&hellip; theo quy định của Nh&agrave; nước;</li><li>Cơ hội được nhận học bổng 10-30% khi học MBA tại Đại học FPT;</li><li>Cơ hội được nhận hỗ trợ từ FPT Edu l&ecirc;n đến 200 triệu đồng khi tham gia học Tiến sĩ;</li><li>Thưởng b&agrave;i b&aacute;o được c&ocirc;ng bố quốc tế: mức thưởng l&ecirc;n đến 100 triệu đồng/b&agrave;i;</li><li>Chi ph&iacute; hỗ trợ đi lại khi tham gia hội nghị, hội thảo trong nước v&agrave; quốc tế c&oacute; b&agrave;i tham luận được nhận hỗ trợ l&ecirc;n đến 30 triệu đồng/người/năm;</li><li>C&oacute; cơ hội tham gia c&aacute;c hoạt động đ&agrave;o tạo n&acirc;ng cao tr&igrave;nh độ;</li><li>Hưởng chế độ chăm s&oacute;c sức khỏe đặc biệt d&agrave;nh cho bản th&acirc;n v&agrave; gia đ&igrave;nh (FPT care);</li><li>C&aacute;c quyền lợi kh&aacute;c: du lịch nghỉ m&aacute;t h&agrave;ng năm, tham gia c&aacute;c hoạt động vui chơi giải tr&iacute;&hellip;</li><li>Người nh&agrave; được hưởng chế độ ưu đ&atilde;i học ph&iacute; khi học tập tại Tổ chức Gi&aacute;o dục FPT</li></ul>','2023-03-17 01:46:57',1,0,'2023-03-17 01:46:57'),(18,'Lập Trình Viên (.Net) (Thu Nhập Từ 1000 -2000$/Tháng) Tại Hà Nội','lap-trinh-vien-net-thu-nhap-tu-1000-2000thang-tai-ha-noi','[\"ReactJS\",\"ASP.NET\"]',5,'Hà Nội','Nam Từ Liêm','[\"junior\"]','full-time','1000','2000','$',2,'2023-03-31','<p>- Tham gia c&aacute;c dự &aacute;n phần mềm của C&ocirc;ng ty</p><p>- X&acirc;y dựng kế hoạch v&agrave; quản l&yacute; tiến độ lập tr&igrave;nh theo kế hoạch</p><p>- Thiết kế module chi tiết</p><p>- Tham gia v&agrave;o c&aacute;c dự &aacute;n ph&aacute;t triển sản phẩm của C&ocirc;ng ty tr&ecirc;n nền tảng ASP.NET hoặc .NET core</p><p>- Lập tr&igrave;nh v&agrave; t&iacute;ch hợp (Front-end v&agrave; back-end)</p><p>- Xem x&eacute;t code kiểm thử v&agrave; thử nghiệm</p><p>- Viết t&agrave;i liệu m&ocirc; tả chức năng phần mềm</p><p>- Phối hợp với c&aacute;c bộ phận để ph&aacute;t hiện v&agrave; xử l&yacute; lỗi hiệu quả</p><p>- Bảo tr&igrave; v&agrave; hỗ trợ c&aacute;c vấn đề li&ecirc;n quan đến lập tr&igrave;nh</p><p>- Thực hiện c&aacute;c c&ocirc;ng việc kh&aacute;c theo sự ph&acirc;n c&ocirc;ng của l&atilde;nh đạo</p><p>- Thời gian l&agrave;m việc: 8h-17h00 (nghỉ chủ nhật, chiều thứ 7 v&agrave; c&aacute;c ng&agrave;y lễ)</p>','<p>- Tốt nghiệp Đại học, Cao đẳng, trung t&acirc;m đ&agrave;o tạo chuy&ecirc;n ng&agrave;nh CNTT.</p><p>- C&oacute; hiểu biết về ASP.NET, OOP, RESFULL, Design Patterns.</p><p>- C&oacute; hiểu biết về lập tr&igrave;nh Backend &ndash; Frontend, Javascript, HTML, CSS, HTTP.</p><p>- Nắm vững kiến thức cơ bản về lập tr&igrave;nh SQL v&agrave; hiểu biết về SQL Server hoặc Oracle Database.</p><p>- C&oacute; kinh nghiệm trong ph&aacute;t triển ứng dụng Web.</p><p>- C&oacute; tư duy logic tốt, c&oacute; tinh thần tr&aacute;ch nhiệm, ham học hỏi v&agrave; nhiệt t&igrave;nh với c&ocirc;ng việc.</p><p>- C&oacute; khả năng đọc hiểu t&agrave;i liệu tiếng Anh</p><p>- C&oacute; kỹ năng l&agrave;m việc độc lập v&agrave; phối hợp theo nh&oacute;m.</p><p>- Hiểu biết về lập tr&igrave;nh mobile l&agrave; một lợi thế.</p><p>- C&ocirc;ng ty nhận đ&agrave;o tạo sinh vi&ecirc;n mới ra trường c&oacute; kiến thức v&agrave; ham muốn trở th&agrave;nh lập tr&igrave;nh vi&ecirc;n.</p>','<p>- Mức lương từ 08 triệu đến 25 triệu t&ugrave;y kinh nghiệm v&agrave; năng lực; Thưởng c&aacute;c ng&agrave;y lễ tết; Lương th&aacute;ng 13, thưởng tết &acirc;m lịch...</p><p>- Được l&agrave;m việc v&agrave; ph&aacute;t triển trong m&ocirc;i trường chuy&ecirc;n nghiệp, năng động.</p><p>- Được đ&agrave;o tạo v&agrave; tham gia c&aacute;c dự &aacute;n thực tế, cơ hội để ph&aacute;t triển nghề nghiệp với C&ocirc;ng ty.</p><p>- Đồng nghiệp: Vui vẻ, nhiệt t&igrave;nh, th&acirc;n thiện.</p><p>- Tham gia BHXH, BHYT, BHTN ngay khi k&yacute; hợp đồng ch&iacute;nh thức.</p><p>- Thời gian thử việc tối đa 02 th&aacute;ng (t&ugrave;y năng lực).</p><p>- Du lịch nghỉ m&aacute;t, team Building h&agrave;ng năm.</p><p>- Tăng lương khi l&agrave;m việc hiệu quả.</p>','2023-03-18 01:44:07',1,0,'2023-03-18 01:44:07'),(19,'(Hồ Chí Minh)-senior,leader-PHP,ReactJS,JaVa - CÔNG TY CỔ PHẦN WECARE GROUP','ho-chi-minh-seniorleader-phpreactjsjava-cong-ty-co-phan-wecare-group','[\"PHP\",\"ReactJS\",\"JaVa\"]',4,'Hồ Chí Minh','Bình Tân','[\"senior\",\"leader\"]','full-time && part-time','1000','2000','$',5,'2023-03-31','<ul><li>Tham gia ph&aacute;t triển c&aacute;c ứng dụng, n&acirc;ng cấp v&agrave; triển khai c&aacute;c sản phẩm phần mềm theo xu hướng c&ocirc;ng nghệ v&agrave; theo y&ecirc;u cầu kh&aacute;ch h&agrave;ng tr&ecirc;n c&aacute;c nền tảng của ng&ocirc;n ngữ Java</li><li>T&igrave;m hiểu y&ecirc;u cầu, ph&acirc;n t&iacute;ch, thiết kế, nghi&ecirc;n cứu c&ocirc;ng nghệ c&ocirc;ng nghệ mới v&agrave; review source code,&nbsp;<strong>đưa ra giải ph&aacute;p &aacute;p dụng v&agrave;o sản phẩm dịch vụ của c&ocirc;ng ty</strong></li><li>Hỗ trợ c&aacute;c th&agrave;nh vi&ecirc;n trong nh&oacute;m với c&aacute;c chức năng phức tạp, tham gia nhận x&eacute;t, đ&aacute;nh gi&aacute; source code của c&aacute;c th&agrave;nh vi&ecirc;n trong nh&oacute;m.</li></ul>','<ul><li>C&oacute; &iacute;t nhất 5 năm kinh nghiệm với Java Spring, Struts framework. Ưu ti&ecirc;n biết th&ecirc;m ReactJS hoặc VueJS.</li><li>Nắm vững kiến tr&uacute;c code tốt: OOP, Design Pattern, Design Principle, nắm vững Java Core</li><li>C&oacute; kinh nghiệm v&agrave; năng lực để l&ecirc;n được giải ph&aacute;p về kiến tr&uacute;c hệ thống v&agrave; kiến tr&uacute;c code (v&iacute; dụ về Microservice Architecture, DDD, Clean Architecture,...). Khả năng t&iacute;ch hợp được với c&aacute;c middleware về cache (Redis, Memcached), queue v&agrave; streaming message (RabbitMQ, Kafka)</li><li>Ham t&igrave;m hiểu, c&oacute; thể đọc được t&agrave;i liệu kỹ thuật bằng tiếng Anh</li><li>Ch&iacute;nh trực, nghi&ecirc;m t&uacute;c trong c&ocirc;ng việc</li></ul>','<p><strong>Chế độ:</strong></p><ul><li>Lương thỏa thuận theo năng lực , upto 50tr</li><li>Nghỉ thứ 7, chủ nhật + ng&agrave;y lễ, tết + 12 ng&agrave;y ph&eacute;p/năm, đ&oacute;ng bảo hiểm đầy đủ&nbsp;</li><li>X&eacute;t tăng lương 2 lần/năm, c&oacute; năng lực sẽ được x&eacute;t ngay tại thời điểm y&ecirc;u cầu</li><li>Lương th&aacute;ng 13, thưởng dự &aacute;n , thưởng c&aacute;c dịp lễ, tết; thưởng giới thiệu nh&acirc;n sự</li></ul><p><strong>Văn h&oacute;a v&agrave; M&ocirc;i trường l&agrave;m việc:</strong></p><ul><li>M&ocirc;i trường trẻ trung, năng động, thoải m&aacute;i, tạo điều kiện để c&aacute; nh&acirc;n ph&aacute;t triển năng lực nhất c&oacute; thể</li><li>Tham gia c&aacute;c hoạt động thể thao n&acirc;ng cao sức khỏe, teambuilding, d&atilde; ngoại, nghỉ m&aacute;t 4 lần/năm</li><li>Tham gia team building, d&atilde; ngoại, nghỉ m&aacute;t 4 lần/năm</li><li>Free tr&agrave;, c&agrave; ph&ecirc;, đồ ăn vặt, chỗ gửi xe</li></ul><p><strong>Đ&agrave;o tạo v&agrave; cơ hội thăng tiến:</strong></p><ul><li>C&ocirc;ng ty tổ chức buổi chia sẻ to&agrave;n c&ocirc;ng ty 1 lần/th&aacute;ng nhằm n&acirc;ng cao kỹ năng mềm v&agrave; hiểu biết x&atilde; hội</li><li>Cơ hội ph&aacute;t triển l&ecirc;n Solution Architect, CTO</li><li>Được học hỏi nhiều kinh nghiệm về Kỹ thuật, quy tr&igrave;nh, kỹ năng mềm từ người đi trước</li><li>L&agrave;m việc trực tiếp với CEO, CTO, học hỏi tư duy về quản l&yacute; v&agrave; kỹ năng chuy&ecirc;n m&ocirc;nĐược định hướng ph&aacute;t triển sự nghiệp theo Career Path của c&ocirc;ng ty.</li></ul>','2023-03-20 05:32:06',1,0,'2023-03-20 05:32:06'),(26,'(Hồ Chí Minh)-intern,fresher,junior-PHP,ReactJS - TMA Solutions Bình Định','ho-chi-minh-internfresherjunior-phpreactjs-tma-solutions-binh-dinh','[\"PHP\",\"ReactJS\"]',9,'Hồ Chí Minh','Bình Tân','[\"intern\",\"fresher\",\"junior\"]','full-time && part-time','500','1000','$',5,'2024-05-31','<div>Tham gia ph&aacute;t triển c&aacute;c ứng dụng, n&acirc;ng cấp v&agrave; triển khai c&aacute;c sản phẩm phần mềm theo xu hướng c&ocirc;ng nghệ v&agrave; theo y&ecirc;u cầu kh&aacute;ch h&agrave;ng tr&ecirc;n c&aacute;c nền tảng của ng&ocirc;n ngữ Java<br />\r\nT&igrave;m hiểu y&ecirc;u cầu, ph&acirc;n t&iacute;ch, thiết kế, nghi&ecirc;n cứu c&ocirc;ng nghệ c&ocirc;ng nghệ mới v&agrave; review source code, đưa ra giải ph&aacute;p &aacute;p dụng v&agrave;o sản phẩm dịch vụ của c&ocirc;ng ty<br />\r\nHỗ trợ c&aacute;c th&agrave;nh vi&ecirc;n trong nh&oacute;m với c&aacute;c chức năng phức tạp, tham gia nhận x&eacute;t, đ&aacute;nh gi&aacute; source code của c&aacute;c th&agrave;nh vi&ecirc;n trong nh&oacute;m.</div>','<p>C&oacute; &iacute;t nhất 5 năm kinh nghiệm với Java Spring, Struts framework. Ưu ti&ecirc;n biết th&ecirc;m ReactJS hoặc VueJS.<br />\r\nNắm vững kiến tr&uacute;c code tốt: OOP, Design Pattern, Design Principle, nắm vững Java Core<br />\r\nC&oacute; kinh nghiệm v&agrave; năng lực để l&ecirc;n được giải ph&aacute;p về kiến tr&uacute;c hệ thống v&agrave; kiến tr&uacute;c code (v&iacute; dụ về Microservice Architecture, DDD, Clean Architecture,...). Khả năng t&iacute;ch hợp được với c&aacute;c middleware về cache (Redis, Memcached), queue v&agrave; streaming message (RabbitMQ, Kafka)<br />\r\nHam t&igrave;m hiểu, c&oacute; thể đọc được t&agrave;i liệu kỹ thuật bằng tiếng Anh<br />\r\nCh&iacute;nh trực, nghi&ecirc;m t&uacute;c trong c&ocirc;ng việc<br />\r\n&nbsp;</p>','<p>Chế độ:</p>\r\n\r\n<p>Lương thỏa thuận theo năng lực , upto 50tr<br />\r\nNghỉ thứ 7, chủ nhật + ng&agrave;y lễ, tết + 12 ng&agrave;y ph&eacute;p/năm, đ&oacute;ng bảo hiểm đầy đủ&nbsp;<br />\r\nX&eacute;t tăng lương 2 lần/năm, c&oacute; năng lực sẽ được x&eacute;t ngay tại thời điểm y&ecirc;u cầu<br />\r\nLương th&aacute;ng 13, thưởng dự &aacute;n , thưởng c&aacute;c dịp lễ, tết; thưởng giới thiệu nh&acirc;n sự<br />\r\nVăn h&oacute;a v&agrave; M&ocirc;i trường l&agrave;m việc:</p>\r\n\r\n<p>M&ocirc;i trường trẻ trung, năng động, thoải m&aacute;i, tạo điều kiện để c&aacute; nh&acirc;n ph&aacute;t triển năng lực nhất c&oacute; thể<br />\r\nTham gia c&aacute;c hoạt động thể thao n&acirc;ng cao sức khỏe, teambuilding, d&atilde; ngoại, nghỉ m&aacute;t 4 lần/năm<br />\r\nTham gia team building, d&atilde; ngoại, nghỉ m&aacute;t 4 lần/năm<br />\r\nFree tr&agrave;, c&agrave; ph&ecirc;, đồ ăn vặt, chỗ gửi xe<br />\r\nĐ&agrave;o tạo v&agrave; cơ hội thăng tiến:</p>\r\n\r\n<p>C&ocirc;ng ty tổ chức buổi chia sẻ to&agrave;n c&ocirc;ng ty 1 lần/th&aacute;ng nhằm n&acirc;ng cao kỹ năng mềm v&agrave; hiểu biết x&atilde; hội<br />\r\nCơ hội ph&aacute;t triển l&ecirc;n Solution Architect, CTO<br />\r\nĐược học hỏi nhiều kinh nghiệm về Kỹ thuật, quy tr&igrave;nh, kỹ năng mềm từ người đi trước<br />\r\nL&agrave;m việc trực tiếp với CEO, CTO, học hỏi tư duy về quản l&yacute; v&agrave; kỹ năng chuy&ecirc;n m&ocirc;nĐược định hướng ph&aacute;t triển sự nghiệp theo Career Path của c&ocirc;ng ty.</p>','2024-05-13 02:01:46',1,1,'2024-05-13 02:15:18');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_post`
--

DROP TABLE IF EXISTS `report_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `applicant_report_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `reason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_post_applicant_report_id_foreign` (`applicant_report_id`),
  KEY `report_post_post_id_foreign` (`post_id`),
  CONSTRAINT `report_post_applicant_report_id_foreign` FOREIGN KEY (`applicant_report_id`) REFERENCES `applicants` (`id`),
  CONSTRAINT `report_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_post`
--

LOCK TABLES `report_post` WRITE;
/*!40000 ALTER TABLE `report_post` DISABLE KEYS */;
INSERT INTO `report_post` VALUES (12,87595529,26,'Lừa đảo');
/*!40000 ALTER TABLE `report_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms_chat`
--

DROP TABLE IF EXISTS `rooms_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms_chat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hr_id` bigint(20) unsigned NOT NULL,
  `applicant_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rooms_chat_hr_id_foreign` (`hr_id`),
  KEY `rooms_chat_applicant_id_foreign` (`applicant_id`),
  CONSTRAINT `rooms_chat_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  CONSTRAINT `rooms_chat_hr_id_foreign` FOREIGN KEY (`hr_id`) REFERENCES `hrs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms_chat`
--

LOCK TABLES `rooms_chat` WRITE;
/*!40000 ALTER TABLE `rooms_chat` DISABLE KEYS */;
INSERT INTO `rooms_chat` VALUES (14,10,127009755,NULL,NULL);
/*!40000 ALTER TABLE `rooms_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `save_post`
--

DROP TABLE IF EXISTS `save_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `save_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `applicant_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `save_post_applicant_id_foreign` (`applicant_id`),
  KEY `save_post_post_id_foreign` (`post_id`),
  CONSTRAINT `save_post_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  CONSTRAINT `save_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `save_post`
--

LOCK TABLES `save_post` WRITE;
/*!40000 ALTER TABLE `save_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `save_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_every_day` smallint(6) NOT NULL,
  `search_every_day` smallint(6) NOT NULL,
  `introduce_service` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `border_post` int(11) NOT NULL DEFAULT 0,
  `hot_company` int(11) NOT NULL DEFAULT 0,
  `expired_service` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'TOP MAX TRIAL',10,10,'Quảng cáo tin đăng tuyển dụng hiệu quả với vị trí nổi bật trong Việc làm tốt nhất kết hợp cùng các dịch vụ cao cấp và được bảo hành vị trí ưu tiên.',2000000,0,1,'1 tháng'),(2,'TOP MAX TRIAL',10,10,'Quảng cáo tin đăng tuyển dụng hiệu quả với vị trí nổi bật trong Việc làm tốt nhất kết hợp cùng các dịch vụ cao cấp và được bảo hành vị trí ưu tiên.',3500000,1,1,'1 tháng'),(3,'TOP MAX TRIAL',10,10,'Quảng cáo tin đăng tuyển dụng hiệu quả với vị trí nổi bật trong Việc làm tốt nhất kết hợp cùng các dịch vụ cao cấp và được bảo hành vị trí ưu tiên.',4000000,1,1,'1 tháng');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_cv`
--

DROP TABLE IF EXISTS `sub_cv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_cv` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `applicant_id` bigint(20) unsigned DEFAULT NULL,
  `typeCV` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_year_work` smallint(6) DEFAULT NULL,
  `position_want_to_apply` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `languages_want_to_apply` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_want_to_work` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_cv_applicant_id_foreign` (`applicant_id`),
  CONSTRAINT `sub_cv_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_cv`
--

LOCK TABLES `sub_cv` WRITE;
/*!40000 ALTER TABLE `sub_cv` DISABLE KEYS */;
INSERT INTO `sub_cv` VALUES (1,87595529,'CV Profile',1,'Fresher,Junior','Java,php,Python','Quảng Ngãi,Đà Nẵng'),(2,127009755,'CV Upload',1,'junior','python','Quảng Ngãi,Đà Nẵng');
/*!40000 ALTER TABLE `sub_cv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watch_cv`
--

DROP TABLE IF EXISTS `watch_cv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watch_cv` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hr_id` bigint(20) unsigned NOT NULL,
  `applicant_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watch_cv_hr_id_foreign` (`hr_id`),
  KEY `watch_cv_applicant_id_foreign` (`applicant_id`),
  CONSTRAINT `watch_cv_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  CONSTRAINT `watch_cv_hr_id_foreign` FOREIGN KEY (`hr_id`) REFERENCES `hrs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watch_cv`
--

LOCK TABLES `watch_cv` WRITE;
/*!40000 ALTER TABLE `watch_cv` DISABLE KEYS */;
INSERT INTO `watch_cv` VALUES (5,10,87595529,'2024-05-13 02:07:39','2024-05-13 02:07:39');
/*!40000 ALTER TABLE `watch_cv` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-28 13:25:48
