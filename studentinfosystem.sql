-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 05:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentinfosystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add emp insert', 7, 'add_empinsert'),
(26, 'Can change emp insert', 7, 'change_empinsert'),
(27, 'Can delete emp insert', 7, 'delete_empinsert'),
(28, 'Can view emp insert', 7, 'view_empinsert');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$320000$hT9A1IZR9xm7X8mIILgZdL$1l7ysIO+E0Jfl1ty908p99EViqNP/XHiB9eaNmlMw5Y=', NULL, 0, '123', '', '', '', 0, 1, '2024-01-16 07:36:39.385177'),
(3, '123', NULL, 0, 'red', '', '', '', 0, 1, '2024-01-16 07:39:30.794373'),
(4, 'pbkdf2_sha256$320000$H8X1kfY8Nj8Ugs3gDHv5Yr$vgQjh1FqmqFNuM3cNQzUfmD0r33zNXdDiF82HDcP0VI=', '2024-01-17 05:46:30.214832', 0, 'red1', '', '', '', 0, 1, '2024-01-16 07:44:55.879593'),
(5, 'pbkdf2_sha256$320000$EjfFSTv93bR5sG68X5AOkJ$P5joF3poRhzNKjETnauqtpp/ViqqkVlegS4Cz+j1A08=', NULL, 0, 'red12', '', '', '', 0, 1, '2024-01-16 07:46:07.033041'),
(6, 'pbkdf2_sha256$320000$XLeJQfwfGyBDiHFnUKNmpC$cFDN3S8PJqF+GDmimyzBF4DdWaXgkuo0ugVJHw9mrYg=', NULL, 0, 'xt20201', '', '', '', 0, 1, '2024-01-16 07:47:49.104796'),
(7, 'pbkdf2_sha256$320000$rv2is2vAdDPFjv56xx9UyN$Hp2oh8B3IeDcjkOheSzg2b0TVR4YmStz/eKYTF/2siU=', NULL, 0, 'itsme', '', '', '', 0, 1, '2024-01-16 07:49:17.319701'),
(8, 'pbkdf2_sha256$320000$H8CQUNziZl1rH0wEuVc1rA$ajbKs8RvdU/w4bgTsvbzeuE00SI9252Kel/Hiq4/fVI=', NULL, 0, 'xt', '', '', '', 0, 1, '2024-01-16 07:50:05.535247'),
(9, 'pbkdf2_sha256$320000$EyN5SFSNrNGqEyCQ5dGPUb$HxxCBpRUKg9VpnaOTrUMrG4Xd5w/tc3WPfV0hYruAH8=', NULL, 0, 'zxc', '', '', '', 0, 1, '2024-01-16 07:51:01.276696'),
(10, 'pbkdf2_sha256$320000$BvdXQQBAFEzcUUYXvce1v9$GzlZpjM+/4UanZCBWdESGdPveI2RLx1hlHabzmrwwJw=', NULL, 0, 'asd', '', '', '', 0, 1, '2024-01-16 08:49:13.468028'),
(11, 'pbkdf2_sha256$320000$ksuCR75DLmipQYVuqk9B2C$GhztJo6JFVbGCCCX/zXyxlI+oEO20Qc4ZPvtau9sAOU=', '2024-01-17 06:05:09.705219', 0, 'asd1', '', '', '', 0, 1, '2024-01-16 10:26:41.126612'),
(12, 'pbkdf2_sha256$320000$2SExxZhAODL4HYq98M2dLH$f9t2rjf6GfjdU8HVhSuW90mTd0hsDOEP8ac8QfzAUwY=', NULL, 0, 'gr', '', '', '', 0, 1, '2024-01-16 10:38:12.737179'),
(13, 'pbkdf2_sha256$320000$BKMmvTp3E82PWnX6jBWg0k$Qp4JIvarqr4LjiywbLvgyRYNpZBqiNA/Sl6v0OfcRz8=', NULL, 0, 'tw', '', '', '', 0, 1, '2024-01-16 11:02:12.889667'),
(14, 'pbkdf2_sha256$320000$KAn2SxOgpTQLWAOWpWCukS$2wbsiDeQSojh2piV1DuF59L1Y3E6aewYWQJURxrI3T8=', NULL, 0, 'asd2', '', '', '', 0, 1, '2024-01-16 12:03:18.998330'),
(15, 'pbkdf2_sha256$320000$MNvP3eJwGnB0DYOub5HhRJ$CD4bSo0VxZYQI2rRHJuxiBAtB+tJKR1xweo9gsqEAaA=', NULL, 0, 'asd29', '', '', '', 0, 1, '2024-01-17 05:04:24.735530'),
(16, 'pbkdf2_sha256$320000$jHKRE18iCSKlwRML3EO6Zc$k2RaR7NwKHZ7Q3a5gXQxFfFJi4/xps/Chmcgw2zH4uE=', NULL, 0, '444', '', '', '', 0, 1, '2024-01-17 05:06:12.224492'),
(17, 'pbkdf2_sha256$320000$KR41LfbxYICXeS3YEH5lQw$xlGRxGgEf6rOB5DkoqkHcBSTYXE7R7b63SkWvP6DjTk=', NULL, 0, 'ff', '', '', '', 0, 1, '2024-01-17 05:07:16.106271'),
(18, 'pbkdf2_sha256$320000$3N8icg8x42LcOHyuBr0P4B$DdD2AVGv+uZFYTTlceBqXn8qD0E6N9bDcDikpAfGBoU=', NULL, 0, 'admin123', '', '', '', 0, 1, '2024-01-17 05:09:24.887912'),
(19, 'pbkdf2_sha256$320000$BslOAC8kdq1crDENE5JouQ$1lMfCq5Lppmv7EucqaFWknTdAwVgO5ZzrxHlGp7lVqI=', NULL, 0, 'cc', '', '', '', 0, 1, '2024-01-17 05:10:46.916185'),
(20, 'pbkdf2_sha256$320000$uLbpDihRiyPNPIz4YOxVoB$Yg8JZQM7A4VsifFXBcTaTZElQ95DtCfcl0d3ibfhYDY=', NULL, 0, 'vvv', '', '', '', 0, 1, '2024-01-17 05:17:22.321786'),
(21, 'pbkdf2_sha256$320000$1z13qsvzk3qtvFK0Gphdqn$FL2C28caR1RbjEIDR74M/gUA2ZuHwTGjCwDa1UeAePM=', NULL, 0, 'zz', '', '', '', 0, 1, '2024-01-17 05:32:56.039676'),
(22, '123', NULL, 0, 'ty', '', '', '', 0, 0, '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'StudentInfo', 'empinsert');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-01-13 05:56:08.566220'),
(2, 'auth', '0001_initial', '2024-01-13 05:56:08.989623'),
(3, 'admin', '0001_initial', '2024-01-13 05:56:09.088950'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-01-13 05:56:09.100991'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-13 05:56:09.112027'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-01-13 05:56:09.174234'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-01-13 05:56:09.218379'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-01-13 05:56:09.234434'),
(9, 'auth', '0004_alter_user_username_opts', '2024-01-13 05:56:09.244467'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-01-13 05:56:09.304665'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-01-13 05:56:09.310684'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-01-13 05:56:09.320717'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-01-13 05:56:09.336770'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-01-13 05:56:09.349814'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-01-13 05:56:09.364863'),
(16, 'auth', '0011_update_proxy_permissions', '2024-01-13 05:56:09.375900'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-01-13 05:56:09.388943'),
(18, 'sessions', '0001_initial', '2024-01-13 05:56:09.424060');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2l7zcjv80bdw7ptvfxae698cpskyj2nt', 'e30:1rPykw:KX-Y7QtbiuPXSqyDZQOdOvTcUUPPAmvhK1plLl8OTMk', '2024-01-31 05:46:30.211821'),
('gb9048c6iflo1e2ai22xyusvtonl4mtv', '.eJxVjEsOAiEQBe_C2hBgaD4u3XsG0nSDjJohmc_KeHedZBa6fVX1XiLhtra0LWVOI4uz0FqcfseM9CjTTviO061L6tM6j1nuijzoIq-dy_NyuH8HDZf2rR2E7EwNEYgG0BFMhRhAowp6UJzRWZ8plBI5IilvKxlQntlVtIaUeH8A7as33g:1rPyrz:cRUEo7128oI9R2tFKISoPQv_tl2RfZ6mhWpEbop5qXU', '2024-01-31 05:53:47.619379');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `studentno` int(10) NOT NULL,
  `filenameimage` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `middlename` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `yrlevel` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `date_joined` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `username`, `password`, `studentno`, `filenameimage`, `firstname`, `middlename`, `lastname`, `course`, `yrlevel`, `section`, `date_joined`) VALUES
(1, 'admin', '123', 123, 'IMG_4693.JPG', 'aj', 'tanga', 'ladjamatli', 'SELECT', '----PLEASE', 'C', '0000-00-00'),
(2, 'admin2', '123', 555, 'logo.png', 'Clara', 'Ibara', 'Maria', 'BSOA', '5th year', 'C', '0000-00-00'),
(3, 'admin3', '123', 123456789, 'logo.png', 'fgdfg', 'dfgfdg', 'dfgdfg', 'BSOA', '3rd year', 'C', '0000-00-00'),
(4, 'admin4', '123', 65756, 'logo.png', 'asd', 'Lee', '123132', 'BSOA', '5th year', 'C', '0000-00-00'),
(5, 'admin5', '123', 55544, 'logo.png', 'Sage', 'Omen', 'KJ', 'BSOA', '3rd year', 'C', '0000-00-00'),
(6, 'aj', '123', 988, 'IMG_4693.JPG', 'aj', '', 'ladj', 'BSIT', '3rd year', 'C', '0000-00-00'),
(7, '', 'Gang199x', 988, 'IMG_4693.JPG', 'hakuna', 'matata', 'tata', 'BSIT', '4th year', 'B', '0000-00-00'),
(8, '', 'Gang199x', 988, 'IMG_4693.JPG', 'hakuna', 'matata', 'tata', 'BSCE', '3rd year', 'A', '0000-00-00'),
(9, 'hakuna199x', 'Gang199x', 988, 'IMG_4693.JPG', 'hakuna', 'matata', 'tata', 'BSCE', '3rd year', 'A', '0000-00-00'),
(10, 'hakuna199x', 'Gang199x', 988, 'IMG_4693.JPG', 'hakuna', 'matata', 'tata', 'BSBA', '1st year', 'A', '0000-00-00'),
(11, 'hakuna199x', '123', 988, 'IMG_4693.JPG', 'hakuna', 'matata', 'tata', 'BSCS', '3rd year', 'D', '0000-00-00'),
(12, 'hhh', '123', 44234, 'IMG_4693.JPG', 'aj', 'ge', 'ladjamatli', 'BSIT', '4th year', 'C', '0000-00-00'),
(13, 'hfhfgh', '123', 12345645, 'IMG_4693.JPG', 'aj', 'ge', 'ladjamatli', 'BSCS', '3rd year', 'C', '2024-01-03'),
(14, 'sfdfg', '213123', 0, 'the boys.jpg', 'aj', 'ge', 'ladjamatli', 'BSOA', '3rd year', 'C', '2024-01-13');

-- --------------------------------------------------------

--
-- Table structure for table `studentsdb`
--

CREATE TABLE `studentsdb` (
  `id` int(10) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `studentno` varchar(225) NOT NULL,
  `filenameimage` varchar(225) NOT NULL,
  `firstname` varchar(225) NOT NULL,
  `middlename` varchar(225) NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `course` varchar(225) NOT NULL,
  `yrlevel` varchar(225) NOT NULL,
  `section` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentsdb`
--

INSERT INTO `studentsdb` (`id`, `username`, `password`, `studentno`, `filenameimage`, `firstname`, `middlename`, `lastname`, `course`, `yrlevel`, `section`) VALUES
(8, '', '', '123', 'uploads/20240116155005istockphoto-1294168122-2048x2048.jpg', 'hakuna', 'Simba', 'Matata', '-----PLEASE SELECT-----', '-----PLEASE SELECT-----', '-----PLEASE SELECT-----'),
(9, '', '', '123', 'uploads/20240116155101xbet.png', 'hakuna', 'Simba', 'Matata', 'BSOA', '2nd year', 'C'),
(10, '', '', '123', 'uploads/20240116164913twilio.png', 'hakuna', 'Simba', 'Matata', '-----PLEASE SELECT-----', '-----PLEASE SELECT-----', '-----PLEASE SELECT-----'),
(11, 'asd1', '123', '123', 'uploads/20240116182641mid.png', 'hakuna', 'Simba', 'Matata', 'BSOA', '2nd year', 'A'),
(12, 'gr', '123', '123', 'uploads/20240116183812istockphoto-1294168122-2048x2048.jpg', 'hakuna', 'Simba', 'Matata', '-----PLEASE SELECT-----', '-----PLEASE SELECT-----', '-----PLEASE SELECT-----'),
(13, 'tw', '123', '123', 'uploads/20240116190213the_boys.jpg', 'hakuna', 'Simba', 'Matata', 'BSCS', '3rd year', 'D'),
(14, 'asd2', '123', '123', 'uploads/20240116200319pagibig.png', 'hakuna', 'Simba', 'Matata', 'BSBA', '2nd year', 'C'),
(20, 'vvv', '123', '123', 'uploads/20240117131722twilio.png', 'hakuna', 'Simba', 'Matata', 'BSBA', '1st year', 'A'),
(21, 'zz', '123', '123', 'uploads/20240117133256pagibig.png', 'hakuna', 'Simba', 'Matata', 'BSOA', '2nd year', 'B'),
(65, 'admin', '1234', '123123', 'uploads/20240116141643userphoto.png', 'hakuna', 'Simba', 'Matata', 'BSBA', '3rd year', 'A'),
(66, 'xt2020', '123', '123123', 'uploads/20240116141703userphoto.png', 'hakuna', 'Simba', 'Matata', 'BSOA', '3rd year', 'C'),
(67, 'jett', '123', '123123', 'uploads/20240116150524347562261_915676389514595_3431291121942464046_n.jpg', 'hakuna', 'Simba', 'Matata', 'BSIT', '4th year', 'A'),
(68, 'red', '123', '123', 'uploads/20240116154340istockphoto-1294168122-2048x2048.jpg', 'hakuna', 'Simba', 'Matata', 'BSOA', '2nd year', 'B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentsdb`
--
ALTER TABLE `studentsdb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `studentsdb`
--
ALTER TABLE `studentsdb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
