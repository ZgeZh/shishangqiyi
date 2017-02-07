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

-- 导出  表 shishangqiyi.cart 结构
CREATE TABLE IF NOT EXISTS `cart` (
  `idx` int(100) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `goodsid` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `english` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车物品信息';

-- 正在导出表  shishangqiyi.cart 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT IGNORE INTO `cart` (`idx`, `user`, `goodsid`, `img`, `icon`, `english`, `color`, `size`, `price`, `amount`) VALUES
	(1, 'zge', '6', '../css/img/imgDemo.jpg', '../css/img/icon_sprite.png', 'Basic Suit Trousers', '粉红色', 'M', '¥ 170', '4'),
	(2, 'zge', '7', '../css/img/imgDemo.jpg', '../css/img/icon_sprite.png', 'Basic Suit Trousers', '天蓝色', 'M', '¥ 170', '4'),
	(3, 'zge', '10', '../css/img/imgDemo.jpg', '../css/img/icon_sprite.png', 'Basic Suit Trousers', '天蓝色', 'M', '¥ 170', '4');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
