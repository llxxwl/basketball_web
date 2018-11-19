-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: lzz_ltx
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `ltx_admin`
--

DROP TABLE IF EXISTS `ltx_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ltx_admin` (
  `admin_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `lastloginip` varchar(15) DEFAULT '0',
  `lastlogintime` int(10) unsigned DEFAULT '0',
  `email` varchar(40) DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`admin_id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ltx_admin`
--

LOCK TABLES `ltx_admin` WRITE;
/*!40000 ALTER TABLE `ltx_admin` DISABLE KEYS */;
INSERT INTO `ltx_admin` VALUES (1,'admin','d099d126030d3207ba102efa8e60630a','0',1541122045,'','admin',1);
/*!40000 ALTER TABLE `ltx_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ltx_menu`
--

DROP TABLE IF EXISTS `ltx_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ltx_menu` (
  `menu_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `m` varchar(20) NOT NULL DEFAULT '',
  `c` varchar(20) NOT NULL DEFAULT '',
  `f` varchar(20) NOT NULL DEFAULT '',
  `data` varchar(100) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`),
  KEY `listorder` (`listorder`),
  KEY `parentid` (`parentid`),
  KEY `module` (`m`,`c`,`f`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ltx_menu`
--

LOCK TABLES `ltx_menu` WRITE;
/*!40000 ALTER TABLE `ltx_menu` DISABLE KEYS */;
INSERT INTO `ltx_menu` VALUES (1,'菜单管理',0,'admin','menu','index','',10,1,1),(2,'文章管理',0,'admin','Content','index','',0,-1,1),(3,'教学',0,'home','cat','index','',3,1,0),(4,'新闻',0,'home','cat ','index','',0,-1,0),(5,'汽车',0,'home','cat','index','',0,-1,0),(6,'文章管理',0,'admin','content','index','',9,1,1),(7,'用户管理',0,'admin','user','index','',0,-1,1),(8,'新闻',0,'home','cat','index','',0,1,0),(9,'推荐位管理',0,'admin','position','index','',4,1,1),(10,'推荐位内容管理',0,'admin','positioncontent','index','',1,1,1),(11,'基本管理',0,'admin','basic','index','',0,1,1),(12,'GIF',0,'home','cat','index','',0,1,0),(13,'用户管理',0,'admin','admin','index','',0,1,1);
/*!40000 ALTER TABLE `ltx_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ltx_news`
--

DROP TABLE IF EXISTS `ltx_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ltx_news` (
  `news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `small_title` varchar(30) NOT NULL DEFAULT '',
  `title_font_color` varchar(250) DEFAULT NULL COMMENT '标题颜色',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL COMMENT '文章描述',
  `posids` varchar(250) NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `username` char(20) NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`news_id`),
  KEY `status` (`status`,`listorder`,`news_id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`news_id`),
  KEY `catid` (`catid`,`status`,`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ltx_news`
--

LOCK TABLES `ltx_news` WRITE;
/*!40000 ALTER TABLE `ltx_news` DISABLE KEYS */;
INSERT INTO `ltx_news` VALUES (21,8,'詹皇29+10+7湖人负森林狼遭连败 巴特勒砍32分','森林狼4分胜湖人','','upload/2018/10/30/4.jpg','森林狼   詹姆斯   连败','湖人vs森林狼','',2,1,'2','admin',1541058460,0,52),(33,8,'sdf','dsf','','','sdf','dffs','',0,-1,'0','admin',1541118643,0,1),(22,3,'教学|学会这几招，够你轻松球场虐对手了！','小小的篮球技巧','','upload/2018/10/30/6.jpg','教学  球场   投篮','教学|学会这几招，够你轻松球场虐对手了！','',0,1,'0','admin',1541058465,0,45),(38,3,'SD','ASD','','','ASDA','SD','',0,-1,'0','admin',1541121552,0,2),(23,8,'NBA版把球给我我要回家！ 为破纪录拼到缝针','勇士,汤普森,公牛','#5674ed','upload/2018/10/30/2.jpg','把球给我我要回家！ 破纪录  缝针','NBA版把球给我我要回家！ 为破纪录拼到缝针','',10,1,'1','admin',1541058468,0,58),(24,8,'4场比赛3个关键球，德罗赞已成马刺队史第一！','德罗赞已成马刺队史第一','','upload/2018/10/30/5.jpg','德罗赞  关键球  马刺','4场比赛3个关键球，德罗赞已成马刺队史第一！','',1,1,'1','admin',1541058328,0,50),(39,3,'sf','ds','','','sdf','drf','',0,-1,'0','admin',1541121721,0,1),(37,3,'SDA','SAD','#ed568b','','ASDAS','DASD','',0,-1,'0','admin',1541121504,0,0),(36,12,' DFSDFD',' DFDSF','','','SDFSD','DFS','',0,-1,'0','admin',1541120752,0,1),(30,12,'大帝假动作晃晕波神 扣篮惨遭篮筐大帽!','大帝晃晕波神','','upload/2018/11/02/5bdbb391674a8.jpg','大帝  晃晕   波神','大帝假动作晃晕波神 扣篮惨遭篮筐大帽!','',0,1,'1','admin',1541058453,0,16),(35,8,'asd','asd','','','asd','asd','',0,-1,'0','admin',1541120020,0,5),(34,8,'dfsd','sdfd','','','sdfsd','dfs','',0,-1,'0','admin',1541119567,0,1),(40,3,'撒','十大','','','阿瑟东','sd ','',0,-1,'0','admin',1541122061,0,0),(41,12,'VXDD','SFDFSD','','','FDFDSFSDFSDFD','DFSDFDSFSD','',0,-1,'0','admin',1541122528,0,2),(42,12,'asd','dsf','','upload/2018/11/02/5bdbb330bac8a.jpg','sdas','sd','',0,-1,'0','admin',1541124919,0,0);
/*!40000 ALTER TABLE `ltx_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ltx_news_content`
--

DROP TABLE IF EXISTS `ltx_news_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ltx_news_content` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` mediumint(8) unsigned NOT NULL,
  `content` mediumtext NOT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ltx_news_content`
--

LOCK TABLES `ltx_news_content` WRITE;
/*!40000 ALTER TABLE `ltx_news_content` DISABLE KEYS */;
INSERT INTO `ltx_news_content` VALUES (11,21,'&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;腾讯体育10月30日讯 湖人今天在客场以120-124惜败于森林狼，遭遇2连败。湖人末节一度在落后10分的情况下追到只差2分，可惜关键时刻库兹马三分被盖，而巴特勒投中关键三分，末节一人投中5记三分助森林狼涉险过关。&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;p align=&quot;center&quot;&gt;&lt;img src=&quot;//inews.gtimg.com/newsapp_bt/0/6060666152/641&quot; style=&quot;display:block;&quot;/&gt;&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;strong&gt;数据统计：&lt;/strong&gt;&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;勒布朗-詹姆斯29分、10篮板、7助攻，英格拉姆复出拿下24分，库兹马19分，麦基和朗多各自得到13分。森林狼这边，维金斯继续因伤缺席，巴特勒32分，唐斯25分、16篮板、6助攻，奥科吉17分，罗斯11分、7篮板、7助攻。&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;strong&gt;全场之星：巴特勒&lt;/strong&gt;&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;巴特勒上一场因为伤病表现不佳，但今天他打出了完美状态，尤其是第四节，在双方比分接近时，巴特勒一人投中5个三分，全场拿下32分帮森林狼奠定胜局。&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;strong&gt;比赛花絮：&lt;/strong&gt;&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;本场比赛，之前因为打架禁赛4场的英格拉姆回归，湖人总裁魔术师约翰逊和总经理佩林卡看到英格拉姆回归也非常兴奋。&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;p align=&quot;center&quot;&gt;&lt;img src=&quot;//inews.gtimg.com/newsapp_match/0/6060803604/0&quot; style=&quot;display:block;&quot;/&gt;&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;首节开场不久，詹姆斯在攻击篮筐时惨遭唐斯大帽。&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;p align=&quot;center&quot;&gt;&lt;img src=&quot;//inews.gtimg.com/newsapp_match/0/6060807950/0&quot; style=&quot;display:block;&quot;/&gt;&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;史蒂芬森是湖人最具看点的球员之一，他一向擅长搞怪，今天投进三分后弹起了吉他庆祝。&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;p align=&quot;center&quot;&gt;&lt;img src=&quot;//inews.gtimg.com/newsapp_match/0/6060820319/0&quot; style=&quot;display:block;&quot;/&gt;&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;第二节史蒂芬森和迪昂有小冲突，一向脾气火爆的史蒂芬森竟然耍了一次滑头，导致迪昂失去冷静领到技术犯规。&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;p align=&quot;center&quot;&gt;&lt;img src=&quot;//inews.gtimg.com/newsapp_match/0/6060828646/0&quot; style=&quot;display:block;&quot;/&gt;&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;strong&gt;比赛回放：&lt;/strong&gt;&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;首节比赛，巴特勒连续攻击篮筐，麦基和库兹马也予以回应，尤其是库兹马，他在场上非常活跃，短短4分半钟便一人独砍11分，全队前13分中只有2分不是他拿下的。但是，湖人防守太糟糕，被唐斯和巴特勒予取予求，湖人一度13-21落后。湖人展开反扑，英格拉姆连续得分，哈特投中三分，但湖人防不住森林狼替补，始终落后。首节末段，湖人终于反超，英格拉姆三分，史蒂芬森上篮，湖人30-29反超。不过首节收官阶段，湖人被奥科吉和迪昂打爆，湖人32-36落后森林狼进入第二节。&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;次节比赛，史蒂芬森命中三分，詹姆斯转身跳投终于打破运动战得分荒，但湖人糟糕的防守导致他们持续落后，哪怕朗多、英格拉姆都命中三分，湖人还是落后。上半场最后3分钟，湖人56-62落后，詹姆斯频繁助攻队友并完成个人进攻，库兹马接到詹姆斯助攻后命中三分，湖人66-64反超。上半场最后时刻，吉布森反击上篮，但进球超时无效，湖人领先2分进入下半场。&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;易边再战，湖人进攻依然猛烈，但他们的防守还是老样子，巴特勒和唐斯连续得分，双方你来我往交替领先。第三节后半段，詹姆斯和史蒂芬森连续三分命中，湖人领先5分，之后湖人陷入得分荒，森林狼一波6-0实现反超。朗多和罗斯对飙，詹姆斯后撤步跳投命中，三节打完湖人94-93领先森林狼。&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;末节比赛，詹姆斯命中三分，巴特勒大发神威连续三分命中，朗多和英格拉姆连续突破得手，双方打成105平。琼斯和巴特勒连续三分命中，森林狼111-107领先湖人。暂停归来后，巴特勒再进三分，这是他末节第4个三分球，森林狼114-107领先。森林狼不手软，唐斯也命中三分，森林狼119-109领先到10分。湖人并未放弃，詹姆斯带队追到117-119只差2分。可惜，库兹马三分被盖，巴特勒投进单节第5个三分，森林狼奠定胜局。最终，湖人在客场负于森林狼，遭遇2连败。&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;strong&gt;双方首发：&lt;/strong&gt;&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;湖人：波尔、英格拉姆、库兹马、詹姆斯、麦基&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;森林狼：蒂格、巴特勒、奥科吉、吉布森、唐斯&lt;/p&gt;&lt;p class=&quot;text&quot; style=&quot;TEXT-INDENT:2em&quot;&gt;&lt;/p&gt;',1541058460,0),(12,22,'&lt;img alt=&quot;科比投篮&quot; src=&quot;//n.sinaimg.cn/sports/crawl/81/w441h440/20181030/fCuO-hnaivxq9281364.jpg&quot;/&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img style=&quot;color: #333333; font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 17px; letter-spacing: 0.544px; text-align: justify; white-space: normal; background-color: #ffffff; box-sizing: border-box !important; word-wrap: break-word !important; width: 100%; visibility: visible !important; height: auto;&quot; src=&quot;//n.sinaimg.cn/sports/crawl/202/w550h452/20181030/lZgC-hnaivxq9277912.jpg&quot; alt=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;相较于突破，投篮得分更省力，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;因为一般情况下，离篮筐越远，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;遇到的防守阻力就越小。&lt;/span&gt;&lt;/p&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img style=&quot;color: #3e3e3e; font-family: 微软雅黑; font-size: 15.55px; letter-spacing: 0.544px; text-align: center; white-space: normal; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important; visibility: visible !important; width: 100%; height: auto;&quot; src=&quot;//n.sinaimg.cn/sports/crawl/116/w550h366/20181030/dj8C-hnaivxq9278058.jpg&quot; alt=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;今天分享几招常见的跳投，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;绝对帅气实用！&lt;/span&gt;&lt;/p&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img style=&quot;color: #333333; font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 17px; letter-spacing: 0.544px; text-align: justify; white-space: normal; background-color: #ffffff; box-sizing: border-box !important; word-wrap: break-word !important; width: 640px !important; visibility: visible !important;&quot; src=&quot;//n.sinaimg.cn/sports/crawl/300/w550h550/20181030/V2Wa-hnaivxq9278346.jpg&quot; alt=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;急停跳投是篮球比赛中，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;常用的技巧，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;急停之后跳投能出其不意，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;甩开防守人员的防守，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;也能避免被对方封盖！&lt;/span&gt;&lt;/p&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img style=&quot;color: #3e3e3e; font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 16px; letter-spacing: 0.544px; text-align: justify; white-space: normal; widows: 1; box-sizing: border-box !important; word-wrap: break-word !important; visibility: visible !important; width: 100%; height: auto;&quot; src=&quot;//n.sinaimg.cn/sports/crawl/190/w396h594/20181030/T6bj-hnaivxq9278402.jpg&quot; alt=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;解析环节&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;letter-spacing: 2px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 14px; background-color: #000000; color: #ffffff;&quot;&gt;急停拉回跳投&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;突破过程中的急停拉回跳投，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;在于节奏的变换，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;脚步要调整稳定后再出手，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;成功率会高很多。&lt;/span&gt;&lt;/p&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img style=&quot;color: #3e3e3e; font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 16px; letter-spacing: 0.544px; text-align: justify; white-space: normal; widows: 1; box-sizing: border-box !important; word-wrap: break-word !important; visibility: visible !important; width: 100%; height: auto;&quot; src=&quot;//n.sinaimg.cn/sports/gif_image/599/w300h299/20181030/PMmt-hnaivxq9278462.gif&quot; alt=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;letter-spacing: 2px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 14px; background-color: #000000; color: #ffffff;&quot;&gt;急停跳&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 14px; background-color: #000000; color: #ffffff;&quot;&gt;投&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;利用挡拆运一步的急停跳投，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;这招在实战中效率极高，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;训练中注意的是，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;左右两边的急停跳投都得练习！&lt;/span&gt;&lt;/p&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img style=&quot;color: #3e3e3e; font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 16px; letter-spacing: 0.544px; text-align: justify; white-space: normal; widows: 1; box-sizing: border-box !important; word-wrap: break-word !important; visibility: visible !important; width: 100%; height: auto;&quot; src=&quot;//n.sinaimg.cn/sports/gif_image/599/w300h299/20181030/CASJ-hnaivxq9278529.gif&quot; alt=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px; color: #ffffff;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;letter-spacing: 2px; font-size: 14px; background-color: #000000;&quot;&gt;横撤急停跳投&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;行进间横向撤步，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;能给我们跳投，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;创造足够的投篮空间，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;这招最重要的是脚步动作，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;撤步一定要跳得尽量远！&lt;/span&gt;&lt;/p&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img style=&quot;color: #3e3e3e; font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 16px; letter-spacing: 0.544px; text-align: justify; white-space: normal; widows: 1; box-sizing: border-box !important; word-wrap: break-word !important; visibility: visible !important; width: 100%; height: auto;&quot; src=&quot;//n.sinaimg.cn/sports/gif_image/599/w300h299/20181030/i4eC-hnaivxq9278620.gif&quot; alt=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px; background-color: #000000; color: #ffffff;&quot;&gt;试探步跳投&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;面框时使用试探步，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;对手如果迎上来可以直接突破，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;如果往后撤，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 2px;&quot;&gt;可以直接干拔跳投。&lt;/span&gt;&lt;/p&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img style=&quot;box-sizing: border-box !important; word-wrap: break-word !important; visibility: visible !important; width: 670px !important;&quot; src=&quot;//n.sinaimg.cn/sports/gif_image/599/w300h299/20181030/Z9aV-hnaivxq9278842.gif&quot; alt=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=&quot;white-space: normal; max-width: 100%; min-height: 1em; color: #333333; font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 17px; letter-spacing: 0.544px; outline: none; text-align: center; background-color: #ffffff; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;&lt;/p&gt;　',1541058465,0),(13,23,'&lt;p&gt;\r\n&lt;br /&gt;\r\n&lt;/p&gt;\r\n\r\n&lt;img alt=&quot;&quot; src=&quot;upload/2016/03/13/2.jpg&quot;/&gt;\r\n				\r\n				&lt;p&gt;　　北京时间10月30日，金州勇士队客场以149比124大胜芝加哥公牛，此役克莱-汤普森拿到全场最高的52分，将NBA单场三分球纪录改写为14记。赛后汤普森特意把本场比赛的用球拿走，进行收藏。&lt;/p&gt;\r\n&lt;img src=&quot;upload/2016/03/13/3.jpg&quot; alt=&quot;&quot; data-link=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;\r\n&lt;p&gt;　　从赛后汤普森接受媒体采访的照片中可以看到，汤普森手中紧握一颗篮球。这记比赛用球对他具有特殊的意义，因为今晚在芝加哥客场征战过程中，他一人命中了13记三分球，打破了新的NBA纪录。&lt;/p&gt;\r\n&lt;p&gt;　　另外汤普森今天在比赛中头部受伤，赛后治疗进行了缝针。接受记者采访时，汤普森的头部已经完成了包扎，预计不会影响之后的比赛。&lt;/p&gt;',1541058468,0),(14,24,'&lt;img alt=&quot;德罗赞&quot; src=&quot;//n.sinaimg.cn/sports/crawl/33/w417h416/20181030/wCNe-hnaivxq9290884.jpg&quot;/&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;max-width: 100%; font-size: 14px; letter-spacing: 0.544px; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;今天马刺对阵独行侠的比赛中，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;德罗赞21投12中，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;max-width: 100%; font-size: 14px; letter-spacing: 0.544px; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;砍下34分6板9助攻，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;max-width: 100%; font-size: 14px; letter-spacing: 0.544px; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;关键时刻还命中一个中投，&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;max-width: 100%; font-size: 14px; letter-spacing: 0.544px; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;帮助马刺加时战胜独行侠！&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img style=&quot;width: 100%; height: auto;&quot; src=&quot;//n.sinaimg.cn/sports/gif_image/460/w273h187/20181030/Bdo5-hnaivxq9287651.gif&quot; alt=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;刚到马刺不久的德罗赞，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;max-width: 100%; font-size: 14px; letter-spacing: 0.544px; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;5场比赛下来&lt;/span&gt;&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;一共拿下了136分，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;max-width: 100%; font-size: 14px; letter-spacing: 0.544px; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;超过大卫-罗宾逊的115分，&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;max-width: 100%; font-size: 14px; letter-spacing: 0.544px; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;成为马刺的队史第一。&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img style=&quot;width: 100%; height: auto;&quot; src=&quot;//n.sinaimg.cn/sports/crawl/116/w550h366/20181030/er5Z-hnaivxq9287755.jpg&quot; alt=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;在战胜森林狼的比赛中，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;他21中10得到28分4篮板4助攻，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;在对阵开拓者时，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;他22投11中得到28分3篮板9助攻。&lt;/span&gt;&lt;/p&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img style=&quot;width: 100%; height: auto;&quot; src=&quot;//n.sinaimg.cn/sports/crawl/137/w550h387/20181030/yOFV-hnaivxq9287838.jpg&quot; alt=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;其实不只是数据非常出色，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;在马刺获得的四场胜利中，&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;有三个关键球，&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;都来自于德罗赞。&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img style=&quot;width: 100%; height: auto;&quot; src=&quot;//n.sinaimg.cn/sports/gif_image/449/w262h187/20181030/XLyC-hnaivxq9288006.gif&quot; alt=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;尤其是在对阵湖人的比赛中，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;许多人都想德罗赞会受心魔影响，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;但面对詹皇他表现依旧出色，&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;最后关键时刻，&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;干拔后仰跳投命中！&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img style=&quot;width: 100%; height: auto;&quot; src=&quot;//n.sinaimg.cn/sports/gif_image/530/w306h224/20181030/zcB7-hnaivxq9288090.gif&quot; alt=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=&quot;font-size: 17px; max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;在对战森林狼的比赛中，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;德罗赞在比赛的最后30秒，&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;命中关键抛投，&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;帮助马刺险胜森林狼。&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img style=&quot;width: 100%; height: auto;&quot; src=&quot;//n.sinaimg.cn/sports/crawl/115/w550h365/20181030/fGnn-hnaivxq9288261.jpg&quot; alt=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p style=&quot;max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;加盟马刺之后，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;德罗赞的表现确实非常出色，&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;希望德罗赞越来越赞，&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;max-width: 100%; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;&quot;&gt;　　&lt;strong&gt;&lt;span style=&quot;font-size: 14px; letter-spacing: 0.544px;&quot;&gt;也越来越开心。&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;',1541058328,0),(20,30,'&lt;p&gt;　　新浪体育讯　　北京时间1月12日，76人对阵尼克斯，恩比德扣篮遭遇篮筐封盖。&lt;/p&gt;\r\n&lt;div class=&quot;img_wrapper&quot;&gt;&lt;img src=&quot;http://n.sinaimg.cn/sports/transform/20170112/HiGC-fxzqnkq8870435.gif&quot; alt=&quot;&quot; data-link=&quot;&quot;&gt;&lt;span class=&quot;img_descr&quot;&gt;&lt;/span&gt;&lt;/div&gt;\r\n&lt;p&gt;&lt;/p&gt;',1541058453,0),(27,37,'SDADSAASDS',1541121504,0),(28,38,'SD',1541121552,0),(29,39,'dfsd',1541121721,0),(30,40,'大苏打',1541122061,0),(31,41,'DSFDSFDSFDSFDSFSFD',1541122528,0),(32,42,'sda',1541124919,0);
/*!40000 ALTER TABLE `ltx_news_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ltx_position`
--

DROP TABLE IF EXISTS `ltx_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ltx_position` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `description` char(100) DEFAULT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ltx_position`
--

LOCK TABLES `ltx_position` WRITE;
/*!40000 ALTER TABLE `ltx_position` DISABLE KEYS */;
INSERT INTO `ltx_position` VALUES (1,'首页大图',-1,'展示首页大图的推荐位1',1541058453,0),(2,'首页大图',1,'展示首页大图的',1541058458,0),(3,'小图推荐',1,'小图推荐位',1541058490,0),(4,'首页后侧推荐位',-1,'',1541058521,0),(5,'右侧广告位',-1,'右侧广告位',1541058538,0);
/*!40000 ALTER TABLE `ltx_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ltx_position_content`
--

DROP TABLE IF EXISTS `ltx_position_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ltx_position_content` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` int(5) unsigned NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) DEFAULT NULL,
  `news_id` mediumint(8) unsigned NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ltx_position_content`
--

LOCK TABLES `ltx_position_content` WRITE;
/*!40000 ALTER TABLE `ltx_position_content` DISABLE KEYS */;
INSERT INTO `ltx_position_content` VALUES (28,2,'詹皇29+10+7湖人负森林狼遭连败 巴特勒砍32分','upload/2018/10/30/4.jpg',NULL,21,0,1,1541058460,0),(29,3,'教学|学会这几招，够你轻松球场虐对手了！','upload/2018/10/30/6.jpg',NULL,22,12,1,1541058465,0),(30,3,'NBA版把球给我我要回家！ 为破纪录拼到缝针','upload/2018/10/30/2.jpg',NULL,23,0,1,1541058468,0),(31,3,'4场比赛3个关键球，德罗赞已成马刺队史第一！','upload/2018/10/30/5.jpg',NULL,24,0,1,1541058328,0),(37,3,'4场比赛3个关键球，德罗赞已成马刺队史第一！','upload/2018/10/30/5.jpg',NULL,24,0,1,1541058328,0),(36,3,'詹皇29+10+7湖人负森林狼遭连败 巴特勒砍32分','upload/2018/10/30/4.jpg',NULL,21,0,1,1541058460,0),(34,2,'詹皇29+10+7湖人负森林狼遭连败 巴特勒砍32分','upload/2018/10/30/4.jpg',NULL,21,0,1,1541058460,0),(35,2,'4场比赛3个关键球，德罗赞已成马刺队史第一！','upload/2018/10/30/5.jpg',NULL,24,0,1,1541058328,0),(38,3,'111','',NULL,25,0,1,1540950029,0),(39,3,'詹皇29+10+7湖人负森林狼遭连败 巴特勒砍32分','upload/2018/10/30/4.jpg',NULL,21,0,1,1541058460,0),(40,3,'教学|学会这几招，够你轻松球场虐对手了！','upload/2018/10/30/6.jpg',NULL,22,0,1,1541058465,0),(41,3,'NBA版把球给我我要回家！ 为破纪录拼到缝针','upload/2018/10/30/2.jpg',NULL,23,0,1,1541058468,0),(42,3,'詹皇29+10+7湖人负森林狼遭连败 巴特勒砍32分','upload/2018/10/30/4.jpg',NULL,21,0,1,1541058460,0),(43,3,'4场比赛3个关键球，德罗赞已成马刺队史第一！','upload/2018/10/30/5.jpg',NULL,24,0,1,1541058328,0),(44,3,'詹皇29+10+7湖人负森林狼遭连败 巴特勒砍32分','upload/2018/10/30/4.jpg',NULL,21,0,1,1541058460,0),(45,3,'NBA版把球给我我要回家！ 为破纪录拼到缝针','upload/2018/10/30/2.jpg',NULL,23,0,1,1541058468,0);
/*!40000 ALTER TABLE `ltx_position_content` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-02 10:21:32
