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

-- 导出  表 shishangqiyi.leftnav 结构
CREATE TABLE IF NOT EXISTS `leftnav` (
  `indexId` int(50) NOT NULL AUTO_INCREMENT,
  `title` varchar(10000) NOT NULL,
  `iconSrc` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`indexId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='主页左边导航栏数据';

-- 正在导出表  shishangqiyi.leftnav 的数据：~18 rows (大约)
/*!40000 ALTER TABLE `leftnav` DISABLE KEYS */;
INSERT IGNORE INTO `leftnav` (`indexId`, `title`, `iconSrc`) VALUES
	(1, '评论赢积分', 'css/img/new.gif'),
	(2, '最新商品', NULL),
	(3, '一周爆款', NULL),
	(4, '热卖商品', NULL),
	(5, '最佳口碑', NULL),
	(6, '上衣', NULL),
	(7, '衬衫&罩衫', NULL),
	(8, '外套', NULL),
	(9, '半身裙', NULL),
	(10, '连衣裙', NULL),
	(11, '裤装', 'css/img/top20off.png'),
	(12, '鞋&包', NULL),
	(13, '配饰', NULL),
	(14, '内衣', 'css/img/new.png'),
	(15, 'SUMMER', NULL),
	(16, '美妆', 'css/img/bottom50off.gif'),
	(17, '明星赞助', NULL),
	(18, '专题&活动', '666');
/*!40000 ALTER TABLE `leftnav` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
