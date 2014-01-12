-- MySQL dump 10.14  Distrib 5.5.34-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: august_development
-- ------------------------------------------------------
-- Server version	5.5.34-MariaDB

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
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,'rBEhVFIwJjUIAAAAAAE-qVpZvqwAADCdgF73-kAAT7B615.jpg','0d7ed513cbcfdf2dab819756d89982a9.jpg','2014-01-11 14:59:22','2014-01-11 14:59:22'),(2,'logo-201305.png','1a0d266fd04f214dbb7a94582d5a43b0.png','2014-01-11 15:04:36','2014-01-11 15:04:36'),(3,'52a2cc3ce6b82.jpg_n1.jpg','91e76e342b3b628d34899bfe7d99a30e.jpg','2014-01-11 15:37:15','2014-01-11 15:37:15'),(4,'T1E3V7XmhzXXb1upjX.jpg','509c6093d7753f579958497def76fe46.jpg','2014-01-12 05:32:15','2014-01-12 05:32:15');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpanel_ads`
--

DROP TABLE IF EXISTS `cpanel_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpanel_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `is_displayed` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpanel_ads`
--

LOCK TABLES `cpanel_ads` WRITE;
/*!40000 ALTER TABLE `cpanel_ads` DISABLE KEYS */;
INSERT INTO `cpanel_ads` VALUES (2,'home_right_bottom',300,300,'#','首页右下',1,'2014-01-12 07:20:13','2014-01-12 07:20:13');
/*!40000 ALTER TABLE `cpanel_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpanel_attachments`
--

DROP TABLE IF EXISTS `cpanel_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpanel_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpanel_attachments`
--

LOCK TABLES `cpanel_attachments` WRITE;
/*!40000 ALTER TABLE `cpanel_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpanel_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpanel_nodes`
--

DROP TABLE IF EXISTS `cpanel_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpanel_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpanel_nodes`
--

LOCK TABLES `cpanel_nodes` WRITE;
/*!40000 ALTER TABLE `cpanel_nodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpanel_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpanel_sections`
--

DROP TABLE IF EXISTS `cpanel_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpanel_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpanel_sections`
--

LOCK TABLES `cpanel_sections` WRITE;
/*!40000 ALTER TABLE `cpanel_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpanel_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpanel_settings`
--

DROP TABLE IF EXISTS `cpanel_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpanel_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpanel_settings`
--

LOCK TABLES `cpanel_settings` WRITE;
/*!40000 ALTER TABLE `cpanel_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpanel_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpanel_things`
--

DROP TABLE IF EXISTS `cpanel_things`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpanel_things` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `coupon_price` decimal(10,0) DEFAULT NULL,
  `master_pic_url` text COLLATE utf8_unicode_ci,
  `sub_pic_url` text COLLATE utf8_unicode_ci,
  `click_url` text COLLATE utf8_unicode_ci,
  `node_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpanel_things`
--

LOCK TABLES `cpanel_things` WRITE;
/*!40000 ALTER TABLE `cpanel_things` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpanel_things` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `malls`
--

DROP TABLE IF EXISTS `malls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `malls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `logo_url` text COLLATE utf8_unicode_ci,
  `mall_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malls`
--

LOCK TABLES `malls` WRITE;
/*!40000 ALTER TABLE `malls` DISABLE KEYS */;
INSERT INTO `malls` VALUES (1,'京东商城','http://www.jd.com','/uploads/attachments/140111/normal_aeb3ed1557007abeaee6126213e936eb.png','综合','2014-01-11 15:04:42','2014-01-11 15:04:42'),(2,'苏宁易购','http://www.suning.com/','http://img01.taobaocdn.com/bao/uploaded/i1/T1Od92Xg4hXXb1upjX.jpg','','2014-01-12 05:14:41','2014-01-12 05:55:43'),(3,'一号店','http://www.yhd.com/?ref=gl.1.1.4.[7292_5282792_1].0.E51W1E','http://img01.taobaocdn.com/bao/uploaded/i1/T11_ayXgxhXXb1upjX.jpg','','2014-01-12 05:27:02','2014-01-12 05:56:48'),(4,'亚马逊','http://www.amazon.cn/','http://img01.taobaocdn.com/bao/uploaded/i1/T1UeKwXoBoXXb1upjX.jpg','','2014-01-12 05:27:35','2014-01-12 05:35:32'),(6,'易迅网','http://www.yixun.com/','http://img01.taobaocdn.com/bao/uploaded/i1/T1SPt.Fm4eXXb1upjX.jpg','','2014-01-12 05:29:02','2014-01-12 05:57:35'),(7,'梦芭莎','http://www.moonbasa.com/','http://img01.taobaocdn.com/bao/uploaded/i1/T1dOJZXbFOXXb1upjX.jpg','','2014-01-12 05:29:26','2014-01-12 05:38:50'),(8,'唯品会','http://www.vip.com/','http://img01.taobaocdn.com/bao/uploaded/i1/T1tzZOFnVbXXb1upjX.jpg','','2014-01-12 05:29:47','2014-01-12 05:58:49'),(9,'乐蜂网','http://www.lefeng.com/','http://img01.taobaocdn.com/bao/uploaded/i1/T15POzXzVcXXb1upjX.jpg','','2014-01-12 05:30:42','2014-01-12 05:59:16'),(10,'韩都衣舍','http://www.handu.com/','http://img01.taobaocdn.com/bao/uploaded/i1/T1zw5DXXtmXXb1upjX.jpg','','2014-01-12 05:31:06','2014-01-12 06:00:10'),(11,'趣天麦网','http://www.m18.com','http://img01.taobaocdn.com/bao/uploaded/i1/T1kbJLXj0zXXb1upjX.jpg','','2014-01-12 05:31:39','2014-01-12 06:00:47'),(12,'母婴之家','http://www.muyingzhijia.com/index.aspx','/uploads/attachments/140112/normal_21395d04edab83fd2af88086852bfeda.jpg','','2014-01-12 05:32:16','2014-01-12 06:06:17'),(13,'凡客诚品','http://www.vancl.com/','http://img01.taobaocdn.com/bao/uploaded/i1/T1lrCjXk0hXXb1upjX.jpg','','2014-01-12 05:32:51','2014-01-12 06:07:40'),(14,'知我药妆','http://www.zhiwo.com/','http://img01.taobaocdn.com/bao/uploaded/i1/T1EMMYXdpbXXb1upjX.jpg','','2014-01-12 06:05:55','2014-01-12 06:06:57'),(15,'好乐买','http://www.okbuy.com/','http://img01.taobaocdn.com/bao/uploaded/i1/T1nHumXb06XXb1upjX.jpg','','2014-01-12 06:09:35','2014-01-12 06:09:35'),(16,'为为网','http://www.homevv.com/','http://img01.taobaocdn.com/bao/uploaded/i1/T11vB6Xk4GXXb1upjX.jpg','','2014-01-12 06:10:24','2014-01-12 06:10:24'),(17,'库巴购物','http://coo8.com','http://img01.taobaocdn.com/bao/uploaded/i1/T1SPtHXpNcXXb1upjX.jpg','','2014-01-12 06:12:13','2014-01-12 06:12:13');
/*!40000 ALTER TABLE `malls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodes`
--

DROP TABLE IF EXISTS `nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodes`
--

LOCK TABLES `nodes` WRITE;
/*!40000 ALTER TABLE `nodes` DISABLE KEYS */;
INSERT INTO `nodes` VALUES (1,'上衣',1,'女士上衣',1,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(2,'裤装',2,'女士裤装',1,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(3,'内衣',3,'女士内衣',1,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(4,'上装',1,'男士上装',2,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(5,'裤装',2,'男士裤装',2,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(6,'内衣',3,'男士内衣',2,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(7,'婴儿奶粉',1,'婴儿奶粉',3,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(8,'母婴用品',2,'母婴用品',3,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(9,'早教玩具',3,'早教玩具',3,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(10,'婴幼童装',4,'婴幼童装',3,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(11,'精品童鞋',5,'精品童鞋',3,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(12,'孕期用品',6,'孕期用品',3,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(13,'女包',1,'女包',4,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(14,'女鞋',2,'女鞋',4,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(15,'男包',3,'男包',4,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(16,'男鞋',4,'男鞋',4,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(17,'女士配饰',5,'女士配饰',4,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(18,'男士配饰',6,'男士配饰',4,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(19,'休闲零食',1,'休闲零食',5,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(20,'进口零食',2,'进口零食',5,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(21,'营养保健',3,'营养保健',5,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(22,'参茸滋补',4,'参茸滋补',5,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(23,'酒类',5,'酒类',5,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(24,'茶叶',6,'茶叶',5,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(25,'奶粉乳品',7,'奶粉乳品',5,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(26,'床上用品',1,'床上用品',6,'2014-01-11 14:39:16','2014-01-11 14:39:16'),(27,'家具饰品',2,'家具饰品',6,'2014-01-11 14:39:16','2014-01-11 14:39:16');
/*!40000 ALTER TABLE `nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130802082439'),('20130804085815'),('20130804093150'),('20130804142716'),('20130806164608'),('20131121101722'),('20131121103953'),('20131121104021'),('20131127132033'),('20131127140218'),('20131127154457'),('20131130091110'),('20131202164133'),('20131207025246'),('20131207043824'),('20131207052415'),('20131207060157'),('20131207070250'),('20140112063828');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'女装',1,'女装','2014-01-11 14:39:16','2014-01-11 14:39:16'),(2,'男装',2,'男装','2014-01-11 14:39:16','2014-01-11 14:39:16'),(3,'母婴',3,'母婴','2014-01-11 14:39:16','2014-01-11 14:39:16'),(4,'鞋包',4,'鞋包','2014-01-11 14:39:16','2014-01-11 14:39:16'),(5,'美食',5,'美食','2014-01-11 14:39:16','2014-01-11 14:39:16'),(6,'居家',6,'居家','2014-01-11 14:39:16','2014-01-11 14:39:16'),(7,'文体',7,'文体','2014-01-11 14:39:16','2014-01-11 14:39:16'),(8,'化妆品',8,'化妆品','2014-01-11 14:39:16','2014-01-11 14:39:16'),(9,'9块9',9,'9块9','2014-01-11 14:39:16','2014-01-11 14:39:16'),(10,'19块9',10,'19块9','2014-01-11 14:39:16','2014-01-11 14:39:16'),(11,'时间线',11,'时间线','2014-01-11 14:39:16','2014-01-11 14:39:16');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site_name','就是值得买','网站名称','2014-01-11 14:39:16','2014-01-11 14:39:16'),(2,'title','就是值得买','网站标题','2014-01-11 14:39:16','2014-01-11 14:39:16'),(3,'description','致力成为简单好用的网上导购网站，提供经济实际的网购体验。','网站描述','2014-01-11 14:39:16','2014-01-11 14:39:16'),(4,'keywords','导购,折扣,优惠,值得买,就是值得买','网站关键字','2014-01-11 14:39:16','2014-01-11 14:39:16');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `section_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'年货,雪地靴,打底裤,羽绒服,妈妈装,时尚女包,流行男鞋,',11,'2014-01-11 14:39:16','2014-01-12 07:52:31'),(14,'秋冬连衣裙, 保暖内衣,毛衣,毛呢外套,潮棉衣',1,'2014-01-12 07:48:11','2014-01-12 07:48:11');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `things`
--

DROP TABLE IF EXISTS `things`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `things` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `coupon_price` decimal(10,0) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `master_pic_url` text COLLATE utf8_unicode_ci,
  `sub_pic_url` text COLLATE utf8_unicode_ci,
  `click_url` text COLLATE utf8_unicode_ci,
  `mall_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `things`
--

LOCK TABLES `things` WRITE;
/*!40000 ALTER TABLE `things` DISABLE KEYS */;
INSERT INTO `things` VALUES (1,'格兰仕（Galanz） XQG60-A7308 6公斤云系列节能滚筒',599,198,27,'2014-01-11 14:59:37','2014-01-12 05:09:21','1月6日！火爆开抢！超值型号！热销一冬！','','<p class=\"p_excerpt\" style=\"font-size:14px;color:#555555;font-family:Arial, SimSun;background-color:#FFFFFF;\">\r\n	<p class=\"p_excerpt\" style=\"font-size:14px;color:#555555;font-family:Arial, SimSun;background-color:#FFFFFF;\">\r\n		<span style=\"font-weight:700;\">更新</span>：3C部分今天名额已经没有了，需要的朋友不妨明日继续关注。\r\n	</p>\r\n	<p class=\"p_detail\" style=\"font-size:14px;color:#555555;font-family:Arial, SimSun;background-color:#FFFFFF;\">\r\n		网购已经成为了目前无法阻挡的购物趋势，而各大银行也看到了其中的商机，并逐渐重视起来，<a href=\"http://www.smzdm.com/go2/_e_/397115/1\" target=\"_blank\">融e购商城</a>是工商银行为其工行卡客户推出的网上商城，商城限使用工商银行卡支付。均以<span style=\"color:#BC0202;\">店铺</span>的形式进行销售，今天开始正式营业。融e购相对于工行用户来说有不少优惠，比如订单<a href=\"http://www.smzdm.com/go2/_600_/397115/2\" target=\"_blank\">超600元可分期付款</a>，工行<a href=\"http://www.smzdm.com/go2/500_1_/397115/3\" target=\"_blank\">500积分抵1元</a>（每单最多抵50%）等。\r\n	</p>\r\n	<p class=\"p_detail\" style=\"font-size:14px;color:#555555;font-family:Arial, SimSun;background-color:#FFFFFF;\">\r\n		融e购商城目前推出了一个<a href=\"http://www.smzdm.com/go2/_e_buy_/397115/4\" target=\"_blank\">融e购大“buy”年</a>的活动，从1月12日到1月31日，每天前1000名<span style=\"font-weight:700;\">新注册用户</span>可<a href=\"http://www.smzdm.com/go2/_50_/397115/5\" target=\"_blank\">赠送50电子券</a>（实测今天已经不送了），不过优惠重点是包含很多满减活动，但<span style=\"color:#BC0202;\">每天均有限额</span>，是否还有满减名额，可在加入购物车结算时查看，如果达到满减额度却并未自动满减，那么今天名额就算没有了。\r\n	</p>\r\n	<p class=\"p_detail\" style=\"font-size:14px;color:#555555;font-family:Arial, SimSun;background-color:#FFFFFF;\">\r\n		小编整理的专场有：\r\n	</p>\r\n	<p class=\"p_detail\" style=\"font-size:14px;color:#555555;font-family:Arial, SimSun;background-color:#FFFFFF;\">\r\n		<span style=\"color:#BC0202;\"><a href=\"http://www.smzdm.com/go2/3C_/397115/6\" target=\"_blank\">3C家电专场</a></span>，1月12日到1月24日，力度为<span style=\"color:#BC0202;\">满1000减150、满3000减500、满6000减1000</span>（满减限同一商家的订单，不同商家金额不累计），<span style=\"color:#BC0202;\">每天限500笔订单</span>，每人限20单，其中迪信通旗舰店中的<a href=\"http://www.smzdm.com/go2/iPad_mini2/397115/7\" target=\"_blank\">iPad mini2</a>&nbsp;16G wifi版目前售价2830元，与售价288元的<a href=\"http://www.smzdm.com/go2/Nokia_108/397115/8\" target=\"_blank\">Nokia 108</a>手机一同下单，实付2618元，本身就是好价还带个手机。\r\n	</p>\r\n	<p class=\"p_detail\" style=\"font-size:14px;color:#555555;font-family:Arial, SimSun;background-color:#FFFFFF;\">\r\n		<a href=\"http://www.smzdm.com/go2/_/397115/9\" target=\"_blank\">年货专场</a>，1月12日到1月24日，力度为满1000减100、满3000减400，每天1000笔。\r\n	</p>\r\n	<p class=\"p_detail\" style=\"font-size:14px;color:#555555;font-family:Arial, SimSun;background-color:#FFFFFF;\">\r\n		<a href=\"http://www.smzdm.com/go2/_/397115/10\" target=\"_blank\">机票专场</a>，1月12日到1月31日，力度为满800减100，每天100笔。\r\n	</p>\r\n	<p class=\"p_detail\" style=\"font-size:14px;color:#555555;font-family:Arial, SimSun;background-color:#FFFFFF;\">\r\n		<a href=\"http://www.smzdm.com/go2/_/397115/11\" target=\"_blank\">黄金珠宝专场</a>，1月12日到1月24日，力度为满1000减100、满3000减300，每天500笔。\r\n	</p>\r\n	<p class=\"p_detail\" style=\"font-size:14px;color:#555555;font-family:Arial, SimSun;background-color:#FFFFFF;\">\r\n		<a href=\"http://www.smzdm.com/go2/_/397115/12\" target=\"_blank\">汽车专场</a>，1月12日到1月31日，力度为满10万减1000，满20万减2000，共限2000笔。\r\n	</p>\r\n	<p class=\"p_detail\" style=\"font-size:14px;color:#555555;font-family:Arial, SimSun;background-color:#FFFFFF;\">\r\n		<img src=\"http://pn.zdmimg.com/201401/12/52d204c8ee2e8.jpg_n1.jpg\" alt=\"\" />\r\n	</p>\r\n	<p class=\"p_detail\" style=\"font-size:14px;color:#555555;font-family:Arial, SimSun;background-color:#FFFFFF;\">\r\n		<img src=\"http://p.zdmimg.com/201401/12/52d20d0568e1e.jpg_n1.jpg\" alt=\"\" />\r\n	</p>\r\n</p>','/uploads/attachments/140111/normal_efd5cbe8524d1abf4fcabd24c61af92e.jpg','','http://item.jd.com/946649.html',1);
/*!40000 ALTER TABLE `things` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'iamalazyrat@gmail.com','$2a$10$dCPnhPzo7wwLesXluVpQMOEQDbqKo3tqwktfUogwl78DKH6X1gDyi',NULL,NULL,NULL,3,'2014-01-12 05:06:47','2014-01-12 03:14:00','192.168.1.104','192.168.1.101','2014-01-11 14:39:16','2014-01-12 05:06:47',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-12 16:28:55
