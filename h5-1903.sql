-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-04 12:52:30
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `h5-1903`
--

-- --------------------------------------------------------

--
-- 表的结构 `db_users`
--

CREATE TABLE `db_users` (
  `id` int(6) NOT NULL COMMENT '用户ID"唯一"',
  `username` varchar(8) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '用户密码',
  `phone` varchar(11) NOT NULL COMMENT '手机号',
  `addr` varchar(100) NOT NULL COMMENT '收货地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `db_users`
--

INSERT INTO `db_users` (`id`, `username`, `password`, `phone`, `addr`) VALUES
(1, 'zhangsan', '123456', '13888888889', '浙江杭州市江干区九堡镇xxxx'),
(2, '李四', '123456', '18867761051', '浙江省温州市苍南县马站镇桥头村77号'),
(3, '王五', '123456', '18867761052', '1231231231');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `id` int(6) NOT NULL COMMENT '商品ID',
  `title` varchar(150) NOT NULL COMMENT '商品名称',
  `price` float NOT NULL COMMENT '商品价格',
  `num` int(11) NOT NULL COMMENT '库存',
  `pic` varchar(150) NOT NULL COMMENT '商品图片',
  `details` varchar(200) NOT NULL COMMENT '商品详情'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `num`, `pic`, `details`) VALUES
(1, '绿联（UGREEN）HDMI转VGA线转换器带音频口 高清视...', 30, 58, '[{"small":"../img/shop1-small.jpg"},{"big":"../img/shop1-big.jpg"}]', '京东正规渠道购买，正品保障，欢迎咨询'),
(2, '奥克斯（AUX）正1.5匹 变频冷暖 制冷 壁挂式空调挂机(KFR-35GW/BpHJD+3)', 2000, 2449, '[{"small":"../img/shop2-small.jpg"},{"big":"../img/shop2-big.jpg"}]', '1.5匹 【变频大单机】 ，基本全新，制冷热效果好，质保五年'),
(3, '康佳（KONKA）170升 双门冰箱 金属面板 保鲜静音（银色）BCD-170TA', 700, 999, '[{"small":"../img/shop3-small.jpg"},{"big":"../img/shop3-big.jpg"}]', '洗衣机一直自用，机子很新，平时爱惜洗涤效果非常好，因想换一款带烘干的，所以转让非诚勿扰。不包邮！'),
(18, '九阳（Joyoung）料理机多功能家用榨汁机搅拌机（可干磨、制作婴儿辅食、奶昔）JYL-C50T', 50, 88, '[{"small":"../img/shop11-small.jpg"},{"big":"../img/shop11-big.jpg"}]', '榨汁搅拌多功能料理机C50T'),
(17, '小熊（Bear）电热饭盒 三层不锈钢蒸煮可插电上班族热饭器加热饭盒智能预约定时保温抽真空2升 DFH-A20D1', 100, 139, '[{"small":"../img/shop10-small.jpg"},{"big":"../img/shop10-big.jpg"}]', '预约定时三层不锈钢（智能款） 只用过一次，加热饭菜很方便，还可以蒸饭，很适合上班族哦'),
(16, '美的（Midea）吸尘器SC861A家用手持立式吸尘器二合一强劲吸力', 100, 129, '[{"small":"../img/shop9-small.jpg"},{"big":"../img/shop9-big.jpg"}]', '【爆款】小巧大吸力 '),
(15, 'TCL TFS16D 电风扇/空气循环/落地扇/家用静音风扇/五叶大风量风扇定时机械', 70, 79, '[{"small":"../img/shop8-small.jpg"},{"big":"../img/shop8-big.jpg"}]', '五叶定时-机械款 深圳包邮'),
(14, '戴森(Dyson)扫地机Dyson 360 Eye 戴森智能吸尘机器人家用吸尘器全自动RB01紫红色', 3600, 6490, '[{"small":"../img/shop7-small.jpg"},{"big":"../img/shop7-big.jpg"}]', '紫红色单机 现货单品'),
(13, '2019新款周岁生日布置桌围纱儿童餐椅裙宝宝餐椅装饰tutu纱桌裙甜品台桌布 粉红色 深粉 高40长100cm', 45, 48, '[{"small":"../img/shop6-small.jpg"},{"big":"../img/shop6-big.jpg"}]', '粉红色 深粉 高40长100cm 实物颜色（见图二，三，四）比购买时颜色更好看'),
(11, '男版模特人台96A转卖', 260, 390, '[{"small":"../img/shop4-small.jpg"},{"big":"../img/shop4-big.jpg"}]', '去年夏天全新买入 一共有五个 底座不是滑轮型'),
(12, '移动宽带 华为光猫', 55, 80, '[{"small":"../img/shop5-small.jpg"},{"big":"../img/shop5-big.jpg"}]', '华为光猫带电源'),
(19, '东菱（Donlim）料理机打蛋器手持家用电动打奶油机烘焙搅拌机 HM-955', 30, 40, '[{"small":"../img/shop12-small.jpg"},{"big":"../img/shop12-big.jpg"}]', '迷你式 5档调速'),
(20, '智云Smooth4手机稳定器 zhiyun手持云台 智云稳定器 三轴防抖稳定器 手机云台 手持稳定器 暗夜黑+三脚架', 550, 699, '[{"small":"../img/shop13-small.jpg"},{"big":"../img/shop13-big.jpg"}]', '暗夜黑 三脚架 买来没用过几次，对自己用处不大，转给有需要的人吧'),
(21, '【京东好货】绿帆（lvfan）小米8背夹电池小米6X充电宝8SE无线移动电源手机壳 小米8【升级大容量】经典黑', 50, 128, '[{"small":"../img/shop14-small.jpg"},{"big":"../img/shop14-big.jpg"}]', '小米8【经典黑】绿帆原装正品'),
(22, '飞利浦（PHILIPS）充电宝超薄小巧20000毫安大容量快充迷你便携苹果安卓手机通用数显移动电源 黑色【10000毫安大容量】+2A快充插头', 130, 169, '[{"small":"../img/shop15-small.jpg"},{"big":"../img/shop15-big.jpg"}]', '黑色【10000毫安大容量】 2A快充插头'),
(23, '【已验机】小米 红米 6 3+32G 樱花粉 全网通', 530, 999, '[{"small":"../img/shop16-small.jpg"},{"big":"../img/shop16-big.jpg"}]', '【已验机】'),
(24, '【已验机】小米MI 小米8SE 6G+64G 红色 全网通 全面屏手机', 988, 1399, '[{"small":"../img/shop17-small.jpg"},{"big":"../img/shop17-big.jpg"}]', '【已验机】'),
(25, '【已验机】华为 HUAWEI Mate10 摩卡金 4G+64G 国行 全网通', 1315, 1699, '[{"small":"../img/shop18-small.jpg"},{"big":"../img/shop18-big.jpg"}]', '【已验机】');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_users`
--
ALTER TABLE `db_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `db_users`
--
ALTER TABLE `db_users`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT '用户ID"唯一"', AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT '商品ID', AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
