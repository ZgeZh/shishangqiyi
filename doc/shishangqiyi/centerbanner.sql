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

-- 导出  表 shishangqiyi.centerbanner 结构
CREATE TABLE IF NOT EXISTS `centerbanner` (
  `indexId` int(11) NOT NULL AUTO_INCREMENT,
  `korean` varchar(100) DEFAULT '0',
  `chinese` varchar(100) DEFAULT '0',
  `english` varchar(100) DEFAULT '0',
  `price` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`indexId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='中间广告图的详细信息。';

-- 正在导出表  shishangqiyi.centerbanner 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `centerbanner` DISABLE KEYS */;
INSERT IGNORE INTO `centerbanner` (`indexId`, `korean`, `chinese`, `english`, `price`) VALUES
	(1, '스커트처럼 연출되는 데일리 큐롯 팬츠', '时尚半身裙视觉感的裙裤产品', 'Checked Wrap Mini Skort', 'RMB 106'),
	(2, '★기획특가★ 9 color 베이직 기모 후드티', '★机会特价★ 9 color 基本毛呢帽子休闲衫', 'Unisex Basic Hooded Tee', 'RMB 110'),
	(3, '퍼 안감으로 따뜻하게 착용되는 레깅스 ', '绒毛内衬，暖和舒适的连身裤袜', 'Basic Fleece Leggings', 'RMB 73'),
	(4, '입는 순간 여성스러워지는 매력만점 슬림 니트', '穿上瞬间变女人味，魅力满分的修身针织衫', 'Cutout Neck Slim Fit Pullover', 'RMB 229'),
	(5, '남여공용♥ 티셔츠를 레이어드한듯한 루즈핏 맨투맨 ', '男女同款♥ 和T恤衫层叠式穿搭很适合的休闲宽松版型休闲衫', 'Unisex Letter Print Sweatshirt', 'RMB 229'),
	(6, '벨트 세트 구성인 레이어드 체크 원피스 :)', '腰带一套处理，适合层叠式穿搭的格子连衣裙:)', 'Checked Double Button Dress With Strap', 'RMB 198');
/*!40000 ALTER TABLE `centerbanner` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
