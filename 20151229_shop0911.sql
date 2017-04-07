-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: shop0911
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `php41_attribute`
--

DROP TABLE IF EXISTS `php41_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `php41_attribute` (
  `attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名称',
  `type_id` smallint(5) unsigned NOT NULL COMMENT '对应类型id',
  `attr_is_sel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:唯一 1:多选',
  `attr_write_mod` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:手工  1:下拉列表选择',
  `attr_sel_opt` varchar(100) NOT NULL DEFAULT '' COMMENT '多选情况被选取的项目信息，多个值彼此使用,逗号分隔',
  PRIMARY KEY (`attr_id`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='商品属性表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `php41_attribute`
--

LOCK TABLES `php41_attribute` WRITE;
/*!40000 ALTER TABLE `php41_attribute` DISABLE KEYS */;
INSERT INTO `php41_attribute` VALUES (2,'网络制式',1,0,0,''),(3,'尺寸体积',1,0,0,''),(4,'长度',1,0,0,''),(5,'宽度',1,0,0,''),(6,'操作系统',1,1,1,'android,ios,windows,塞班'),(7,'颜色',1,1,1,'蓝色,绿色,白色,粉色,金色,黑色'),(8,'笔记本尺寸',4,1,1,'11,12,13,14,15'),(9,'处理器类型',4,0,0,''),(10,'内存',4,1,1,'4g,8g,16g,32g'),(11,'颜色',4,1,1,'红色,白色,黑色,灰色');
/*!40000 ALTER TABLE `php41_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `php41_auth`
--

DROP TABLE IF EXISTS `php41_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `php41_auth` (
  `auth_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(20) NOT NULL COMMENT '名称',
  `auth_pid` smallint(6) unsigned NOT NULL COMMENT '父id',
  `auth_c` varchar(32) NOT NULL DEFAULT '' COMMENT '控制器',
  `auth_a` varchar(32) NOT NULL DEFAULT '' COMMENT '操作方法',
  `auth_path` varchar(32) NOT NULL DEFAULT '' COMMENT '全路径',
  `auth_level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '级别',
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `php41_auth`
--

LOCK TABLES `php41_auth` WRITE;
/*!40000 ALTER TABLE `php41_auth` DISABLE KEYS */;
INSERT INTO `php41_auth` VALUES (101,'商品管理',0,'','','101',0),(102,'订单管理',0,'','','102',0),(103,'权限管理',0,'','','103',0),(104,'商品列表',101,'Goods','showlist','101-104',1),(105,'添加商品',101,'Goods','tianjia','101-105',1),(106,'商品分类',101,'Category','showlist','101-106',1),(107,'订单列表',102,'Order','showlist','102-107',1),(108,'查询订单',102,'Order','look','102-108',1),(109,'订单打印',102,'Order','dayin','102-109',1),(110,'管理员列表',103,'Admin','showlist','103-110',1),(111,'角色列表',103,'Role','showlist','103-111',1),(112,'权限列表',103,'Auth','showlist','103-112',1),(118,'会员管理',0,'','','118',0),(119,'会员列表',118,'User','showlist','118-119',1),(120,'商品品牌',101,'Brand','showlist','101-120',1),(121,'商品类型',101,'Type','showlist','101-121',1);
/*!40000 ALTER TABLE `php41_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `php41_category`
--

DROP TABLE IF EXISTS `php41_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `php41_category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `cat_name` varchar(32) NOT NULL COMMENT '分类名称',
  `cat_pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `cat_path` varchar(32) NOT NULL DEFAULT '' COMMENT '全路径',
  `cat_level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '等级',
  PRIMARY KEY (`cat_id`),
  KEY `cat_pid` (`cat_pid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='商品分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `php41_category`
--

LOCK TABLES `php41_category` WRITE;
/*!40000 ALTER TABLE `php41_category` DISABLE KEYS */;
INSERT INTO `php41_category` VALUES (1,'数字商品',0,'1',0),(2,'家用电器',0,'2',0),(3,'手机数码',0,'3',0),(4,'电脑办公',0,'4',0),(5,'家具厨具',0,'5',0),(6,'服装鞋帽',0,'6',0),(7,'电子书',1,'1-7',1),(8,'数字音乐',1,'1-8',1),(9,'音像',1,'1-9',1),(10,'大家电',2,'2-10',1),(11,'生活电器',2,'2-11',1),(12,'免费',7,'1-7-12',2),(13,'小说',7,'1-7-13',2),(14,'文学',7,'1-7-14',2),(15,'经营',7,'1-7-15',2),(16,'电视',10,'2-10-16',2),(17,'空调',10,'2-10-17',2),(18,'冰箱',10,'2-10-18',2),(19,'饮水机',11,'2-11-19',2),(20,'空气净化器',11,'2-11-20',2),(21,'国产手机',3,'3-21',1),(22,'外国手机',3,'3-22',1),(23,'曲面手机',22,'3-22-23',2),(24,'大屏手机',22,'3-22-24',2),(25,'老年机',21,'3-21-25',2);
/*!40000 ALTER TABLE `php41_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `php41_goods`
--

DROP TABLE IF EXISTS `php41_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `php41_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_name` varchar(256) NOT NULL COMMENT '商品名称',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价格',
  `goods_shop_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '本店价格',
  `goods_number` smallint(6) NOT NULL DEFAULT '1' COMMENT '商品数量',
  `goods_weight` smallint(6) NOT NULL DEFAULT '0' COMMENT '商品重量',
  `cat_id` mediumint(9) NOT NULL DEFAULT '0' COMMENT '商品分类',
  `brand_id` mediumint(9) NOT NULL DEFAULT '0' COMMENT '商品品牌',
  `type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类型id',
  `goods_big_logo` char(100) NOT NULL DEFAULT '' COMMENT '商品大图片',
  `goods_small_logo` char(100) NOT NULL DEFAULT '' COMMENT '商品缩略图',
  `goods_introduce` text COMMENT '商品介绍',
  `is_sale` enum('上架','下架') NOT NULL DEFAULT '上架' COMMENT '上架，下架',
  `is_rec` enum('推荐','不推荐') NOT NULL DEFAULT '不推荐' COMMENT '推荐与否',
  `is_hot` enum('热销','不热销') NOT NULL DEFAULT '不热销' COMMENT '热销与否',
  `is_new` enum('新品','不新品') NOT NULL DEFAULT '不新品' COMMENT '新品与否',
  `add_time` int(11) NOT NULL COMMENT '添加信息时间',
  `upd_time` int(11) NOT NULL COMMENT '修改信息时间',
  `is_del` enum('删除','不删除') NOT NULL DEFAULT '不删除' COMMENT '删除与否',
  PRIMARY KEY (`goods_id`),
  KEY `goods_shop_price` (`goods_shop_price`),
  KEY `goods_price` (`goods_price`),
  KEY `cat_id` (`cat_id`),
  KEY `brand_id` (`brand_id`),
  KEY `add_time` (`add_time`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `php41_goods`
--

LOCK TABLES `php41_goods` WRITE;
/*!40000 ALTER TABLE `php41_goods` DISABLE KEYS */;
INSERT INTO `php41_goods` VALUES (1,'htc_one',2000.00,0.00,1,102,0,0,0,'','','&lt;p&gt;htc_one is &lt;span style=&quot;font-size: 24px; color: rgb(255, 0, 0);&quot;&gt;okokok&lt;/span&gt;okoko&lt;br/&gt;&lt;/p&gt;','上架','不推荐','不热销','不新品',1450688928,1450688928,'不删除'),(2,'htc_two&lt;h1&gt;welcome&lt;/h1&gt;',2100.00,0.00,1,110,0,0,0,'','','&lt;p&gt;good good good&lt;br/&gt;&lt;/p&gt;','上架','不推荐','不热销','不新品',1450689767,1450689767,'不删除'),(3,'htc_three',1200.00,0.00,1,120,0,0,0,'','','<p>okokoko<br/></p>','上架','不推荐','不热销','不新品',1450690231,1450690231,'不删除'),(4,'htc_four',2400.00,0.00,1,104,0,0,0,'','','&lt;p&gt;four is very &lt;span style=&quot;font-size: 24px; color: rgb(255, 0, 0);&quot;&gt;okoko&lt;/span&gt;kok&lt;br/&gt;&lt;/p&gt;','上架','不推荐','不热销','不新品',1450690625,1450690625,'不删除'),(5,'htc_five',2500.00,0.00,1,105,0,0,0,'','','&lt;p&gt;this &amp;lt;script&amp;gt;alert(&amp;#39;haha&amp;#39;)&amp;lt;/script&amp;gt;goods is okokokok&lt;br/&gt;&lt;/p&gt;','上架','不推荐','不热销','不新品',1450691171,1450691171,'不删除'),(6,'htc_six',2600.00,0.00,1,106,0,0,0,'','','&lt;p&gt;this &lt;span style=&quot;font-size: 24px; color: rgb(255, 0, 0);&quot;&gt;is&lt;/span&gt; okokok&lt;/p&gt;&lt;script&gt;alert(\'okok\')&lt;/script&gt;&lt;p&gt;okokok&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','上架','不推荐','不热销','不新品',1450691269,1450691269,'不删除'),(7,'htc_seven',2700.00,0.00,1,107,0,0,0,'','','<p>this is very good<br/></p>','上架','不推荐','不热销','不新品',1450691794,1450691794,'不删除'),(8,'htc_eight',2800.00,0.00,1,108,0,0,0,'','','<p>this is very good<br/></p>','上架','不推荐','不热销','不新品',1450691861,1450691861,'不删除'),(9,'nokia_one',3100.00,0.00,1,103,0,0,0,'','','<p>okokslkdlskdlskdlsd<br/></p>','上架','不推荐','不热销','不新品',1450692201,1450692201,'不删除'),(10,'nokia_two',3200.00,0.00,1,102,0,0,0,'','','<p>lskdkl</p><p>skdlskdlsd<br/></p><p></p>','上架','不推荐','不热销','不新品',1450692259,1450692259,'不删除'),(11,'nokia_three',3300.00,0.00,1,103,0,0,0,'','','<p>lskk</p><p>dlskdlskdl<br /></p><p></p>','上架','不推荐','不热销','不新品',1450693163,1450693163,'不删除'),(12,'nokia_four',3400.00,0.00,1,104,0,0,0,'','','sdksldkslkdsld<br />','上架','不推荐','不热销','不新品',1450693226,1450693226,'不删除'),(13,'heimei01',2000.00,0.00,1,0,0,0,0,'./Common/Uploads/2015-12-23/567a08df527cf.jpg','','','上架','不推荐','不热销','不新品',1450838239,1450838239,'不删除'),(14,'heimei02',2100.00,0.00,1,0,0,0,0,'./Common/Uploads/2015-12-23/567a099e4f89c.jpg','','','上架','不推荐','不热销','不新品',1450838430,1450838430,'不删除'),(15,'heimei03',2300.00,0.00,1,0,0,0,0,'./Common/Uploads/2015-12-23/567a0ba8bfba3.jpg','','','上架','不推荐','不热销','不新品',1450838952,1450838952,'不删除'),(16,'heimei04',2400.00,0.00,1,0,0,0,0,'./Common/Uploads/2015-12-23/567a0c166d149.jpg','./Common/Uploads/2015-12-23/small_567a0c166d149.jpg','','上架','不推荐','不热销','不新品',1450839062,1450839062,'不删除'),(17,'heimei05',2500.00,0.00,1,0,0,0,0,'','','','上架','不推荐','不热销','不新品',1450841185,1450841185,'不删除'),(18,'heimei06',2600.00,0.00,1,0,0,0,0,'','','','上架','不推荐','不热销','不新品',1450841225,1450841225,'不删除'),(19,'heimei06',2600.00,0.00,1,0,0,0,0,'','','','上架','不推荐','不热销','不新品',1450841387,1450841387,'不删除'),(20,'heimei06',2600.00,0.00,1,0,0,0,0,'','','','上架','不推荐','不热销','不新品',1450841846,1450841846,'不删除'),(21,'heimei07',2700.00,0.00,1,0,0,0,0,'','','','上架','不推荐','不热销','不新品',1450842068,1450842068,'不删除'),(22,'heimei09',2900.00,0.00,1,0,0,0,0,'','','','上架','不推荐','不热销','不新品',1450842131,1450842131,'不删除'),(23,'heimei10',3100.00,0.00,1,0,0,0,0,'','','','上架','不推荐','不热销','不新品',1450842423,1450842423,'不删除'),(24,'heimei13',3300.00,0.00,1,0,0,0,0,'./Common/Uploads/2015-12-23/567a46ff2a881.jpg','./Common/Uploads/2015-12-23/small_567a46ff2a881.jpg','','上架','不推荐','不热销','不新品',1450854142,1450854142,'删除'),(25,'samsung0a',4156.00,0.00,1,0,0,0,0,'','','&lt;p&gt;samsung is&lt;span style=&quot;font-size:24px;color:rgb(255,0,0);&quot;&gt; oko&lt;/span&gt;ko&lt;/p&gt;&lt;p&gt;&lt;img style=&quot;width: 146px; height: 134px;&quot; alt=&quot;1_G_1240902890755.jpg&quot; src=&quot;/ueditor/php/upload/image/20151223/1450858283892479.jpg&quot; title=&quot;1450858283892479.jpg&quot; height=&quot;134&quot; width=&quot;146&quot;/&gt;&lt;/p&gt;','上架','不推荐','不热销','不新品',1450857645,1450858288,'删除'),(26,'samsung02',4200.00,0.00,1,0,0,0,0,'./Common/Uploads/2015-12-23/567a5b7b009da.jpg','./Common/Uploads/2015-12-23/small_567a5b7b009da.jpg','&lt;p&gt;sfddsfdsfsdfs&lt;br/&gt;&lt;/p&gt;','上架','不推荐','不热销','不新品',1450859363,1450859386,'不删除'),(27,'samsung03',4300.00,0.00,1,0,0,0,0,'','','','上架','不推荐','不热销','不新品',1450861267,1450861267,'删除'),(28,'samsung05',4500.00,0.00,1,0,0,0,0,'./Common/Uploads/2015-12-23/567a6967333e6.jpg','./Common/Uploads/2015-12-23/small_567a6967333e6.jpg','','上架','不推荐','不热销','不新品',1450862950,1450863420,'不删除'),(29,'samsung06',4600.00,0.00,1,0,0,0,1,'./Common/Uploads/2015-12-27/567f4c6615423.jpg','./Common/Uploads/2015-12-27/small_567f4c6615423.jpg','sdsdsd<br />','上架','不推荐','不热销','不新品',1451183205,1451183205,'不删除'),(30,'samsung07',4700.00,0.00,1,0,0,0,0,'./Common/Uploads/2015-12-27/567f4cb863cd9.jpg','./Common/Uploads/2015-12-27/small_567f4cb863cd9.jpg','dddsadsf<br />','上架','不推荐','不热销','不新品',1451183288,1451183288,'不删除'),(31,'samsung11',5900.00,0.00,1,0,0,0,4,'./Common/Uploads/2015-12-27/567f8e5683dad.jpg','./Common/Uploads/2015-12-27/small_567f8e5683dad.jpg','','上架','不推荐','不热销','不新品',1451200086,1451200448,'不删除'),(32,'huawei01',2100.00,0.00,1,0,2,0,0,'./Common/Uploads/2015-12-27/567fab84b0da2.jpg','./Common/Uploads/2015-12-27/small_567fab84b0da2.jpg','','上架','不推荐','不热销','不新品',1451207556,1451210552,'不删除');
/*!40000 ALTER TABLE `php41_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `php41_goods_attr`
--

DROP TABLE IF EXISTS `php41_goods_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `php41_goods_attr` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id',
  `attr_id` mediumint(8) unsigned NOT NULL COMMENT '属性id',
  `attr_value` varchar(64) NOT NULL DEFAULT '' COMMENT '属性对应的值',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='商品-属性关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `php41_goods_attr`
--

LOCK TABLES `php41_goods_attr` WRITE;
/*!40000 ALTER TABLE `php41_goods_attr` DISABLE KEYS */;
INSERT INTO `php41_goods_attr` VALUES (1,29,2,'3G'),(2,29,3,'12'),(3,29,4,'11'),(4,29,5,'4'),(5,29,6,'android'),(6,29,6,'windows'),(7,29,6,'ios'),(8,29,7,'蓝色'),(9,29,7,'绿色'),(41,31,11,'黑色'),(40,31,10,'16g'),(39,31,10,'8g'),(38,31,9,'I7'),(37,31,8,'12'),(36,31,8,'11');
/*!40000 ALTER TABLE `php41_goods_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `php41_goods_cat`
--

DROP TABLE IF EXISTS `php41_goods_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `php41_goods_cat` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id',
  `cat_id` mediumint(8) unsigned NOT NULL COMMENT '分类id',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品-分类，关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `php41_goods_cat`
--

LOCK TABLES `php41_goods_cat` WRITE;
/*!40000 ALTER TABLE `php41_goods_cat` DISABLE KEYS */;
INSERT INTO `php41_goods_cat` VALUES (12,32,10),(11,32,16),(13,32,10),(14,32,16);
/*!40000 ALTER TABLE `php41_goods_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `php41_goods_pics`
--

DROP TABLE IF EXISTS `php41_goods_pics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `php41_goods_pics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id',
  `pics_big` char(100) NOT NULL COMMENT '相册原图',
  `pics_small` char(100) NOT NULL COMMENT '相册缩略图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='商品相册表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `php41_goods_pics`
--

LOCK TABLES `php41_goods_pics` WRITE;
/*!40000 ALTER TABLE `php41_goods_pics` DISABLE KEYS */;
INSERT INTO `php41_goods_pics` VALUES (1,21,'./Common/Pics/2015-12-23/567a17d48ca55.jpg','./Common/Pics/2015-12-23/small_567a17d48ca55.jpg'),(2,21,'./Common/Pics/2015-12-23/567a17d4920fb.jpg','./Common/Pics/2015-12-23/small_567a17d4920fb.jpg'),(3,21,'./Common/Pics/2015-12-23/567a17d49ddf2.png','./Common/Pics/2015-12-23/small_567a17d49ddf2.png'),(4,22,'./Common/Pics/2015-12-23/567a1813b9759.jpg','./Common/Pics/2015-12-23/small_567a1813b9759.jpg'),(5,22,'./Common/Pics/2015-12-23/567a1813bff81.jpg','./Common/Pics/2015-12-23/small_567a1813bff81.jpg'),(6,22,'./Common/Pics/2015-12-23/567a1813c78dd.jpg','./Common/Pics/2015-12-23/small_567a1813c78dd.jpg'),(7,23,'./Common/Pics/2015-12-23/567a1937bd45c.jpg','./Common/Pics/2015-12-23/small_567a1937bd45c.jpg'),(8,23,'./Common/Pics/2015-12-23/567a1937c4603.jpg','./Common/Pics/2015-12-23/small_567a1937c4603.jpg'),(9,24,'./Common/Pics/2015-12-23/567a46ff3f30f.jpg','./Common/Pics/2015-12-23/small_567a46ff3f30f.jpg'),(10,24,'./Common/Pics/2015-12-23/567a46ff60adb.jpg','./Common/Pics/2015-12-23/small_567a46ff60adb.jpg'),(11,24,'./Common/Pics/2015-12-23/567a46ff6923a.jpg','./Common/Pics/2015-12-23/small_567a46ff6923a.jpg'),(16,28,'./Common/Pics/2015-12-23/567a69676d74d.jpg','./Common/Pics/2015-12-23/small_567a69676d74d.jpg'),(17,28,'./Common/Pics/2015-12-23/567a6967728e9.jpg','./Common/Pics/2015-12-23/small_567a6967728e9.jpg'),(15,28,'./Common/Pics/2015-12-23/567a69676a3c4.jpg','./Common/Pics/2015-12-23/small_567a69676a3c4.jpg'),(18,28,'./Common/Pics/2015-12-23/567a6b3cd0e3a.jpg','./Common/Pics/2015-12-23/small_567a6b3cd0e3a.jpg'),(19,28,'./Common/Pics/2015-12-23/567a6b3cd4cea.jpg','./Common/Pics/2015-12-23/small_567a6b3cd4cea.jpg'),(20,28,'./Common/Pics/2015-12-23/567a6b3cd82d5.jpg','./Common/Pics/2015-12-23/small_567a6b3cd82d5.jpg'),(21,30,'./Common/Pics/2015-12-27/567f4cb8a7627.png','./Common/Pics/2015-12-27/small_567f4cb8a7627.png'),(22,30,'./Common/Pics/2015-12-27/567f4cb8adc7c.jpg','./Common/Pics/2015-12-27/small_567f4cb8adc7c.jpg'),(23,31,'./Common/Pics/2015-12-27/567f8e56cd2ed.jpg','./Common/Pics/2015-12-27/small_567f8e56cd2ed.jpg'),(24,31,'./Common/Pics/2015-12-27/567f8e56ebd4d.jpg','./Common/Pics/2015-12-27/small_567f8e56ebd4d.jpg'),(25,31,'./Common/Pics/2015-12-27/567f8e5711d5f.jpg','./Common/Pics/2015-12-27/small_567f8e5711d5f.jpg');
/*!40000 ALTER TABLE `php41_goods_pics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `php41_manager`
--

DROP TABLE IF EXISTS `php41_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `php41_manager` (
  `mg_id` int(11) NOT NULL AUTO_INCREMENT,
  `mg_name` varchar(32) NOT NULL,
  `mg_pwd` varchar(32) NOT NULL,
  `add_time` int(10) unsigned NOT NULL COMMENT '时间',
  `mg_role_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '角色id',
  PRIMARY KEY (`mg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `php41_manager`
--

LOCK TABLES `php41_manager` WRITE;
/*!40000 ALTER TABLE `php41_manager` DISABLE KEYS */;
INSERT INTO `php41_manager` VALUES (1,'tom','123456',1323212345,50),(2,'xiaoming','123456',1312345324,51),(3,'admin','123456',1323456543,0);
/*!40000 ALTER TABLE `php41_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `php41_role`
--

DROP TABLE IF EXISTS `php41_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `php41_role` (
  `role_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL COMMENT '角色名称',
  `role_auth_ids` varchar(128) NOT NULL DEFAULT '' COMMENT '权限ids,1,2,5',
  `role_auth_ac` text COMMENT '控制器-操作方法,控制器-操作方法..',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `php41_role`
--

LOCK TABLES `php41_role` WRITE;
/*!40000 ALTER TABLE `php41_role` DISABLE KEYS */;
INSERT INTO `php41_role` VALUES (50,'主管','101,104','Goods-showlist'),(51,'经理','101,105,106,102,107,108','Goods-tianjia,Goods-category,Order-showlist,Order-look');
/*!40000 ALTER TABLE `php41_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `php41_type`
--

DROP TABLE IF EXISTS `php41_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `php41_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `type_name` varchar(32) NOT NULL COMMENT '类型名称',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商品类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `php41_type`
--

LOCK TABLES `php41_type` WRITE;
/*!40000 ALTER TABLE `php41_type` DISABLE KEYS */;
INSERT INTO `php41_type` VALUES (1,'手机'),(2,'音乐'),(3,'电影'),(4,'电脑'),(5,'相机'),(6,'摄像机'),(7,'化妆品');
/*!40000 ALTER TABLE `php41_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `php41_user`
--

DROP TABLE IF EXISTS `php41_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `php41_user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_name` varchar(32) NOT NULL COMMENT '会员名称',
  `user_email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  `user_pwd` char(32) NOT NULL COMMENT '密码',
  `openid` char(32) NOT NULL DEFAULT '' COMMENT 'qq登录的openid信息',
  `user_sex` enum('男','女','保密') NOT NULL DEFAULT '男' COMMENT '性别',
  `user_weight` smallint(6) NOT NULL DEFAULT '0' COMMENT '体重',
  `user_height` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '身高',
  `user_logo` varchar(128) NOT NULL DEFAULT '' COMMENT '头像',
  `user_tel` char(11) NOT NULL DEFAULT '' COMMENT '手机',
  `user_identify` char(18) NOT NULL DEFAULT '' COMMENT '身份号码',
  `user_check` enum('0','1') NOT NULL DEFAULT '0' COMMENT '是否激活, 0:未激活  1:已激活',
  `user_check_code` char(32) NOT NULL DEFAULT '' COMMENT '邮箱验证激活码',
  `add_time` int(11) NOT NULL COMMENT '注册时间',
  `is_del` enum('0','1') NOT NULL DEFAULT '0' COMMENT '是否删除, 0:正常  1:被删除',
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `user_tel` (`user_tel`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `php41_user`
--

LOCK TABLES `php41_user` WRITE;
/*!40000 ALTER TABLE `php41_user` DISABLE KEYS */;
INSERT INTO `php41_user` VALUES (1,'tom','tom@163.com','202cb962ac59075b964b07152d234b70','','男',0,0.00,'','','','0','',1451359655,'0'),(2,'bob','bob@sina.com','900150983cd24fb0d6963f7d28e17f72','','男',0,0.00,'','','','0','',1451360226,'0'),(3,'mary','mary@163.com','202cb962ac59075b964b07152d234b70','','男',0,0.00,'','','','0','',1451360331,'0'),(4,'yuehan','2226230644@qq.com','202cb962ac59075b964b07152d234b70','','男',0,0.00,'','','','0','eee3bf9750132b87badc36f2efa72020',1451372108,'0'),(5,'jim','2226230644@qq.com','202cb962ac59075b964b07152d234b70','','男',0,0.00,'','','','0','e2412e449af64cf5fa403fb8a6b304e5',1451372238,'0'),(6,'daxiong','2226230644@qq.com','202cb962ac59075b964b07152d234b70','','男',0,0.00,'','','','1','',1451372401,'0'),(7,'bier','2226230644@qq.com','202cb962ac59075b964b07152d234b70','','男',0,0.00,'','','','0','756ca8146050571cbb8bb59474874c45',1451373028,'0'),(8,'aobama','2226230644@qq.com','202cb962ac59075b964b07152d234b70','','男',0,0.00,'','','','1','',1451373089,'0');
/*!40000 ALTER TABLE `php41_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-29 18:36:52
