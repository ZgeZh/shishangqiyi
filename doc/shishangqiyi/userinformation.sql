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

-- 导出  表 shishangqiyi.userinformation 结构
CREATE TABLE IF NOT EXISTS `userinformation` (
  `indexiId` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `telphone` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`indexiId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='注册的用户信息';

-- 正在导出表  shishangqiyi.userinformation 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `userinformation` DISABLE KEYS */;
INSERT IGNORE INTO `userinformation` (`indexiId`, `username`, `password`, `telphone`) VALUES
	(1, 'zge', '111', '111'),
	(2, 'ZgeZh', '111', '111'),
	(3, 'wqe', 'qwe', 'qweqw'),
	(4, 'zuiguo', '111', '111');
/*!40000 ALTER TABLE `userinformation` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
