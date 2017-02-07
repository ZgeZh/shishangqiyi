-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.5-10.0.14-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 shishangqiyi.goodsinfo 结构
CREATE TABLE IF NOT EXISTS `goodsinfo` (
  `indexId` int(225) NOT NULL AUTO_INCREMENT,
  `icon` varchar(100) NOT NULL,
  `korean` varchar(100) NOT NULL,
  `chinese` varchar(100) NOT NULL,
  `english` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`indexId`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='主页商品信息表';

-- 正在导出表  shishangqiyi.goodsinfo 的数据：~69 rows (大约)
/*!40000 ALTER TABLE `goodsinfo` DISABLE KEYS */;
INSERT IGNORE INTO `goodsinfo` (`indexId`, `icon`, `korean`, `chinese`, `english`, `price`, `image`) VALUES
	(1, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(2, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(3, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(4, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(5, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(6, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(7, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(8, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(9, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(10, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(11, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(12, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(13, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(14, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(15, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(16, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(17, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(18, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(19, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(20, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(21, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(22, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(23, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(24, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(25, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(26, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(27, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(28, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(29, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(30, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(31, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(32, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(33, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(34, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(35, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(36, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(37, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(38, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(39, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(40, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(41, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(42, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(43, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(44, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(45, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(46, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(47, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(48, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(49, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(50, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(51, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(52, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(53, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(54, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(55, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(56, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(57, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(58, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(59, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(60, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(61, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(62, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(63, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(64, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(65, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(66, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(67, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(68, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(69, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(70, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(71, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg'),
	(72, 'css/img/icon_sprite.png', '슬림한 핏으로 착용되는 심플한 슬랙스 :-)', '修身显瘦版型，简约的修身裤 :-)', 'Basic Suit Trousers', '¥ 170', 'css/img/imgDemo.jpg');
/*!40000 ALTER TABLE `goodsinfo` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
