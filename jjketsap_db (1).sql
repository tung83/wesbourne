-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 03, 2017 at 10:56 PM
-- Server version: 10.0.31-MariaDB-cll-lve
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jjketsap_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `view` varchar(200) NOT NULL,
  `e_title` text NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `e_view` varchar(255) NOT NULL,
  `cn_title` text NOT NULL,
  `cn_meta_keyword` text NOT NULL,
  `cn_meta_description` text NOT NULL,
  `cn_view` varchar(255) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `icon`, `meta_keyword`, `meta_description`, `view`, `e_title`, `e_meta_keyword`, `e_meta_description`, `e_view`, `cn_title`, `cn_meta_keyword`, `cn_meta_description`, `cn_view`, `ind`, `active`) VALUES
(1, 'Trang chủ', '', '', '', 'trang-chu', 'Home', '', '', 'home', 'Home', '', '', 'home', 1, 1),
(2, 'Giới thiệu', '', '', '', 'gioi-thieu', 'ABOUT', '', '', 'about', 'ABOUT', '', '', 'about', 2, 1),
(3, 'CUSTOM', '', '', '', 'custom', 'CUSTOM', '', '', 'custom', 'CUSTOM', '', '', 'custom', 3, 1),
(4, 'KNOCKDOWN REBUILD', '', '', '', 'knockdown-rebuild', 'KNOCKDOWN REBUILD', '', '', 'knockdown-rebuild', 'KNOCKDOWN REBUILD', '', '', 'knockdown-rebuild', 4, 1),
(5, 'DUAL OCCUPANCY', '', '', '', 'dual-occupancy', 'DUAL OCCUPANCY', '', '', 'dual-occupancy', 'DUAL OCCUPANCY', '', '', 'dual-occupancy', 5, 1),
(6, 'SLOPING BLOCKS', '', '', '', 'sloping-blocks', 'SLOPING BLOCKS', '', '', 'sloping-blocks', 'SLOPING BLOCKS', '', '', 'sloping-blocks', 6, 1),
(7, 'DEVELOPMENT', '', '', '', 'development', 'DEVELOPMENT', '', '', 'development', 'DEVELOPMENT', '', '', 'development', 7, 1),
(8, 'CONTACT', '', '', '', 'contact', 'CONTACT', '', '', 'contact', 'CONTACT', '', '', 'contact', 8, 1);

CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `sum` longtext NOT NULL,
  `content` longtext NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NULL,
  `e_sum` longtext NOT NULL,
  `e_content` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `cn_title` text NULL,
  `cn_sum` longtext NOT NULL,
  `cn_content` longtext NOT NULL,
  `cn_meta_keyword` text NOT NULL,
  `cn_meta_description` text NOT NULL,
  `pId` int(11) NOT NULL,
  `img` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, 
`e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`,
 `cn_sum`, `cn_content`, `cn_meta_keyword`, `cn_meta_description`, 
`pId`, `img`, `active`, `home`, `ind`) VALUES
(1, 'About', 'vn sum', '<p>Chất lượng sản phẩm.</p>\r\n', 'keywork', 'description',
 'en sum', '<p>enChất lượng sản phẩm.</p>\r\n', 'keywork', 'description',
 'cn sum', '<p>cnChất lượng sản phẩm.</p>\r\n', 'keywork', 'description', 0, '', 1, 0, 1);



--
-- Table structure for table `custom`
--

CREATE TABLE IF NOT EXISTS `custom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `e_title` text NOT NULL,
  `cn_title` text NOT NULL,
  `sum` text NOT NULL,
  `e_sum` text NOT NULL,
  `cn_sum` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `lnk` text NOT NULL,
  `e_lnk` text NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `custom`
--

INSERT INTO `custom` (`id`, `title`, `e_title`,`cn_title`, `sum`, `e_sum`, `cn_sum`, `img`, `lnk`, `e_lnk`, `ind`, `active`) VALUES
(7, '', '', '', '', '', '', '1492592095banner2.jpg', '', '', 7, 1),
(9, '', '', '', '', '', '', '1492592379banner3.jpg', '', '', 6, 1),
(10, '', '', '', '', '', '', '1492832489banner3.jpg', '', '', 4, 1),
(11, '', '', '', '', '', '', '1492832519banner4.jpg', '', '', 5, 1),
(13, '', '', '', '', '', '', '1499392017banner11.jpg', '', '', 1, 1),
(14, '', '', '', '', '', '', '1499392047banner21.jpg', '', '', 2, 1),
(15, '', '', '', '', '', '', '1499392074banner31.jpg', '', '', 3, 1);


-- --------------------------------------------------------

--
-- Table structure for table `ad_user`
--

CREATE TABLE IF NOT EXISTS `ad_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `pwd` text NOT NULL,
  `power` int(11) NOT NULL,
  `lastOnl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ad_user`
--

INSERT INTO `ad_user` (`id`, `email`, `pwd`, `power`, `lastOnl`) VALUES
(1, 'czanubis@gmail.com', '949530644ef43dad3857cf6fbbbe10c1', 1, '2016-01-24 03:46:26'),
(2, 'nhatsang@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '2016-03-12 03:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `basic_config`
--

CREATE TABLE IF NOT EXISTS `basic_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_server` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` text NOT NULL,
  `smtp_pwd` text NOT NULL,
  `smtp_sender_email` text NOT NULL,
  `smtp_sender_name` text NOT NULL,
  `smtp_receiver` text NOT NULL,
  `gmap_script` text NOT NULL,
  `another_script` text NOT NULL,
  `social_twitter` text NOT NULL,
  `social_facebook` text NOT NULL,
  `social_google_plus` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `basic_config`
--

INSERT INTO `basic_config` (`id`, `smtp_server`, `smtp_port`, `smtp_user`, `smtp_pwd`, `smtp_sender_email`, `smtp_sender_name`, `smtp_receiver`, `gmap_script`, `another_script`, `social_twitter`, `social_facebook`, `social_google_plus`) VALUES
(1, 'smtp.gmail.com', '587', 'quantrimang.psmedia@gmail.com', 'psmediaquantrimang', 'quantrimang.psmedia@gmail.com', 'Website administrator', 'contact@jjketsaproperty.com.au', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1633799912497!2d106.65656091421477!3d10.798795861734689!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175293132fa9845%3A0x2b09637f85d4a12f!2zVHLGsOG7nW5nIE3huqdtIE5vbiBUw6JuIFPGoW4gTmjhuqV0!5e0!3m2!1svi!2s!4v1474100962959" width="1004" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 'https://www.instagram.com/jjketsa_property/?hl=en', 'https://www.facebook.com/jjketsapropertyagents/', '');

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE IF NOT EXISTS `buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `feature` longtext NOT NULL,
  `price` int(11) DEFAULT NULL,
  `storey` int(11) NOT NULL,
  `beds` int(11) NOT NULL,
  `landWidth` float NOT NULL,
  `price_reduce` int(11) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `condition` tinyint(1) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `detail` longtext NOT NULL,
  `content` longtext NOT NULL,
  `teach` longtext NOT NULL,
  `video` varchar(200) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `manual` longtext NOT NULL,
  `e_manual` longtext NOT NULL,
  `promotion` longtext NOT NULL,
  `e_promotion` longtext NOT NULL,
  `e_title` text NOT NULL,
  `e_feature` longtext NOT NULL,
  `e_detail` longtext NOT NULL,
  `e_content` longtext NOT NULL,
  `e_teach` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pd_option` varchar(255) NOT NULL,
  `lnk` text NOT NULL,
  `e_lnk` text NOT NULL,
  `pId` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(1) NOT NULL,
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=228 ;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`id`, `title`, `feature`, `price`, `storey`, `beds`, `landWidth`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`) VALUES
(227, 'buy', '', 0, 0, 0, 0, NULL, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `buy_cate`
--

CREATE TABLE IF NOT EXISTS `buy_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `img` text NOT NULL,
  `icon` text NOT NULL,
  `pId` int(11) NOT NULL,
  `lev` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `buy_cate`
--

INSERT INTO `buy_cate` (`id`, `title`, `sum`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_meta_keyword`, `e_meta_description`, `img`, `icon`, `pId`, `lev`, `ind`, `active`) VALUES
(1, 'BIẾN TẦN', '', 'LED Par Lights', 'LED Par Lights', 'Electrical Parts', '', 'Electrical Parts', 'Electrical Parts', '', '', 0, 1, 1, 1),
(2, 'SERVO', '', 'LED Moving Head', 'LED Moving Head', 'Auto Parts', '', 'Auto Parts', 'Auto Parts', '', '', 0, 1, 2, 1),
(3, 'ĐỘNG CƠ ', '', 'Moving Head light', 'Moving Head light', 'Mechanical Heat Sink', '', 'Mechanical Heat Sink', 'Mechanical Heat Sink', '', '', 0, 1, 3, 1),
(8, 'INVERTER OMRON', '', 'INVERTER OMRON', 'INVERTER OMRON', '', '', '', '', '', '', 0, 1, 8, 1),
(15, 'DUCATI', '', 'DUCATI', 'DUCATI', '', '', '', '', '', '', 0, 1, 6, 1),
(16, 'YASKAWA', '', 'YASKAWA', 'YASKAWA', '', '', '', '', '', '', 0, 1, 1, 1),
(17, 'BỘ ĐIỀU KHIỂN', '', 'BỘ ĐIỀU KHIỂN', 'BỘ ĐIỀU KHIỂN', '', '', '', '', '', '', 0, 1, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `buy_image`
--

CREATE TABLE IF NOT EXISTS `buy_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text NOT NULL,
  `pId` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `adds` text NOT NULL,
  `phone` text NOT NULL,
  `notice` text NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `adds`, `phone`, `notice`, `dates`) VALUES
(1, 'tung', '3434234', '232131231', 'nhớ', '2017-01-13 03:08:20'),
(2, 'w232', '2323', '23232', '2323232', '2017-01-13 03:09:16'),
(3, 'sdfsfsdf', 'sdfsdfdsf', 'sdfdsfsdf', 'sfsdfsdf', '2017-01-13 03:22:07'),
(4, 'terer', 'erere', 'erere', 'erere', '2017-01-13 03:29:43'),
(5, '32323', '2323', '2323', '2323', '2017-01-13 03:30:20'),
(6, 'ttt', 'ttt', 'tt', 'tttt', '2017-01-20 14:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE IF NOT EXISTS `cart_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_title` text NOT NULL,
  `product_price` float NOT NULL,
  `product_qty` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `product_title`, `product_price`, `product_qty`) VALUES
(1, 4, 186, 'BIẾN TẦN YASKAWA V1000', 0, 1),
(2, 4, 175, 'BIẾN TẦN YASKAWA F7', 0, 1),
(3, 5, 186, 'BIẾN TẦN YASKAWA V1000', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `concierge`
--

CREATE TABLE IF NOT EXISTS `concierge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `content` longtext NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_content` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pId` int(11) NOT NULL,
  `img` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `concierge`
--

INSERT INTO `concierge` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `img`, `active`, `home`, `ind`) VALUES
(1, 'tét 3', '', '<div class="SCX35180545">\r\n<p style="text-align:justify"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Designer%20New%20Orleans%20LHS%201132x674.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /></span></span></span></span></span><br />\r\n<br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><strong>Personal Assistant</strong> - Choose your own builder, let us do the leg work for you. We can take care of all the pre contract appointments.&nbsp; We will keep it simple. See us as your personal assistant.&nbsp; We will liaise directly with builder to ensure the building process of your home is delivered in a timely manner.</span></span>&nbsp;</span></span></span></p>\r\n</div>\r\n\r\n<div class="OutlineElement Ltr SCX35180545" style="margin-left: 0px; direction: ltr;">\r\n<p style="text-align:left"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;</span></span></span></p>\r\n\r\n<p style="text-align:justify"><br />\r\n<br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Designer%20Wembley%20Varano%20RHS%201132x674.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /></span></span><br />\r\n<br />\r\n<span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><strong>Custom Builder</strong> - Can&#39;t see what you like from our extensive designs?&nbsp; Why not custom design your own home?&nbsp; Or maybe you have an irregular shaped site.&nbsp; That&rsquo;s where our design team can tailor the home design to your style and site condition to maximise the benefits without compromising on functionality.</span></span>&nbsp;</span></span></span><br />\r\n<br />\r\n&nbsp;</p>\r\n</div>\r\n\r\n<div class="OutlineElement Ltr SCX35180545" style="margin-left: 0px; direction: ltr;">\r\n<p style="text-align:justify"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;</span></span></span></p>\r\n\r\n<p style="text-align:justify"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Langford%20Kyalami%20370.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /><br />\r\n<strong>Townhouse and Unit Developments</strong> - Is your block of land large enough to build 2 or more units or townhouses on?&nbsp; Let us do the TOWN PLANNING APPLICATION and DESIGN for you.&nbsp; We will liaise with the Councils on your behalf to best develop your land.&nbsp; Our experience with Building Regulations and Subdivision requirements can take the headache&nbsp; out of trying to do it yourself.&nbsp; We can save you time and money!</span></span></span></span></span><br />\r\n<br />\r\n&nbsp;</p>\r\n</div>\r\n&nbsp;\r\n\r\n<div class="OutlineElement Ltr SCX35180545" style="margin-left: 0px; direction: ltr;">\r\n<p style="text-align:justify"><br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Patriot%20Varano%20305.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /></span></span></span></span></span><br />\r\n<br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><strong>Knockdown Rebuild</strong> - Do you want to stay where you are but are dreaming of living in a brand new home?&nbsp; Well you can! We can knock your existing home, and BUILD you a brand new home from our extensive range of homes.&nbsp; Or if you want a more intricate design or style, you can use our CUSTOM Builder Service.</span></span>&nbsp;</span></span></span><br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n</div>\r\n&nbsp;\r\n\r\n<div class="OutlineElement Ltr SCX35180545" style="margin-left: 0px; direction: ltr;">\r\n<p style="text-align:justify"><span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><img alt="" src="/file/ckfinder/userfiles/images/Impression%20Palazzo%20380.jpg" style="float:left; height:179px; margin:10px 50px; width:300px" /></span></span></span></span></span><br />\r\n<br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit"><strong>Finance</strong> - As part of our CONCIERGE SERVICES, we can assist our clients seek finance to BUILD or BUY.&nbsp; Our FINANCE PARTNERS are the LEADERS in the Industry to seek the best lender and home loan rates to suit you and your lifestyle.&nbsp; They will negotiate with the Lenders on your behalf to get you into your home sooner.</span></span>&nbsp;</span></span></span><br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n</div>\r\n', '', '', '', '', '', '', '', 0, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `adds` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `purpose` varchar(500) DEFAULT NULL,
  `content` text NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `adds`, `phone`, `email`, `subject`, `purpose`, `content`, `dates`) VALUES
(1, 'Vivienne', '39 Lynne Maree Avenue', '0430 800 566', 'Viviennezablocki@hotmail.com', 'JJ Ketsa Pty Ltd', 'custom homes', 'Thank you', '2017-04-19 03:11:26'),
(2, 'Vivienne', '39 Lynne Maree Avenue', '0430 800 566', 'Viviennezablocki@hotmail.com', 'JJ Ketsa Pty Ltd', 'custom homes', 'Thank you', '2017-04-19 03:11:47'),
(3, 'Vivienne', '39 Lynne Maree Avenue', '0430 800 566', 'Viviennezablocki@hotmail.com', 'JJ Ketsa Pty Ltd', 'custom homes', 'Thank you', '2017-04-19 03:12:40'),
(4, 'Vivienne', '39 Lynne Maree Avenue', '0430 800 566', 'Viviennezablocki@hotmail.com', 'JJ Ketsa Pty Ltd', 'custom homes', 'Thank you', '2017-04-19 03:12:56'),
(5, 'Vivienne Zablocki', '39 Lynne Maree Avenue', '430800566', 'Viviennezablocki@hotmail.com', '', 'custom homes', 'Thank you', '2017-04-19 05:46:23'),
(6, 'fdf', '', 'fdff', 'fsf@fsdf', '', '', 'fsf', '2017-04-19 06:30:56'),
(7, 'tfsd', '', 'fsdfsdf', 'fdsfdsf@fdsf', '', '', 'fsdf', '2017-04-19 06:34:35'),
(8, 'tfsd', '', 'fsdfsdf', 'fdsfdsf@fdsf', '', '', 'fsdf', '2017-04-19 06:35:27'),
(9, 'tfsd', '', 'fsdfsdf', 'fdsfdsf@fdsf', '', '', 'fsdf', '2017-04-19 06:36:12'),
(10, 'te', 'fa', 'ee', 'mai.com@vnd.d', 'cd', 'custom homes', 'tese', '2017-04-19 08:29:46'),
(11, 's', 'fa', 'fdf', 'mai.com@vnd.d', '', 'custom homes', 'errwer', '2017-04-19 08:33:44'),
(12, 's', 'fa', 'fdf', 'mai.com@vnd.d', '', 'custom homes', 'errwer', '2017-04-19 08:37:09'),
(13, 'Vivienne Zablocki', '39 Lynne Maree Avenue', '430800566', 'Viviennengo@hotmail.com', '', 'buy home', 'Thank you', '2017-04-20 00:01:02'),
(14, 'dfsd', '', 'fsdf', 'fsf@fsdf', '', '', 'fsdf', '2017-04-20 00:34:17'),
(15, 'Quynh Ngo', '39 Lynne Maree Avenue', '430800566', 'Viviennengo@hotmail.com', '', 'custom homes', 'Test', '2017-05-27 00:24:20'),
(16, 'Test', '39 Lynne Maree Avenue', '0430800566', 'Viviennezablocki@hotmail.com', 'JJ Ketsa Pty Ltd', 'build new home', 'Test', '2017-06-07 05:59:17'),
(17, 'Vivienne Zablocki', 'P O Box 203', '0430800566', 'Viviennezablocki@hotmail.com', 'JJ Ketsa Property Agents', 'build new home', 'Test ', '2017-06-27 05:23:31'),
(18, 'Vivienne Zablocki', 'P O Box 203', '0430800566', 'Viviennezablocki@hotmail.com', 'JJ Ketsa Property Agents', 'build new home', 'Test ', '2017-06-27 05:23:38'),
(19, 'LeatevabOpeme', 'modern hanging baskets\r\n', '85714611873', 'cidaopids@gmail.com', 'modern hanging baskets\r\n', '', 'http://allocating.one', '2017-07-26 23:35:03');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyName` text NOT NULL,
  `name` text NOT NULL,
  `list` text NOT NULL,
  `elist` text NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `keyName`, `name`, `list`, `elist`, `ind`, `active`) VALUES
(1, 'storey', 'Storey', 'Single,Double', '', 1, 1),
(2, 'beds', 'Beds', '3,4,5', '', 2, 1),
(3, 'landWidth', 'Land Width (m)', '10,10.5,11,11.5', '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE IF NOT EXISTS `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `eTitle` text NOT NULL,
  `lnk` text NOT NULL,
  `img` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `title`, `eTitle`, `lnk`, `img`, `active`, `ind`) VALUES
(1, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(2, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(3, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(4, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(5, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(6, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(7, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(8, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(9, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(10, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1),
(11, 'Bambo interior2232323', 'Bambo interior', 'pspmedia.vn3232', '1483951483index_28.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `partner_detail`
--

CREATE TABLE IF NOT EXISTS `partner_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `content` longtext NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_content` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pId` int(11) NOT NULL,
  `img` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `feature` longtext NOT NULL,
  `price` int(11) DEFAULT NULL,
  `storey` text NOT NULL,
  `beds` int(11) NOT NULL,
  `landWidth` float NOT NULL,
  `price_reduce` int(11) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `condition` tinyint(1) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `detail` longtext NOT NULL,
  `content` longtext NOT NULL,
  `teach` longtext NOT NULL,
  `video` varchar(200) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `manual` longtext NOT NULL,
  `e_manual` longtext NOT NULL,
  `promotion` longtext NOT NULL,
  `e_promotion` longtext NOT NULL,
  `e_title` text NOT NULL,
  `e_feature` longtext NOT NULL,
  `e_detail` longtext NOT NULL,
  `e_content` longtext NOT NULL,
  `e_teach` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pd_option` varchar(255) NOT NULL,
  `lnk` text NOT NULL,
  `e_lnk` text NOT NULL,
  `pId` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(1) NOT NULL,
  `ind` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=252 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `feature`, `price`, `storey`, `beds`, `landWidth`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`) VALUES
(226, 'Wembley Benson 285', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $220.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 220000, 'Single', 4, 12.5, NULL, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Bộ đếm đa năng 1 trạng thái, kích thước 72 x 72mm</strong></span></span></span>\r\n<ul>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Nguồn cấp: 100-240VAC</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chế độ hoạt động: 1-stage preset counter, total and preset counter *1 (lưạ chọn)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Hiển thị negative transmissive&nbsp;LCD, 6 số, -99,999 ~ 999,999</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn màu hiển thị</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ vào NPN/PNP và cảm biến 2-dây</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn chế độ ngõ vào: Increment, decrement, command (UP/DOWN A), individual (UP/DOWN B), quadrature (UP/DOWN C)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ ra: Rơle và NPN</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn&nbsp;chế độ ngõ ra:&nbsp;N, F, C, R, K-1, P, Q, A, K-2, D, L</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ ra tác động nhanh: 0.01 ~ 99.99s</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chức năng đếm: 1-stage counter / 1-stage counter with total counter</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tốc độ: 30Hz / 5kHz</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Có nguồn cho thiết bị ngoài: 12VDC, 100mA&nbsp;</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tiêu chuẩn: UL, CSA, EN, CE. IP54&nbsp;</strong></span></span></span></li>\r\n</ul>\r\n', '<img alt="" src="/file/ckfinder/userfiles/images/BENSON%20285_RHS.jpg" style="float:left; height:1094px; width:600px" />', '', '', 'Wembley Benson 285', 'Wembley Benson 285', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 21),
(227, 'New Orleans Benson 285', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $220.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 220000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/BENSON%20285_LHS.jpg" style="float:left; height:1094px; width:600px" />', '', '', 'New Orleans Benson 285', 'New Orleans Benson 285', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 13),
(228, 'Outlook Calgary 280', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $220.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 220000, 'Single', 4, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Calgary-280-MK2_RHS.jpg" style="float:left; height:849px; width:600px" />', '', '', 'Outlook Calgary 280', 'Outlook Calgary 280', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 15),
(229, 'Westcott Calgary 280', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $220.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 220000, 'Single', 4, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Calgary-280-MK2_LHS.jpg" style="float:left; height:849px; width:600px" />', '', '', 'Westcott Calgary 280', 'Westcott Calgary 280', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 1, 24),
(230, 'Sarin Fremont 250', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $190.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 190000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/FREMONT%20250_LHS.jpg" style="float:left; height:1190px; width:600px" /><br />\r\n&nbsp;', '', '', 'Sarin Fremont 250', 'Sarin Fremont 250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 19),
(231, 'Boston Kyalami 345', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $290.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 290000, 'Double', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Kyalami%20345_LHS.jpg" style="float:left; height:564px; width:600px" />', '', '', 'Boston Kyalami 345', 'Boston Kyalami 345', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 1),
(232, 'Langford Kyalami 370', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $290.000</strong></span></span>\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 290000, 'Double', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/KYALAMI%20370_RHS.jpg" style="float:left; height:507px; width:600px" />', '', '', 'Langford Kyalami 370', 'Langford Kyalami 370', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 8),
(233, 'Glen Laguna 350', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $250.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>17&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 250000, 'Single', 4, 17, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Laguna_350_LHS.jpg" style="float:left; height:876px; width:600px" />', '', '', 'Glen Laguna 350', 'Glen Laguna 350', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 6),
(234, 'Malibu Madrid 260', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $210.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 210000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Madrid-260-RHS.jpg" style="float:left; height:1154px; width:600px" />', '', '', 'Malibu Madrid 260', 'Malibu Madrid 260', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 9),
(235, 'Contempo Mitchell 250', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $190.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 190000, 'Single', 4, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Mitchell%20250_RHS.jpg" style="float:left; height:910px; width:600px" />', '', '', 'Contempo Mitchell 250', 'Contempo Mitchell 250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 3),
(236, 'Sarin Mitchell 250', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $190.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 190000, 'Single', 4, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Mitchell%20250_RHS.jpg" style="float:left; height:910px; width:600px" />', '', '', 'Sarin Mitchell 250', 'Sarin Mitchell 250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 20),
(237, 'Impression Palazzo 380', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $320.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>16&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 320000, 'Double', 4, 16, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Palazzo_380_RHS.jpg" style="float:left; height:358px; width:600px" />', '', '', 'Impression Palazzo 380', 'Impression Palazzo 380', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 7),
(238, 'Wembley Radisson 225', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $180.000</strong></span></span>\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 180000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Radisson_225_RHS.jpg" style="float:left; height:1132px; width:600px" />', '', '', 'Wembley Radisson 225', 'Wembley Radisson 225', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 1, 22),
(239, 'Modena Ritz 385', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $300.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 300000, 'Double', 4, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Ritz%20385_LHS.jpg" style="float:left; height:526px; width:600px" />', '', '', 'Modena Ritz 385', 'Modena Ritz 385', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 12),
(240, 'Medici Ritz 400', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $300.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 300000, 'Double', 4, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Ritz-400-MK2_LHS.jpg" style="float:left; height:424px; width:600px" />', '', '', 'Medici Ritz 400', 'Medici Ritz 400', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 10),
(241, 'Medici Ritz 445', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $340.000</strong></span></span>\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 340000, 'Double', 4, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Ritz%20445_LHS.jpg" style="float:left; height:484px; width:600px" />', '', '', 'Medici Ritz 445', 'Medici Ritz 445', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 1, 11),
(242, 'Osaka Riviera 280', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $250.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>10 &nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 250000, 'Double', 4, 10, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Riviera%20280_RHS.jpg" style="float:left; height:637px; width:600px" />', '', '', 'Osaka Riviera 280', 'Osaka Riviera 280', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 14),
(243, 'Wembley Sanford 240', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $180.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 180000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Sanford_240_LHS.jpg" style="float:left; height:1154px; width:600px" />', '', '', 'Wembley Sanford 240', 'Wembley Sanford 240', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 23),
(244, 'Patriot Varano 305', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $230.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>16 &nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 230000, 'Single', 4, 16, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Varano_305_LHS.jpg" style="float:left; height:959px; width:600px" />', '', '', 'Patriot Varano 305', 'Patriot Varano 305', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 16),
(245, 'Cambridge Heathcote 39', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $250.000</strong></span></span>\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 250000, 'Double', 3, 14, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Heathcote%2039.png" style="float:left; height:496px; margin:5px; width:300px" /><br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Heathcote%2039%20(1).png" style="float:left; height:473px; margin:5px; width:300px" />', '', '', 'Cambridge Heathcote 39', 'Cambridge Heathcote 39', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 2),
(246, 'Duke Hudson 28', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $200.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 200000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Hudson%2028.png" style="float:left; height:1104px; width:600px" />', '', '', 'Duke Hudson 28', 'Duke Hudson 28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 4),
(247, 'Fitzroy Tasman 20', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $200.000</strong></span></span>\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 200000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/TASMAN%2020.png" style="float:left; height:1047px; width:600px" />', '', '', 'Fitzroy Tasman 20', 'Fitzroy Tasman 20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 5),
(248, 'President Flinders 19', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $200.000</strong></span></span>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 200000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Flinders%2019.png" style="float:left; height:1062px; width:600px" />', '', '', 'President Flinders 19', 'President Flinders 19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 17),
(249, 'Riviera Elwood 20', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $200.000</strong></span></span>\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5 &nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 200000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Elwood%2020.png" style="height:1200px; width:655px" />', '', '', 'Riviera Elwood 20', 'Riviera Elwood 20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 18),
(250, 'Whitlam Jasper 20', '<br />\r\n<span style="font-size:18px"><span style="font-family:arial,helvetica,sans-serif">FROM:<strong> $200.000</strong></span></span>\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:338px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n&nbsp;&nbsp;', 200000, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Jasper%2020.png" style="float:left; height:1016px; margin-left:10px; margin-right:10px; width:600px" />', '', '', 'Whitlam Jasper 20', 'Whitlam Jasper 20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 25),
(251, 'Spencer 20', '', 0, '', 0, 0, NULL, 0, 0, 0, '', '<img alt="" src="/file/ckfinder/userfiles/images/Spencer%2020(1).png" style="float:left; height:541px; margin:5px; width:300px" /><img alt="" src="/file/ckfinder/userfiles/images/Spencer%2020%20(1)(1).png" style="float:left; height:554px; margin:5px; width:300px" />', '', '', 'Spencer 20', 'Spencer 20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cate`
--

CREATE TABLE IF NOT EXISTS `product_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `img` text NOT NULL,
  `icon` text NOT NULL,
  `pId` int(11) NOT NULL,
  `lev` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `product_cate`
--

INSERT INTO `product_cate` (`id`, `title`, `sum`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_meta_keyword`, `e_meta_description`, `img`, `icon`, `pId`, `lev`, `ind`, `active`) VALUES
(1, 'BIẾN TẦN', '', 'LED Par Lights', 'LED Par Lights', 'Electrical Parts', '', 'Electrical Parts', 'Electrical Parts', '', '', 0, 1, 1, 1),
(2, 'SERVO', '', 'LED Moving Head', 'LED Moving Head', 'Auto Parts', '', 'Auto Parts', 'Auto Parts', '', '', 0, 1, 2, 1),
(3, 'ĐỘNG CƠ ', '', 'Moving Head light', 'Moving Head light', 'Mechanical Heat Sink', '', 'Mechanical Heat Sink', 'Mechanical Heat Sink', '', '', 0, 1, 3, 1),
(8, 'INVERTER OMRON', '', 'INVERTER OMRON', 'INVERTER OMRON', '', '', '', '', '', '', 0, 1, 8, 1),
(15, 'DUCATI', '', 'DUCATI', 'DUCATI', '', '', '', '', '', '', 0, 1, 6, 1),
(16, 'YASKAWA', '', 'YASKAWA', 'YASKAWA', '', '', '', '', '', '', 0, 1, 1, 1),
(17, 'BỘ ĐIỀU KHIỂN', '', 'BỘ ĐIỀU KHIỂN', 'BỘ ĐIỀU KHIỂN', '', '', '', '', '', '', 0, 1, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE IF NOT EXISTS `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text NOT NULL,
  `pId` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=262 ;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `img`, `pId`, `ind`, `active`) VALUES
(235, '1491794859Designer New Orleans LHS 1132x674.jpg', 227, 1, 1),
(236, '1491795137Designer Wembley Varano RHS 1132x674.jpg', 226, 1, 1),
(237, '1491795868DESIGNER OUTLOOK RHS.jpg', 228, 1, 1),
(238, '1491796286Designer Westcott LHS.jpg', 229, 1, 1),
(239, '1491796655Edge Sarin LHS 1132x674.jpg', 230, 1, 1),
(240, '1491798180Designer Boston Kyalami LHS 1132x674.jpg', 231, 1, 1),
(241, '1491963282Langford Kyalami 370.jpg', 232, 1, 1),
(242, '1491963428Glen Laguna 350.jpg', 233, 1, 1),
(244, '1491963549Malibu Madrid 260 1132.jpg', 234, 1, 1),
(245, '1491963721Contempo Mitchell 250.jpg', 235, 1, 1),
(246, '1491964110Sarin Mitchell 250.jpg', 236, 1, 1),
(247, '1491964183Impression Palazzo 380.jpg', 237, 1, 1),
(248, '1491964383Wembley Radisson 225.jpg', 238, 1, 1),
(249, '1491964449Modena Ritz 385.jpg', 239, 1, 1),
(250, '1491964585Medici Ritz 400.jpg', 240, 1, 1),
(251, '1491964659Medici Ritz 445.jpg', 241, 1, 1),
(252, '1491964824Osaka Riviera 280.jpg', 242, 1, 1),
(253, '1491964982Wembley Sandford 240.jpg', 243, 1, 1),
(254, '1491965046Patriot Varano 305.jpg', 244, 1, 1),
(255, '1492593872cambridge.jpg', 245, 1, 1),
(256, '1492593955duke.jpg', 246, 1, 1),
(257, '1492594038fitzroy.jpg', 247, 1, 1),
(258, '1492594149president.jpg', 248, 1, 1),
(259, '1492594239riviera.jpg', 249, 1, 1),
(260, '1492594318whitlam.jpg', 250, 1, 1),
(261, '1499428711beta1132.jpg', 251, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qtext`
--

CREATE TABLE IF NOT EXISTS `qtext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `e_title` text NOT NULL,
  `content` longtext NOT NULL,
  `e_content` longtext NOT NULL,
  `cn_content` longtext NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `qtext`
--

INSERT INTO `qtext` (`id`, `title`, `e_title`, `content`, `e_content`) VALUES
(2, 'Hotline', '', '1800 918 503', ''),
(3, 'Liên hệ', '', '<div style="text-align: center;"><span style="color:#ff0099"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="line-height:3"><span style="font-size:20px">JJ Ketsa Property Agents</span></span></span></span></span></div>\r\n<span style="color:#FFF0F5"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="line-height:3">a. Suite 116, 566 St Kilda Road, Melbourne Vic 3004<br />\r\nt. 1800 918 503&nbsp;<br />\r\ne. contact@jjketsaproperty.com.au</span></span></span></span>', ''),
(4, 'Footer', '', '<span style="color:#ff3399"><span style="font-size:20px"><strong>JJ Ketsa Property Agents</strong></span></span><br />\r\n<span style="font-size:16px"><span style="line-height:2">a. Suite 116, 566 St Kilda Road, Melbourne Vic 3004<br />\r\nt. 1800 918 503&nbsp;<br />\r\ne. contact@jjketsaproperty.com.au<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Designer%20New%20Orleans%20LHS%201132x674.jpg" style="float:left; height:167px; width:280px" /></span></span>', ''),
(5, 'Header Text', '', '343435556', ''),
(6, 'build indicator', '', '<strong>Why BUILD with us?</strong><br />\r\n<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">With the experience, innovation and quality delivered by our Licenced Builders, you can build with peace of mind. Choose from our extensive designs and floorplans. If you can&#39;t find what you like, we can custom your design.</span></span></span>', ''),
(7, 'about indicator', '', '', ''),
(8, 'sell summary', '', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="line-height:2"><span style="font-size:16px"><strong>House &amp; Land Packages</strong></span><br />\r\nWe have made it simple for you to buy. Here are some house and land packages to choose from a range of sought after locations and budgets. If there is a design you like from our range, we can put together a package to suit your needs and requirements.</span></span></span>', ''),
(9, 'Concierge summary', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Our property services extends a little further. Use our Concierge Services for Custom Design, Development, Knockdown- Rebuild, Property Finance or Builder Liaising.</span></span></span>', ''),
(10, 'buy sum', '', '<div style="text-align: center; margin-left: 40px;"><strong><span style="font-size:14px">What Is A Buyer Advocate?</span></strong><br />\r\nA Buyer Advocate is a fully licensed real estate agent who sources properties according to a brief. </div>\r\n\r\n<div style="text-align: center; margin-left: 40px;">A good Buyers Advocate will find you the best property, in the best position that your budget allows.</div>\r\n', ''),
(11, 'home_build', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Why BUILD with us?</strong><br />\r\nWith the experience, innovation and quality delivered by our Licenced Builders, you can build with peace of mind. Choose from our extensive designs and floorplans. If you can&#39;t find what you like, we can custom your design.</span></span></span>', ''),
(12, 'home_buy', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Let us help you buy.</strong><br />\r\nDo you need guidance when it comes to buying a home or investment property?&nbsp; Price guides, suburb guides, finance and legal, we can help you through the maze of information overload. </span></span></span>', ''),
(13, 'home_custom', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Our property services extends a little further. Use our Concierge Services for Custom Design, Development,<br />\r\nKnockdown- Rebuild, Property Finance or Builder Liaising.</span></span></span>', ''),
(14, 'home_combine', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Why SELL with us?</strong><br />\r\nOur Vendors enjoy a highly skilled and boutique service from an experienced team who understand what it takes to deliver them the Premium Price. Ask us how we do this and why our progressive business structure allows them to save $1000&#39;s...</span></span></span>', ''),
(15, 'home_about', '', '<p><span style="font-size:14px"><span style="line-height:2"><span style="font-family:arial,helvetica,sans-serif"><span style="background-color:transparent; color:windowtext"><span style="background-color:inherit">You can say we are not your typical agents.&nbsp; We wanted to offer a service that help customers Build, Buy or Sell their home.&nbsp; By partnering with some of the best Industry Leaders to assist customers through the emotional rollercoaster of information overload.&nbsp; We work to make the process simple and enjoyable.&nbsp;</span></span>&nbsp;</span></span></span></p>\r\n\r\n<div class="embed-responsive embed-responsive-16by9"><iframe allowfullscreen="" frameborder="0" height="422" src="http://www.youtube.com/embed/qlStrPEz-SQ?controls=0" width="750"></iframe></div>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `rebuild`
--

CREATE TABLE IF NOT EXISTS `rebuild` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `feature` longtext NOT NULL,
  `price` int(11) DEFAULT NULL,
  `storey` text NOT NULL,
  `beds` int(11) NOT NULL,
  `landWidth` float NOT NULL,
  `price_reduce` int(11) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `condition` tinyint(1) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `detail` longtext NOT NULL,
  `content` longtext NOT NULL,
  `teach` longtext NOT NULL,
  `video` varchar(200) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `manual` longtext NOT NULL,
  `e_manual` longtext NOT NULL,
  `promotion` longtext NOT NULL,
  `e_promotion` longtext NOT NULL,
  `e_title` text NOT NULL,
  `e_feature` longtext NOT NULL,
  `e_detail` longtext NOT NULL,
  `e_content` longtext NOT NULL,
  `e_teach` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `cn_promotion` longtext NOT NULL,
  `cn_title` text NULL,
  `cn_feature` longtext NULL,
  `cn_detail` longtext  NULL,
  `cn_content` longtext  NULL,
  `cn_teach` longtext  NULL,
  `cn_meta_keyword` text  NULL,
  `cn_meta_description` text  NULL,
  `pd_option` varchar(255) NOT NULL,
  `lnk` text NOT NULL,
  `e_lnk` text NOT NULL,
  `pId` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(1) NOT NULL,
  `ind` int(11) NOT NULL,
  `file` text,
  `file_show` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `rebuild`
--

INSERT INTO `rebuild` (`id`, `title`, `feature`, `price`, `storey`, `beds`, `landWidth`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`, `file`, `file_show`) VALUES
(3, 'Lot 320 Stableford Street, Werribee - Riviera Flinders 19', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Single', 4, 12, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1ZF9MYnRFQkZOU3c" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Flinders%2019.jpg" style="float:left; height:1062px; width:600px" />', '', '', 'Lot 320 Stableford Street, Werribee - Riviera Flinders 19', 'Lot 320 Stableford Street, Werribee - Riviera Flinders 19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 33, NULL, 0),
(7, 'Lot 403 Distinction Crescent, Truganina - Prominent Oxford 27', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1M2tsSE5KSFVxd0E" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Oxford%2027.png" style="float:left; height:424px; margin:5px; width:300px" /><img alt="" src="/file/ckfinder/userfiles/images/Oxford%2027%20(1).png" style="float:left; height:413px; margin:5px; width:300px" />', '', '', 'Lot 403 Distinction Crescent, Truganina - Prominent Oxford 27', 'Lot 403 Distinction Crescent, Truganina - Prominent Oxford 27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 23, NULL, 0),
(8, 'Lot 418 Award Crescent, Truganina - Elementary Moiki 18', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>8.5&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1TlRlMzNvZ0k3U28" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Moiki%2018(1).png" style="float:left; height:576px; margin:5px; width:300px" /><img alt="" src="/file/ckfinder/userfiles/images/Moiki%2018%20(1).png" style="float:left; height:591px; margin:5px; width:300px" />', '', '', 'Lot 418 Award Crescent, Truganina - Elementary Moiki 18', 'Lot 418 Award Crescent, Truganina - Elementary Moiki 18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 18, NULL, 0),
(9, 'Lot 426 Selbourne Street, Melton South - Elite Cambridge 28', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1MEtfQnd1QWtFZGM" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Cambridge%2028.png" style="float:left; height:404px; margin:5px; width:300px" /><img alt="" src="/file/ckfinder/userfiles/images/Cambridge%2028%20(1).png" style="float:left; height:384px; margin:5px; width:300px" />', '', '', 'Lot 426 Selbourne Street, Melton South - Elite Cambridge 28', 'Lot 426 Selbourne Street, Melton South - Elite Cambridge 28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 29, NULL, 0),
(10, 'Lot 426 Selbourne Street, Melton South - Senator Erickson 24', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1cEY2RkpHeWtKa2c" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Erickson%20241.jpg" style="float:left; height:1053px; width:600px" />', '', '', 'Lot 426 Selbourne Street, Melton South - Senator Erickson 24', 'Lot 426 Selbourne Street, Melton South - Senator Erickson 24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 25, NULL, 0),
(11, 'Lot 426 Selbourne Street, Melton South - Whitlam Tasman 20', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1RHhobDhyTlJRbkU" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/TASMAN%2020.jpg" style="float:left; height:1046px; width:600px" />', '', '', 'Lot 426 Selbourne Street, Melton South - Whitlam Tasman 20', 'Lot 426 Selbourne Street, Melton South - Whitlam Tasman 20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 28, NULL, 0),
(12, 'Lot 445 CG - Sandford 240 DC (Glen facade)', '', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1TFlrWlpGY3dpTlk" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Sanford_240_LHS1.jpg" style="float:left; height:1154px; width:600px" />', '', '', 'Lot 445 CG - Sandford 240 DC (Glen facade)', 'Lot 445 CG - Sandford 240 DC (Glen facade)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 22, NULL, 0),
(13, 'Lot 445CG - Radisson 250 DC (Hudson Facade)', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1OUdUODJwMlhJa3M" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Radisson%20250_LHS1.jpg" style="float:left; height:928px; width:600px" />', '', '', 'Lot 445CG - Radisson 250 DC (Hudson Facade)', 'Lot 445CG - Radisson 250 DC (Hudson Facade)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 23, NULL, 0),
(14, 'Lot 505 Shearwater Place, Mernda - Seville Kyalami 345', '<span style="font-size:14px"><strong>Lot 505 Shearwater Place, Mernda - Seville Kyalami 345</strong></span>\r\n<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14 &nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1YzMwVDZBSjZXSkE" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Kyalami-345_RHS1.jpg" style="float:left; height:515px; width:600px" />', '', '', 'Lot 505 Shearwater Place, Mernda - Seville Kyalami 345', 'Lot 505 Shearwater Place, Mernda - Seville Kyalami 345', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 10, NULL, 0),
(15, 'Lot 505 Shearwater Place, Mernda - Marina Ritz 400', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1bFRabzh6NFNRM0k" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Ritz-400-MK2_RHS2.jpg" style="float:left; height:486px; width:600px" />', '', '', 'Lot 505 Shearwater Place, Mernda - Marina Ritz 400', 'Lot 505 Shearwater Place, Mernda - Marina Ritz 400', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 23, NULL, 0),
(16, 'Lot 706 Speargrass Close, Clyde North - Duke Elwood 20', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1Nm1OSy1ZenN6OTA" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Elwood%20201.jpg" style="float:left; height:1098px; width:600px" />', '', '', 'Lot 706 Speargrass Close, Clyde North - Duke Elwood 20', 'Lot 706 Speargrass Close, Clyde North - Duke Elwood 20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 15, NULL, 0),
(17, 'Lot 751 Barley Crescent, Clyde North - Madison Fremont 250', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1MmZqQmQxZmdWTEU" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/FREMONT-250-700.jpg" style="height:1200px; margin:10px; width:605px" />', '', '', 'Lot 751 Barley Crescent, Clyde North - Madison Fremont 250', 'Lot 751 Barley Crescent, Clyde North - Madison Fremont 250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 10, 'documents/1501577643', 0),
(18, 'Lot 751 Barley Crescent, Clyde North - Langford Kyalami 370', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1Ynh4YmdWNVM5YnM" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/KYALAMI-370_LHS1.jpg" style="float:left; height:507px; width:600px" />', '', '', 'Lot 751 Barley Crescent, Clyde North - Langford Kyalami 370', 'Lot 751 Barley Crescent, Clyde North - Langford Kyalami 370', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 24, NULL, 0),
(19, 'Lot 813 Graziers Crescent, Clyde North - The Glen Mitchell 250', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14 &nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1UjJXUTRJNi1ZajQ" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Mitchell%20250_LHS1.jpg" style="float:left; height:909px; width:600px" />', '', '', 'Lot 813 Graziers Crescent, Clyde North - The Glen Mitchell 250', 'Lot 813 Graziers Crescent, Clyde North - The Glen Mitchell 250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 19, NULL, 0),
(20, 'Lot 813 Graziers Crescent, Clyde North - Medici Ritz 400', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1c1duNHNXOERtWnM" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Ritz-400-MK2_LHS(1).jpg" style="float:left; height:424px; width:600px" />', '', '', 'Lot 813 Graziers Crescent, Clyde North - Medici Ritz 400', 'Lot 813 Graziers Crescent, Clyde North - Medici Ritz 400', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 22, NULL, 0),
(22, 'Lot 1027 Pavillion Circuit, Sunbury - Lyons Elwood 20', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:340px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1Yk5MSUhMV0VrTVU" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Elwood%20201(1).jpg" style="float:left; height:1098px; width:600px" />', '', '', 'Lot 1027 Pavillion Circuit, Sunbury - Lyons Elwood 20', 'Lot 1027 Pavillion Circuit, Sunbury - Lyons Elwood 20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 23, NULL, 0),
(24, 'Lot 2734 Kyogle Street, Point Cook - Duke Hudson 28', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>16 &nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1UW9HM0JIUER2d3c" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Flinders%20191(1).jpg" style="float:left; height:1062px; width:600px" />', '', '', 'Lot 2734 Kyogle Street, Point Cook - Duke Hudson 28', 'Lot 2734 Kyogle Street, Point Cook - Duke Hudson 28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 24, NULL, 0),
(25, 'Lot 2734 Kyogle Street, Point Cook - Boston Kyalami 370', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>16 &nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1RFI2NVp5dHBfVlk" target="_blank"><em><span style="color:#ff00cc">Download Details</span></em></a><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/KYALAMI%20370_RHS1.jpg" style="float:left; height:507px; width:600px" />', '', '', 'Lot 2734 Kyogle Street, Point Cook - Boston Kyalami 370', 'Lot 2734 Kyogle Street, Point Cook - Boston Kyalami 370', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 14, NULL, 0),
(26, 'Lot 2734 Kyogle Street, Point Cook - Elite Heathcote 39', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>16 &nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1ZDlwTWF3MEFOR3c" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Heathcote%2039(1).png" style="float:left; height:496px; margin:5px; width:300px" /><img alt="" src="/file/ckfinder/userfiles/images/Heathcote%2039%20(1)(1).png" style="float:left; height:473px; margin:5px; width:300px" />', '', '', 'Lot 2734 Kyogle Street, Point Cook - Elite Heathcote 39', 'Lot 2734 Kyogle Street, Point Cook - Elite Heathcote 39', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 9, NULL, 0),
(27, 'Lot 2734 Kyogle Street, Point Cook - Wembley Fremont 250', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>16 &nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1eGEtVXFKbjBBb1U" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/FREMONT%20250_LHS(2).jpg" style="float:left; height:1190px; width:600px" />', '', '', 'Lot 2734 Kyogle Street, Point Cook - Wembley Fremont 250', 'Lot 2734 Kyogle Street, Point Cook - Wembley Fremont 250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 27, NULL, 0),
(29, 'Lot 614 Hammersmith Road, Wyndham Vale - Fitzroy Cortez 23', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, '', 0, 0, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1SGd6cmpNVHI4MU0" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Cortez%2023.png" style="float:left; height:1216px; margin:10px; width:600px" />', '', '', 'Lot 614 Hammersmith Road, Wyndham Vale - Fitzroy Cortez 23', 'Lot 614 Hammersmith Road, Wyndham Vale - Fitzroy Cortez 23', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 14, NULL, 0),
(30, 'Lot 614 Hammersmith Road, Wyndham Vale - Duke Elwood 20', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Double', 4, 12.5, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1bklmSnpYTmxGSUU" target="_blank"><span style="color:#ff00cc">Download Details<br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Elwood%2020(1).png" style="float:left; height:1099px; margin:10px; width:600px" /></span></a></em>', '', '', 'Lot 614 Hammersmith Road, Wyndham Vale - Duke Elwood 20', 'Lot 614 Hammersmith Road, Wyndham Vale - Duke Elwood 20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 3, NULL, 0),
(31, 'Lot 828 Dapple Crescent, Clyde North - Whitlam Jasper 20', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1aUNjTmhtYXJWaXc" target="_blank"><span style="color:#ff00cc">Download Details<br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Jasper%2020(2).png" style="float:left; height:1016px; margin:10px; width:600px" /></span></a></em>', '', '', 'Lot 828 Dapple Crescent, Clyde North - Whitlam Jasper 20', 'Lot 828 Dapple Crescent, Clyde North - Whitlam Jasper 20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 4, NULL, 0),
(32, 'Lot 1014 Fuschia Drive, Rockbank - President Jackson 18', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>10.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Single', 4, 10.5, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1STlxay1qdzY4R3M" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Jackson%2018(1).png" style="float:left; height:1220px; margin:10px; width:600px" />', '', '', 'Lot 1014 Fuschia Drive, Rockbank - President Jackson 18', 'Lot 1014 Fuschia Drive, Rockbank - President Jackson 18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 12, NULL, 0),
(33, 'Lot 1517 Saunders Street, Melton - Duke Livingston 19', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>3&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>10.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Single', 3, 10.5, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1eTJtd3JKaWUycW8" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Livingston%2019.png" style="float:left; height:1254px; margin:10px; width:600px" />', '', '', 'Lot 1517 Saunders Street, Melton - Duke Livingston 19', 'Lot 1517 Saunders Street, Melton - Duke Livingston 19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 10, NULL, 0),
(34, 'Lot 3555 Woodland Avenue, Keysborough - Medici Palazzo 380', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>16 &nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Double', 4, 16, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1XzdPOHlBM2lCU3M"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Palazzo_380_RHS(1).jpg" style="float:left; height:358px; margin:10px; width:600px" />', '', '', 'Lot 3555 Woodland Avenue, Keysborough - Medici Palazzo 380', 'Lot 3555 Woodland Avenue, Keysborough - Medici Palazzo 380', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 13, NULL, 0),
(35, 'Lot 614 Hammersmith Road, Wyndham Vale - Montego Jerez 225', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>12.5&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Single', 4, 12.5, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1VjgtZzBGek1mQUE"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Jerez-225-LHS.jpg" style="float:left; height:1071px; margin:10px; width:600px" />', '', '', 'Lot 614 Hammersmith Road, Wyndham Vale - Montego Jerez 225', 'Lot 614 Hammersmith Road, Wyndham Vale - Montego Jerez 225', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 12, NULL, 0),
(36, 'Lot 265 (97) Coldstream Avenue, Werribee - Daytona Laguna 350', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>29.99</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Single', 4, 19.99, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1QThKcHBTN3JYdVk" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Laguna_350_LHS(1).jpg" style="float:left; height:876px; margin:10px; width:600px" />', '', '', 'Lot 265 (97) Coldstream Avenue, Werribee - Daytona Laguna 350', 'Lot 265 (97) Coldstream Avenue, Werribee - Daytona Laguna 350', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 20, NULL, 0),
(37, 'Lot 265 (97) Coldstream Avenue, Werribee - Medici Ritz 400', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>19.99&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Double', 4, 19.99, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1cGFKbnhrNHI3dzQ" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Ritz-400-MK2_LHS(2).jpg" style="float:left; height:424px; margin:10px; width:600px" />', '', '', 'Lot 265 (97) Coldstream Avenue, Werribee - Medici Ritz 400', 'Lot 265 (97) Coldstream Avenue, Werribee - Medici Ritz 400', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 11, 'documents/1501003548', 1),
(38, 'Lot 265 (97) Coldstream Avenue, Werribee - Patriot Verano 305', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>19.99&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Single', 4, 19.99, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1REdSU21OaDI1dk0"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Varano_305_LHS(1).jpg" style="float:left; height:959px; margin:10px; width:600px" />', '', '', 'Lot 265 (97) Coldstream Avenue, Werribee - Patriot Verano 305', 'Lot 265 (97) Coldstream Avenue, Werribee - Patriot Verano 305', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 11, NULL, 0),
(39, 'Lot 1631 Karpass St, Wyndham Vale - Cambridge Heathcote 39', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Double', 4, 14, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1ZkVXRzFhUjFqRzg"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Heathcote39-1631-1.png" style="float:left; height:496px; margin:4px; width:300px" /><img alt="" src="/file/ckfinder/userfiles/images/Heathcote39-1631-2.png" style="float:left; height:473px; margin:5px; width:300px" />', '', '', 'Lot 1631 Karpass St, Wyndham Vale - Cambridge Heathcote 39', 'Lot 1631 Karpass St, Wyndham Vale - Cambridge Heathcote 39', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 2, NULL, 0),
(40, 'Lot 1631 Karpass St, Wyndham Vale - Duke Huson 28', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Single', 4, 14, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1dkxuTVdlZUxSdU0"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Hudson-28-1631.jpg" style="float:left; height:1104px; margin:10px; width:600px" />', '', '', 'Lot 1631 Karpass St, Wyndham Vale - Duke Huson 28', 'Lot 1631 Karpass St, Wyndham Vale - Duke Huson 28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 7, NULL, 0),
(41, 'Lot 1731 Rush Street, Rockbank - Alpha Cambridge 31', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>15.5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Double', 4, 15.5, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/file/d/0B1q9Zqrh0Rq1NmJDLU5xYlA1NjQ/view"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Cambridge-31-1731.jpg" style="float:left; height:448px; margin:5px; width:300px" /><img alt="" src="/file/ckfinder/userfiles/images/Cambridge-31-1731-1.jpg" style="float:left; height:411px; margin:5px; width:300px" />', '', '', 'Lot 1731 Rush Street, Rockbank - Alpha Cambridge 31', 'Lot 1731 Rush Street, Rockbank - Alpha Cambridge 31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 5, NULL, 0),
(42, 'Lot 1731 Rush Street, Rockbank Woodlea - President Huson 28', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Single', 4, 0, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1SXY5Rm1iSGFNSGs"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Hudson-28-1731.jpg" style="float:left; height:1104px; margin:10px; width:600px" />', '', '', 'Lot 1731 Rush Street, Rockbank Woodlea - President Huson 28', 'Lot 1731 Rush Street, Rockbank Woodlea - President Huson 28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 8, NULL, 0),
(43, 'Lot 2618 Rapa Drive, Tarneit - President Huson 28', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Single', 3, 14, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1U2w2MFUycmpscVE"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Hudson-28-2618.jpg" style="float:left; height:1104px; margin:10px; width:600px" />', '', '', 'Lot 2618 Rapa Drive, Tarneit - President Huson 28', 'Lot 2618 Rapa Drive, Tarneit - President Huson 28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 3, NULL, 0),
(44, 'Lot 2618 Rapa Drive, Tarneit - Malibu Atlanta 290', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Single', 4, 14, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1R2dPSjVpU245Z2s"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Atlanta-290-RHS-2618.jpg" style="float:left; height:1103px; margin:10px; width:600px" />', '', '', 'Lot 2618 Rapa Drive, Tarneit - Malibu Atlanta 290', 'Lot 2618 Rapa Drive, Tarneit - Malibu Atlanta 290', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 6, NULL, 0);
INSERT INTO `rebuild` (`id`, `title`, `feature`, `price`, `storey`, `beds`, `landWidth`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`, `file`, `file_show`) VALUES
(45, 'Lot 2618 Rapa Drive, Tarneit - Baron Heathcote 39', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>14</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Single', 4, 14, NULL, 0, 0, 0, '', '<br />\r\n<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1QWpMa2xsdUlRU28"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Heathcote%2039-2618-1.png" style="float:left; height:496px; margin:5px; width:300px" /><img alt="" src="/file/ckfinder/userfiles/images/Heathcote%2039-2618-2.png" style="float:left; height:473px; margin:5px; width:300px" />', '', '', 'Lot 2618 Rapa Drive, Tarneit - Baron Heathcote 39', 'Lot 2618 Rapa Drive, Tarneit - Baron Heathcote 39', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 8, 'documents/1501495457Revision 1.pdf', 1),
(46, 'HOUSE &amp; LAND OF THE WEEK - Lot 2137 Fields Street, Rockbank - Riviera Livingston 19', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>3&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>10.5&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Single', 2, 10.5, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1QjdGU1ZKdEVTbGs" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Livingston%2019-2137.jpg" style="float:left; height:1252px; margin:5px; width:600px" />', '', '', 'Lot 2137 Fields Street, Rockbank - Riviera Livingston 19', 'Lot 2137 Fields Street, Rockbank - Riviera Livingston 19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 1, 'documents/1501636800ducbon.jpg', 1),
(47, 'Lot 2137 Fields Street, Rockbank - Elementary Ikonic 19', '<table border="0" cellpadding="1" cellspacing="1" style="height:65px; width:336px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bed.png" style="height:52px; width:52px" /></td>\r\n			<td>4&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/bath.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/car.png" style="height:50px; width:50px" /></td>\r\n			<td>2&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td><img alt="" src="/file/ckfinder/userfiles/images/land.png" style="height:50px; width:50px" /></td>\r\n			<td>10.5&nbsp;&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 'Double', 4, 10.5, NULL, 0, 0, 0, '', '<em><a href="https://drive.google.com/open?id=0B1q9Zqrh0Rq1SHczQVFaZGJwUGc" target="_blank"><span style="color:#ff00cc">Download Details</span></a></em><br />\r\n<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/Ikonic%2019-21371.png" style="float:left; height:561px; margin:5px; width:300px" /><img alt="" src="/file/ckfinder/userfiles/images/Ikonic%2019-21373.jpg" style="float:left; height:561px; margin:5px; width:300px" />', '', '', 'Lot 2137 Fields Street, Rockbank - Elementary Ikonic 19', 'Lot 2137 Fields Street, Rockbank - Elementary Ikonic 19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 4, 'documents/1501643553', 0);

--
-- Table structure for table `rebuild_image`
--

CREATE TABLE IF NOT EXISTS `rebuild_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text NOT NULL,
  `pId` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pId` (`pId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `rebuild_image`
--

INSERT INTO `rebuild_image` (`id`, `img`, `pId`, `ind`, `active`) VALUES
(3, '1500448224riviera-sold.jpg', 3, 1, 1),
(8, '1500449038prominent-sold.jpg', 7, 1, 1),
(10, '1495167935elite.jpg', 9, 1, 1),
(11, '1495168352senator.jpg', 10, 1, 1),
(12, '1495254056whitlam.jpg', 11, 1, 1),
(13, '1495254463Edge Glen LHS 1132x674.jpg', 12, 1, 1),
(14, '1495254771Edge Hudson LHS 1132x674.jpg', 13, 1, 1),
(15, '1500434289Kyalami-Facade-sold.jpg', 14, 10, 1),
(16, '1495255441Designer Marina Kyalami RHS 1132x674.jpg', 15, 1, 1),
(17, '1495443011duke.jpg', 16, 1, 1),
(18, '1500619693Fremont-Facade1132.jpg', 17, 1, 1),
(19, '1495444512Designer Langford Kyalami LHS 1132x674.jpg', 18, 1, 1),
(20, '1495444867Edge Glen LHS 1132x674.jpg', 19, 1, 1),
(21, '1500447961Designer-Medici-Kyalami-sold.jpg', 20, 1, 1),
(23, '1500448632lyons-sold.jpg', 22, 1, 1),
(25, '1495446780duke.jpg', 24, 1, 1),
(26, '1495447066Designer-Boston-Kyalami-1132x674-_RHS1.jpg', 25, 1, 1),
(27, '1495505662elite.jpg', 26, 1, 1),
(28, '1495505794Edge Wembley RHS 1132x674.jpg', 27, 1, 1),
(30, '1500436536fitzroy-sold.jpg', 29, 1, 1),
(31, '1500433609duke1132.jpg', 30, 1, 1),
(32, '1500435151whitlam1132-undercontract.jpg', 31, 1, 1),
(33, '1500433528president1132.jpg', 32, 1, 1),
(34, '1500433476lyons1132.jpg', 33, 1, 1),
(35, '1500433448Designer Medici Palazzo RHS 1132x674.jpg', 34, 1, 1),
(36, '1500433741Montego facade_LHS.jpg', 35, 1, 1),
(37, '1500433388Daytona_LHS.jpg', 36, 1, 1),
(38, '1500433278Designer Medici Kyalami LHS 1132x674.jpg', 37, 1, 1),
(40, '1500433359Designer Patriot Varano LHS 1132x674.jpg', 38, 1, 1),
(41, '1500446979Elementary-sold.jpg', 8, 1, 1),
(42, '1500625183cambridge-new.jpg', 39, 1, 1),
(43, '1500625614duke1132-new.jpg', 40, 1, 1),
(44, '1500626278alpha-cambridge1132-new.jpg', 41, 1, 1),
(45, '1500627341president1132-new.jpg', 42, 1, 1),
(46, '1500628101president1132-new.jpg', 43, 1, 1),
(47, '1500628278Designer-Malibu-1132-new.jpg', 44, 1, 1),
(48, '1500628511baron1132-new.jpg', 45, 1, 1),
(49, '1501576192riviera.jpg', 46, 1, 1),
(50, '1501642169Elementary1132.jpg', 47, 1, 1);

--
-- Constraints for table `rebuild_image`
--
ALTER TABLE `rebuild_image`
  ADD CONSTRAINT `rebuild_image_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `rebuild` (`id`) ON DELETE CASCADE;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `session_id` varchar(255) NOT NULL,
  `last_visit` datetime NOT NULL DEFAULT '2017-01-03 00:00:00',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`session_id`, `last_visit`) VALUES
('0t5hddeb3438eando09bk6uop1', '2017-01-03 15:13:38'),
('7fbha854m8kpq4mtlquhfe64h1', '2017-01-03 15:22:14'),
('pjg2af50coeiuig9uu970r8n66', '2017-01-03 15:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `e_title` text NOT NULL,
  `sum` text NOT NULL,
  `e_sum` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `lnk` text NOT NULL,
  `e_lnk` text NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `e_title`, `sum`, `e_sum`, `img`, `lnk`, `e_lnk`, `ind`, `active`) VALUES
(7, '', '', '', '', '1492592095banner2.jpg', '', '', 7, 1),
(9, '', '', '', '', '1492592379banner3.jpg', '', '', 6, 1),
(10, '', '', '', '', '1492832489banner3.jpg', '', '', 4, 1),
(11, '', '', '', '', '1492832519banner4.jpg', '', '', 5, 1),
(13, '', '', '', '', '1499392017banner11.jpg', '', '', 1, 1),
(14, '', '', '', '', '1499392047banner21.jpg', '', '', 2, 1),
(15, '', '', '', '', '1499392074banner31.jpg', '', '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vs_counter`
--

CREATE TABLE IF NOT EXISTS `vs_counter` (
  `hit_counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vs_counter`
--

INSERT INTO `vs_counter` (`hit_counter`) VALUES
(509);

-- --------------------------------------------------------

--
-- Table structure for table `vs_detail`
--

CREATE TABLE IF NOT EXISTS `vs_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vs_ip` varchar(255) NOT NULL,
  `vs_city` varchar(255) DEFAULT NULL,
  `vs_browser` varchar(255) NOT NULL,
  `vs_os` varchar(255) NOT NULL,
  `vs_id` varchar(255) NOT NULL,
  `vs_flag` tinyint(1) NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=507 ;

--
-- Dumping data for table `vs_detail`
--

INSERT INTO `vs_detail` (`id`, `vs_ip`, `vs_city`, `vs_browser`, `vs_os`, `vs_id`, `vs_flag`, `dates`) VALUES
(307, 'unknown', 'unknown', 'Chrome', 'Windows 8.1', 'dai9m30cqgecqga44rvjreb2m5', 0, '2017-04-21 03:18:07'),
(382, 'unknown', 'unknown', 'Chrome', 'Windows 10', '416cirirbmrrvjfjb9qubma6d3', 0, '2017-04-22 03:03:46'),
(429, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'k19ca3h3m58sd9lc5cn0k20si1', 0, '2017-04-21 06:33:34'),
(430, 'unknown', 'unknown', 'Firefox', 'Windows XP', 'vtnbvqe3erapp50b8u2fbgc1u5', 0, '2017-04-21 06:33:34'),
(431, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '6pd6ero83sn5lg1kbht26ormn7', 0, '2017-04-21 06:33:34'),
(432, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '1538o21lch421ufhq280r1ddo5', 0, '2017-04-21 07:02:34'),
(433, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'j6cep8ag8c2f4gcpovdohjjpg5', 0, '2017-04-21 07:31:57'),
(434, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'blaf0ck2785sal9qguth66k184', 0, '2017-04-21 07:38:18'),
(435, 'unknown', 'unknown', 'Chrome', 'Windows 8.1', 'c9d4ges6favcgna4agju3jfdu4', 1, '2017-04-22 03:03:46'),
(436, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'c46oo215g4qccl9foi4j7d6qa2', 0, '2017-04-21 08:31:54'),
(437, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'kag2imjspi00bingh9aa693ni5', 0, '2017-04-21 09:01:59'),
(438, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'tnteefs3a4qmf72qumjadeaa42', 0, '2017-04-21 09:31:53'),
(439, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'ejm608tgvqeufrd5l3bbuvsak0', 0, '2017-04-21 10:00:20'),
(440, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'v4jm824iq1sd2o5qeopvejhlp7', 0, '2017-04-21 10:31:45'),
(441, 'unknown', 'unknown', 'Firefox', 'Windows 7', '0caqtvvv3idrefe11pato457m7', 0, '2017-04-21 10:31:45'),
(442, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', '7as6nkmgggjgpmd1a1ich1vo42', 0, '2017-04-21 10:31:45'),
(443, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'qpv87il3ffgmuum7m1lh4i4cq7', 0, '2017-04-21 10:31:45'),
(444, 'unknown', 'unknown', 'Safari', 'iPad', 'q62i1qgp984caj8dvjpcqoee64', 0, '2017-04-21 10:31:45'),
(445, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', '2puj4lmntq537ffoie6pm6oj93', 0, '2017-04-21 10:31:45'),
(446, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '4f7jk8223b5vbn3vbe8h7dni52', 0, '2017-04-21 10:31:45'),
(447, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'th52oljuu238uv4voei3qi11t7', 0, '2017-04-21 10:31:45'),
(448, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'mpsvg5ue5cecd30gqv22hgg661', 0, '2017-04-21 10:31:45'),
(449, 'unknown', 'unknown', 'Handheld Browser', 'Android', 'vr9nlof62ob7egvgdmqlqsrbf3', 0, '2017-04-21 10:31:45'),
(450, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', '8eqaird6l1e219luaafnq70so5', 0, '2017-04-21 10:31:45'),
(451, 'unknown', 'unknown', 'Chrome', 'Windows XP', 'h3dol7an1ohdghgea28oc0nk56', 0, '2017-04-21 10:31:45'),
(452, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', '6qsk49eqgqsjepdakjq724lag1', 0, '2017-04-21 10:31:45'),
(453, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '1g3ug5bp7l9tp809sufqg84pa7', 0, '2017-04-21 11:31:06'),
(454, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'f1oj8d5jevrl4lv4ap6vsuv2m5', 0, '2017-04-21 12:02:04'),
(455, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'b154hn2a80h2agvfus30mll6f6', 0, '2017-04-21 12:02:04'),
(456, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '7moo6rd5jb6k6a0vhnk5r84hq3', 0, '2017-04-21 12:31:36'),
(457, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'vutiddhnshv2phn23aacpr2g54', 0, '2017-04-21 13:01:35'),
(458, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'ou6om40feduslapld8qqcesvf3', 0, '2017-04-21 13:31:12'),
(459, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'uc4um8c4i4ccm7k3tnua46nkh1', 0, '2017-04-21 14:01:17'),
(460, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'j8th30jf20qvvbfm80smmmjpu1', 0, '2017-04-21 14:30:59'),
(461, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'tqurd14t2cieh0qmqi3tu2g8p1', 0, '2017-04-21 15:01:52'),
(462, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'vedptuu0cedser89g83ga7n5a4', 0, '2017-04-21 15:31:20'),
(463, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '79rugj9up3qo9kdn12cfl5m140', 0, '2017-04-21 16:01:16'),
(464, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'jgljetv480h5jlu8ativ7ml7v6', 0, '2017-04-21 16:31:09'),
(465, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'eia1urhspesf7guj2laesi6me6', 0, '2017-04-21 17:00:50'),
(466, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '8g8ekr93091des0u5cj5bpic30', 0, '2017-04-21 17:30:29'),
(467, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '79scpmthi4afu7n4j9vb79i534', 0, '2017-04-21 18:00:19'),
(468, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '2ecnhi2li4su6j0blkpet5bd72', 0, '2017-04-21 18:31:05'),
(469, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'p4os3t4gclk54enrhccr05lhq6', 0, '2017-04-21 19:02:48'),
(470, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'd30btv9vi5mpdho3d7h4od6v24', 0, '2017-04-21 19:12:31'),
(471, 'unknown', 'unknown', 'Firefox', 'Windows 7', 'vq71cls1kiqmtlm31ujiml1or6', 0, '2017-04-21 19:17:49'),
(472, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'ce90k9j54mabdbjvbouc6l10h7', 0, '2017-04-21 19:17:49'),
(473, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '7j7jql023m8a8r0iqdc4rsme20', 0, '2017-04-21 19:17:49'),
(474, 'unknown', 'unknown', 'Safari', 'iPad', '908d63g69rdkq0luu4b04kj316', 0, '2017-04-21 19:17:49'),
(475, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'gs750oifnu59loukl88d7ouos6', 0, '2017-04-21 19:17:49'),
(476, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'jn7lbcoud99obn1ngr38b3q980', 0, '2017-04-21 19:17:49'),
(477, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'ma1f005egbb25n28sq46rusrb7', 0, '2017-04-21 19:33:02'),
(478, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'k8fcclvp894548n5vre8gsm1p7', 0, '2017-04-21 19:33:02'),
(479, 'unknown', 'unknown', 'Handheld Browser', 'Android', 'd4s91jham76lk8quu7kvgfot53', 0, '2017-04-21 19:33:02'),
(480, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'jv26l07kvo0e2jabenc3df8po0', 0, '2017-04-21 19:33:02'),
(481, 'unknown', 'unknown', 'Chrome', 'Windows XP', 'phiud2ps6ivk23244tdg990e50', 0, '2017-04-21 19:33:02'),
(482, 'unknown', 'unknown', 'Internet Explorer', 'Windows Vista', 'd12fi8bvc1gqed61fh8a7mmpr5', 0, '2017-04-21 19:33:02'),
(483, 'unknown', 'unknown', 'Firefox', 'Windows 7', 'fqkgcbve9vbtcbc26uhf86fkn4', 0, '2017-04-21 19:33:02'),
(484, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'v5k5n8ehj5n13g3lnaupu2vtq3', 0, '2017-04-21 19:43:16'),
(485, 'unknown', 'unknown', 'Chrome', 'Windows 8', 'cp07vomll2etq341h8ihdsug41', 0, '2017-04-21 20:03:33'),
(486, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'udv0o878cdvhe7o8p4t60otlj0', 0, '2017-04-21 20:33:17'),
(487, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '5pa9bee0tp69l25527v8e9lco0', 0, '2017-04-21 21:02:22'),
(488, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'd425nr6d6srkgmt2fo5i0ibiu0', 0, '2017-04-21 21:32:34'),
(489, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'rblugua3c9ohd05n6eus4uj717', 0, '2017-04-21 22:02:25'),
(490, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'u5qikd585bj756ulrq8u97j600', 0, '2017-04-21 22:32:17'),
(491, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'ivq57fg1anegnif9gtsnumq8i3', 0, '2017-04-21 22:39:01'),
(492, 'unknown', 'unknown', 'Chrome', 'Windows 8.1', 'nji2ccs0fdcgt2nn6990g07jj3', 0, '2017-04-21 23:02:06'),
(493, 'unknown', 'unknown', 'Handheld Browser', 'Android', 'oivj23ket7fcefnq8kaliqhsr2', 0, '2017-04-21 22:47:09'),
(494, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'o94qt0gsi7138ieuvk9ff27kf6', 0, '2017-04-21 23:31:53'),
(495, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '7ikkalf6keuumedcintsli5lh3', 0, '2017-04-22 00:01:48'),
(496, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '9hdebob7kbulj03pn8umlof766', 0, '2017-04-22 00:30:32'),
(497, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '58cus7kvnkvto0vulfjj0qu0a1', 0, '2017-04-22 01:00:18'),
(498, 'unknown', 'unknown', 'Handheld Browser', 'iPhone', 'cd6g7reg20qerj89lri9tt6cd7', 0, '2017-04-22 01:09:12'),
(499, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'bt9t6g5b2auj8oa4c2grsfshp6', 0, '2017-04-22 01:15:29'),
(500, 'unknown', 'unknown', 'Firefox', 'Windows 7', 'qloibm0m5gs90vdje7582g4f52', 1, '2017-04-22 03:07:43'),
(501, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', 'fhcch3dosdauafpcch8ec632j4', 0, '2017-04-22 02:07:39'),
(502, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '03sotd42hmti655lbpcm6cnoa1', 0, '2017-04-22 02:12:41'),
(503, 'unknown', 'unknown', 'Chrome', 'Windows 7', '17bg6b1q6vc8t1kur7amrsbrv0', 0, '2017-04-22 02:30:58'),
(504, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '8bctqk0eu4q86aqvenfpkdvgi6', 0, '2017-04-22 02:44:08'),
(505, 'unknown', 'unknown', 'Handheld Browser', 'Android', '1stu2slukc9gs2k1mbbh2686d4', 0, '2017-04-22 03:07:31'),
(506, 'unknown', 'unknown', 'Unknown Browser', 'Unknown OS Platform', '0ou489r44qqt808hhpi026ue24', 1, '2017-04-22 03:07:31');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buy_image`
--
ALTER TABLE `buy_image`
  ADD CONSTRAINT `buy_image_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `buy` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `product` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
