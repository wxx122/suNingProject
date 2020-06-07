﻿# Host: localhost  (Version: 5.5.53)
# Date: 2020-03-07 13:28:59
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "student"
#

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1025 DEFAULT CHARSET=utf8;

#
# Data for table "student"
#

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'孙九二',20,'男',1920,89),(2,'将七十',20,'男',1912,83),(3,'郑三九',25,'男',1912,74),(4,'王九七',21,'男',1918,79),(5,'钱五三',27,'女',1910,88),(6,'施五十',22,'女',1910,72),(7,'王九六',25,'女',1912,94),(9,'钱六九',27,'女',1910,82),(10,'施三七',22,'男',1915,62),(11,'琴八三',24,'男',1911,89),(12,'许二七',28,'女',1916,73),(13,'沈一七',22,'女',1912,88),(16,'尤三八',29,'男',1913,68),(17,'朱四十',21,'女',1915,91),(20,'郑二六',22,'男',1920,85),(22,'冯一四',30,'男',1917,75),(24,'琴三八',27,'女',1911,71),(26,'周十九',21,'女',1911,75),(27,'吕七十',22,'女',1917,83),(30,'何五六',22,'男',1914,77),(32,'魏四七',29,'男',1920,82),(33,'施三二',24,'女',1920,91),(34,'将六八',24,'女',1910,77),(35,'钱四八',28,'男',1919,93),(36,'孙五一',20,'女',1916,96),(37,'吕二七',20,'女',1911,97),(38,'何九七',24,'女',1910,100),(42,'赵四四',25,'女',1920,78),(43,'赵一五',25,'女',1913,91),(45,'李二五',29,'女',1911,94),(46,'杨六十',26,'男',1919,97),(49,'章六九',27,'女',1912,89),(50,'施六八',28,'男',1912,91),(51,'施九三',29,'女',1913,92),(56,'郑九三',25,'女',1919,79),(57,'琴五六',20,'男',1918,95),(58,'魏五二',23,'女',1910,71),(60,'许二二',26,'女',1910,70),(62,'沈十二',29,'男',1910,77),(63,'沈一二',27,'男',1912,91),(64,'何十七',24,'女',1911,96),(65,'朱一一',20,'女',1913,85),(66,'施四一',26,'男',1917,95),(70,'周二七',24,'女',1920,90),(72,'沈四一',29,'男',1916,77),(73,'钱五七',29,'女',1911,75),(77,'沈六二',29,'女',1914,93),(79,'陈四五',21,'女',1911,87),(81,'李十七',26,'男',1913,79),(82,'将八七',30,'女',1913,89),(83,'沈六五',20,'女',1915,69),(87,'吕一十',27,'女',1912,93),(90,'李十十',24,'女',1919,91),(91,'周十十',21,'女',1919,71),(94,'杨四三',22,'男',1916,99),(95,'琴八一',26,'男',1917,65),(96,'杨五一',30,'女',1911,72),(97,'郑三九',20,'女',1911,72),(98,'朱十六',27,'男',1912,74),(100,'何三八',27,'男',1920,76),(101,'周八一',21,'男',1913,92),(103,'吴八十',21,'男',1918,78),(105,'吕六五',25,'男',1912,90),(107,'周八四',28,'女',1919,71),(109,'何五八',20,'女',1910,85),(110,'何四十',24,'女',1920,80),(111,'沈三九',29,'女',1918,87),(112,'赵九四',30,'女',1916,84),(113,'李九五',29,'女',1918,62),(115,'钱八六',29,'男',1910,99),(121,'陈六十',24,'女',1910,64),(122,'周二一',24,'男',1916,72),(123,'周二四',28,'女',1910,84),(124,'杨八六',24,'男',1911,85),(125,'何一一',21,'男',1919,93),(126,'李七七',26,'女',1910,83),(127,'许十九',30,'男',1915,92),(128,'尤八九',21,'女',1920,71),(130,'许五六',26,'男',1916,76),(133,'杨七一',29,'女',1915,77),(134,'施三八',20,'女',1913,77),(137,'沈十一',25,'女',1917,98),(138,'韩十七',26,'女',1917,79),(141,'钱七三',29,'女',1910,69),(143,'沈七一',29,'女',1918,80),(144,'何二四',27,'女',1914,94),(145,'钱一十',24,'女',1916,99),(146,'尤八六',28,'女',1911,94),(147,'楚二六',30,'男',1910,60),(149,'吴四十',25,'男',1916,83),(150,'孙六九',25,'男',1917,65),(153,'将七六',27,'女',1911,68),(154,'韩四六',21,'男',1911,76),(155,'赵七六',26,'男',1916,89),(156,'韩五三',27,'女',1916,96),(158,'章八五',28,'男',1913,90),(160,'王一十',24,'女',1917,93),(161,'孙八十',23,'男',1918,83),(163,'钱九二',24,'男',1911,91),(164,'李六一',27,'男',1919,88),(166,'冯一九',29,'女',1919,74),(169,'李七六',30,'男',1915,98),(170,'周六九',23,'女',1917,64),(171,'吕九七',26,'女',1920,82),(172,'冯二六',23,'女',1915,80),(174,'将七六',29,'女',1915,94),(175,'魏三三',21,'女',1911,65),(176,'钱四七',23,'男',1910,66),(177,'何八五',24,'男',1918,66),(178,'魏七六',24,'男',1919,100),(179,'朱一五',22,'男',1913,75),(184,'吴二八',28,'男',1912,97),(185,'将一十',22,'男',1917,65),(187,'琴七六',30,'男',1914,87),(188,'章十四',28,'男',1919,70),(191,'韩三一',27,'男',1912,63),(192,'周二六',25,'女',1913,76),(195,'郑九五',25,'男',1916,72),(197,'吴五七',20,'女',1910,87),(198,'周九四',23,'男',1912,95),(200,'郑五四',28,'男',1918,80),(201,'韩九九',27,'女',1918,90),(204,'陈七九',30,'男',1917,65),(205,'赵二九',23,'男',1912,75),(208,'杨四五',30,'女',1916,62),(209,'将八八',29,'男',1913,87),(211,'许三二',20,'男',1920,82),(213,'杨六五',21,'女',1915,85),(218,'沈四七',25,'女',1919,92),(219,'王十六',25,'女',1918,77),(220,'朱三九',28,'男',1920,66),(223,'王六六',20,'女',1912,67),(224,'魏二五',24,'女',1919,83),(225,'楚八七',20,'男',1919,64),(226,'魏三七',26,'女',1910,98),(228,'吕四九',21,'女',1911,68),(230,'冯五三',28,'男',1915,77),(231,'杨九三',20,'女',1917,73),(232,'冯四九',24,'女',1917,92),(233,'施四二',29,'女',1913,75),(235,'钱六六',30,'女',1915,62),(236,'许十五',22,'男',1918,72),(237,'何五十',21,'男',1913,97),(238,'琴五七',27,'女',1916,78),(239,'何八一',20,'男',1910,74),(240,'韩三六',22,'女',1910,79),(243,'许九八',22,'男',1910,82),(244,'朱三一',23,'女',1920,93),(246,'孙一五',30,'男',1912,69),(247,'周五二',22,'女',1916,86),(248,'楚一八',20,'女',1911,61),(249,'李二五',26,'女',1919,95),(251,'许七四',25,'女',1914,60),(252,'尤六八',26,'女',1920,84),(254,'琴五一',26,'男',1914,65),(259,'郑一七',30,'女',1918,71),(260,'冯一八',22,'女',1911,62),(263,'周二三',22,'女',1911,83),(266,'郑六六',30,'男',1920,95),(267,'魏四九',26,'男',1913,71),(270,'何七三',24,'女',1920,73),(271,'陈六九',26,'女',1916,98),(274,'许四九',30,'女',1912,72),(275,'朱九三',29,'女',1915,74),(276,'许十二',30,'女',1919,98),(279,'朱九七',20,'女',1912,62),(281,'许八五',22,'男',1916,69),(282,'赵八三',22,'男',1910,77),(284,'郑七十',23,'女',1919,65),(285,'朱三九',23,'女',1911,100),(289,'郑二八',23,'男',1915,76),(290,'李二十',22,'男',1917,65),(291,'孙三六',20,'男',1913,90),(292,'李七二',21,'女',1910,79),(293,'孙五二',24,'男',1910,75),(295,'杨七二',29,'女',1920,85),(296,'琴十十',24,'男',1912,63),(297,'周六三',22,'男',1917,83),(299,'尤七十',27,'女',1916,72),(300,'尤二十',28,'女',1915,95),(304,'杨八九',27,'女',1916,62),(308,'王五七',22,'女',1917,66),(309,'何七八',20,'女',1916,61),(310,'施九八',21,'男',1912,64),(311,'钱七十',23,'女',1912,91),(313,'王七五',23,'女',1916,95),(314,'王四七',25,'男',1910,74),(315,'冯二七',28,'女',1918,63),(316,'孙七六',30,'女',1917,69),(319,'朱六一',27,'男',1913,96),(322,'将九二',25,'女',1914,82),(325,'许六五',23,'女',1915,76),(326,'李六二',21,'男',1915,100),(327,'施七十',28,'女',1910,80),(328,'章六六',28,'男',1919,83),(330,'何七四',22,'女',1918,88),(331,'施三十',20,'男',1911,66),(334,'王八六',26,'女',1913,72),(335,'钱四十',28,'男',1918,61),(336,'琴四一',28,'男',1916,88),(342,'楚六五',21,'女',1915,95),(344,'孙十一',28,'女',1911,86),(346,'章八四',26,'男',1918,93),(347,'楚一一',29,'男',1916,83),(348,'王六六',24,'男',1913,95),(349,'沈二三',22,'女',1917,98),(350,'吕一十',22,'男',1914,63),(351,'吕三十',27,'女',1918,69),(354,'郑六八',25,'男',1919,61),(356,'吕六九',28,'男',1913,60),(357,'陈一六',26,'女',1912,69),(360,'沈十六',30,'男',1913,65),(361,'施二九',21,'女',1915,60),(362,'琴六八',23,'女',1910,88),(364,'周十十',28,'女',1918,87),(367,'周三三',23,'女',1914,61),(368,'周八七',26,'女',1916,75),(369,'章三六',22,'男',1918,78),(370,'沈十六',22,'男',1915,67),(371,'沈一十',28,'女',1910,65),(372,'魏二九',27,'女',1919,69),(376,'陈四二',23,'女',1915,79),(377,'施八九',27,'男',1918,65),(378,'赵一五',25,'女',1915,74),(379,'楚三四',23,'男',1918,96),(380,'施四九',28,'男',1918,84),(381,'郑七八',29,'男',1910,86),(384,'楚二六',23,'男',1915,92),(385,'孙八一',26,'男',1918,97),(386,'楚一八',24,'男',1913,64),(387,'尤十六',20,'男',1915,100),(388,'何八四',22,'女',1919,84),(390,'吕七三',30,'男',1919,87),(393,'杨六五',21,'男',1920,68),(395,'何七七',20,'女',1915,92),(396,'魏七五',25,'男',1912,87),(397,'章七六',30,'女',1917,92),(400,'赵一六',23,'女',1914,85),(403,'施六九',29,'女',1920,87),(405,'施一十',23,'男',1910,91),(407,'陈三三',22,'女',1914,72),(408,'钱七八',29,'男',1918,95),(409,'钱八五',30,'男',1920,69),(410,'魏二十',23,'女',1910,78),(413,'吕六三',27,'男',1918,66),(417,'楚七七',23,'女',1912,69),(418,'施五一',22,'女',1916,89),(419,'孙七十',29,'男',1916,88),(420,'周九二',28,'女',1912,71),(421,'周二五',20,'女',1920,94),(422,'冯六五',26,'女',1914,84),(423,'钱九六',28,'男',1919,80),(424,'施五七',30,'男',1919,97),(425,'吴四十',27,'女',1918,68),(427,'杨五三',28,'女',1911,63),(430,'郑九九',23,'男',1919,89),(431,'孙三七',28,'女',1918,100),(433,'朱二六',30,'女',1918,82),(437,'朱一九',25,'男',1913,65),(438,'周八八',23,'男',1918,84),(440,'李八七',21,'女',1920,73),(441,'孙三九',25,'男',1915,65),(443,'章八七',25,'男',1911,99),(445,'陈八五',30,'男',1918,99),(446,'陈六四',29,'男',1913,84),(447,'琴八一',28,'男',1914,67),(448,'何五三',27,'女',1919,98),(449,'杨十十',26,'男',1911,93),(450,'许七八',30,'女',1917,76),(453,'陈八二',25,'男',1920,65),(456,'朱六九',28,'男',1920,86),(457,'朱五三',24,'女',1910,60),(459,'王六八',27,'女',1912,87),(460,'周七七',28,'女',1918,94),(461,'章二一',24,'男',1919,98),(462,'杨四七',23,'女',1915,100),(463,'何四七',25,'男',1915,78),(466,'杨四七',24,'男',1916,85),(468,'魏三九',22,'男',1918,63),(470,'周十十',29,'男',1916,85),(471,'章二八',20,'男',1918,62),(472,'沈九一',24,'女',1920,74),(474,'楚二一',27,'男',1918,94),(475,'韩一七',21,'男',1915,89),(477,'尤四七',26,'男',1912,64),(478,'赵五九',29,'男',1913,76),(479,'楚十五',20,'男',1913,72),(482,'孙九九',24,'女',1918,85),(485,'魏七八',21,'男',1912,88),(486,'王九九',25,'女',1910,87),(487,'沈二十',30,'女',1916,62),(488,'尤六三',24,'男',1920,98),(490,'吕七二',20,'女',1918,74),(494,'楚七十',21,'女',1920,73),(504,'冯八七',26,'男',1919,98),(505,'琴三四',29,'女',1917,96),(507,'钱八五',21,'男',1911,71),(508,'钱一一',30,'女',1916,83),(509,'赵四七',26,'男',1911,82),(510,'章二九',26,'男',1912,90),(512,'尤四五',25,'女',1918,73),(515,'郑十五',22,'女',1912,68),(518,'吕四一',28,'男',1911,92),(521,'周十七',20,'男',1916,83),(522,'杨九五',25,'男',1914,67),(524,'陈二四',24,'女',1919,71),(525,'魏二二',25,'女',1915,73),(527,'赵六三',20,'女',1912,71),(529,'王三二',20,'女',1916,61),(530,'施五六',22,'男',1914,90),(533,'郑十五',22,'男',1912,64),(534,'王十五',23,'女',1919,95),(535,'钱六九',24,'男',1916,82),(536,'将五八',26,'女',1917,83),(537,'冯九四',25,'男',1913,69),(538,'吕六七',24,'女',1910,79),(540,'沈二三',27,'女',1915,64),(542,'王九一',22,'女',1910,67),(544,'许一一',21,'女',1920,64),(545,'韩二五',23,'女',1910,61),(547,'孙一四',25,'男',1919,86),(548,'周十三',22,'男',1914,63),(551,'将十九',26,'女',1918,74),(552,'李一五',23,'女',1915,69),(554,'琴一二',29,'女',1919,82),(556,'沈二九',26,'男',1917,63),(558,'孙十五',26,'女',1915,86),(562,'李八一',25,'女',1917,65),(563,'施六十',27,'女',1913,85),(564,'何二三',29,'男',1915,80),(568,'孙二二',24,'男',1913,91),(569,'何九三',26,'女',1914,96),(570,'周二一',27,'女',1920,76),(571,'韩三七',23,'男',1915,74),(572,'陈二十',22,'女',1913,67),(573,'孙六四',28,'女',1919,96),(574,'赵四八',29,'女',1917,66),(575,'许十一',28,'女',1914,100),(576,'周七一',29,'男',1911,78),(578,'孙五四',23,'女',1910,69),(579,'尤七二',20,'女',1919,97),(583,'许九七',25,'女',1920,69),(584,'陈七一',27,'男',1911,89),(585,'周九五',22,'男',1917,76),(588,'孙二六',26,'女',1913,78),(591,'朱四四',22,'男',1913,95),(592,'吕二三',24,'女',1916,78),(594,'朱十十',27,'男',1917,64),(598,'施五五',24,'女',1916,75),(599,'杨六四',22,'女',1919,71),(600,'赵七十',21,'女',1919,62),(602,'何六八',28,'女',1918,95),(603,'琴二二',25,'男',1913,95),(604,'韩一九',28,'男',1920,94),(605,'章七一',30,'男',1919,91),(606,'孙八八',22,'男',1912,88),(607,'赵八十',27,'女',1919,74),(614,'许二一',30,'男',1919,61),(616,'章一一',30,'女',1916,71),(617,'赵九二',30,'女',1918,91),(619,'琴十五',20,'男',1913,95),(621,'尤五四',23,'男',1913,71),(622,'王八六',24,'女',1916,70),(623,'许三八',30,'男',1920,96),(624,'冯七九',22,'男',1916,66),(625,'许七七',28,'男',1919,94),(626,'杨十三',27,'女',1917,85),(627,'钱五三',27,'男',1910,92),(628,'赵九五',21,'女',1918,83),(630,'许一六',22,'男',1918,69),(631,'尤一五',21,'女',1916,85),(633,'将九八',30,'女',1916,65),(634,'吕九九',27,'男',1914,77),(637,'琴二六',23,'女',1912,79),(638,'沈一二',26,'女',1917,72),(641,'陈七八',25,'男',1913,82),(643,'尤九四',25,'男',1920,97),(644,'吕十五',23,'男',1912,68),(645,'钱二一',25,'女',1913,93),(646,'吕二九',27,'女',1915,97),(647,'赵十九',25,'女',1914,97),(648,'章五五',30,'男',1920,75),(650,'王六五',29,'女',1916,83),(651,'韩三二',22,'女',1917,73),(654,'施五七',28,'男',1914,96),(655,'何六十',30,'男',1920,89),(657,'琴十三',23,'女',1917,69),(658,'章十九',25,'男',1915,68),(661,'韩九十',21,'女',1915,99),(663,'尤十五',26,'男',1918,92),(664,'章三八',22,'女',1916,71),(665,'杨十四',20,'女',1918,69),(666,'王一四',25,'男',1920,81),(668,'周五十',22,'女',1919,94),(670,'楚二十',29,'女',1920,79),(672,'杨八五',29,'男',1918,75),(674,'将十三',20,'男',1912,76),(675,'孙六八',22,'男',1910,85),(677,'陈五十',25,'男',1919,72),(678,'王十十',22,'男',1920,94),(679,'施一三',25,'男',1917,69),(681,'王一三',23,'女',1910,99),(682,'吕二七',26,'女',1916,68),(685,'章三二',20,'女',1918,92),(686,'章一二',29,'女',1911,84),(687,'琴三一',22,'男',1914,74),(689,'将六七',23,'女',1919,98),(690,'朱八九',21,'女',1912,74),(691,'朱八一',20,'女',1912,68),(693,'陈八九',23,'女',1917,73),(694,'朱八八',26,'女',1918,63),(695,'韩三三',22,'男',1912,90),(697,'杨五八',27,'女',1913,66),(700,'将十一',24,'男',1911,67),(701,'何三三',25,'男',1920,92),(703,'吕三十',28,'女',1915,71),(705,'章九七',25,'女',1917,79),(706,'楚三十',29,'女',1914,63),(707,'郑六一',23,'男',1916,65),(708,'吕一五',20,'男',1919,64),(711,'尤六六',30,'女',1913,94),(712,'孙八三',27,'男',1912,92),(713,'琴二七',20,'男',1913,91),(714,'吕七二',22,'男',1915,76),(715,'钱二四',29,'女',1915,69),(716,'章七六',25,'男',1920,62),(717,'施二四',26,'男',1915,60),(718,'陈六十',29,'男',1918,95),(724,'赵十五',30,'男',1917,77),(727,'冯九十',24,'女',1910,81),(730,'郑十五',29,'女',1918,96),(732,'郑四六',23,'男',1912,63),(735,'沈五五',21,'男',1914,76),(736,'许九九',29,'男',1919,65),(737,'孙六九',20,'男',1920,96),(738,'朱四十',23,'男',1914,73),(739,'冯十三',29,'男',1914,99),(740,'章九一',23,'男',1920,96),(741,'朱十三',26,'女',1911,66),(742,'王四四',22,'女',1916,97),(745,'钱七九',22,'男',1920,76),(747,'韩八八',21,'男',1920,85),(749,'琴六五',23,'女',1917,82),(750,'李九三',28,'男',1912,67),(751,'李八十',21,'女',1913,83),(752,'施一十',27,'男',1910,61),(753,'琴九三',25,'女',1913,71),(754,'吴一一',23,'男',1913,94),(755,'许六四',20,'男',1910,75),(757,'沈八一',29,'男',1913,60),(758,'赵十六',24,'男',1913,89),(759,'章十六',30,'女',1913,65),(763,'王九五',30,'男',1919,83),(764,'冯六五',21,'女',1912,82),(765,'楚十五',21,'女',1912,75),(768,'楚八二',27,'男',1912,94),(771,'郑八三',28,'女',1917,64),(772,'陈七一',24,'男',1920,90),(773,'杨四八',27,'女',1918,82),(775,'章六七',30,'女',1919,61),(776,'朱五七',30,'男',1910,78),(778,'章三五',21,'男',1919,100),(779,'赵六十',30,'女',1918,95),(780,'周二三',21,'女',1920,100),(781,'陈三五',26,'女',1912,97),(782,'王一九',24,'女',1916,63),(785,'李七四',27,'女',1917,77),(787,'朱六九',27,'女',1914,67),(789,'章八六',20,'女',1917,72),(790,'尤十五',27,'女',1919,75),(793,'施一三',28,'女',1911,70),(794,'琴五一',26,'男',1920,82),(797,'沈四四',26,'女',1915,86),(798,'将六九',22,'女',1919,92),(799,'韩一十',21,'男',1914,62),(800,'魏五八',23,'男',1915,85),(805,'魏一二',21,'女',1919,91),(806,'许二三',27,'男',1918,69),(807,'陈二六',24,'女',1916,63),(808,'沈二九',23,'女',1918,75),(809,'王九十',28,'男',1912,84),(812,'冯三七',24,'男',1918,92),(814,'何二八',20,'男',1919,81),(815,'钱八四',26,'女',1917,61),(817,'楚八三',20,'男',1913,75),(818,'吴八八',30,'男',1919,83),(820,'陈十九',23,'男',1914,93),(821,'吴二九',29,'男',1914,77),(822,'吕八九',28,'女',1913,84),(824,'赵八二',30,'女',1911,67),(825,'楚十二',29,'男',1911,96),(826,'赵十五',28,'女',1919,78),(828,'朱七三',26,'女',1919,66),(829,'沈一二',23,'男',1910,89),(830,'吴一六',29,'女',1915,91),(835,'尤五十',26,'女',1913,94),(836,'楚七一',20,'女',1915,86),(840,'许八六',27,'男',1914,95),(842,'沈三二',26,'女',1917,93),(843,'楚五二',24,'女',1916,90),(846,'琴二二',26,'男',1920,62),(847,'王三九',29,'女',1920,69),(848,'钱一五',20,'女',1917,69),(851,'孙七五',30,'女',1914,89),(852,'郑四八',27,'男',1910,84),(853,'陈十一',29,'女',1915,74),(855,'钱三六',25,'男',1912,91),(856,'施三十',26,'男',1916,98),(858,'朱四二',29,'男',1917,98),(861,'楚二八',25,'女',1910,84),(863,'李三九',28,'男',1920,78),(864,'杨六三',24,'女',1916,76),(866,'魏七一',22,'女',1913,97),(867,'冯五七',26,'男',1917,98),(868,'章一二',30,'男',1911,87),(869,'尤七六',22,'男',1911,85),(870,'许六七',27,'女',1914,71),(872,'陈三六',29,'女',1919,77),(873,'孙六六',27,'女',1910,61),(874,'楚二六',26,'女',1920,93),(875,'魏六一',22,'男',1916,76),(876,'尤十七',23,'女',1910,84),(877,'朱六六',24,'男',1910,94),(879,'楚三二',24,'男',1916,70),(884,'将七一',29,'男',1917,97),(885,'陈二一',22,'女',1910,64),(888,'吴七二',21,'女',1910,92),(889,'孙一七',20,'女',1914,66),(890,'琴七三',29,'女',1914,79),(892,'将四六',23,'男',1910,81),(894,'许八十',26,'女',1915,98),(896,'尤十一',29,'女',1915,74),(897,'琴六四',25,'女',1919,68),(898,'杨二一',21,'女',1917,99),(899,'尤八二',30,'男',1914,93),(901,'郑五六',30,'女',1912,71),(903,'吕二六',22,'女',1912,86),(904,'陈六九',30,'男',1912,81),(905,'许十二',27,'女',1915,69),(908,'钱七二',20,'男',1915,84),(909,'吕八一',20,'女',1910,78),(910,'朱七十',21,'女',1918,91),(911,'魏六五',24,'男',1916,63),(912,'冯九一',28,'男',1914,67),(913,'沈四四',30,'女',1917,85),(914,'孙一六',30,'女',1917,86),(915,'章三六',26,'男',1920,81),(916,'周八七',29,'女',1910,72),(918,'将四一',22,'男',1920,65),(921,'吴二二',23,'女',1915,70),(922,'李九八',27,'男',1920,83),(923,'尤十八',26,'男',1918,64),(924,'魏十四',26,'女',1915,92),(927,'周九四',28,'男',1920,64),(929,'钱五九',23,'女',1913,100),(931,'孙四七',27,'女',1915,81),(932,'郑四四',30,'男',1920,99),(942,'朱三五',23,'女',1915,79),(944,'沈十四',24,'男',1910,100),(946,'尤九六',26,'女',1914,92),(948,'周九七',27,'男',1913,70),(949,'孙六九',21,'女',1911,81),(952,'章一七',20,'女',1915,100),(953,'吴六七',30,'女',1910,100),(955,'将十八',30,'男',1916,100),(956,'许五五',28,'男',1917,100),(957,'郑九一',20,'女',1911,100),(958,'何九十',30,'女',1920,100),(959,'赵八十',29,'女',1916,100),(961,'王八三',25,'男',1912,100),(963,'王五九',28,'男',1910,100),(965,'许四二',21,'女',1918,100),(966,'孙二十',26,'男',1920,100),(967,'杨八三',28,'女',1912,100),(968,'将九八',26,'男',1915,100),(969,'许九一',30,'男',1916,100),(972,'尤七四',23,'女',1910,100),(973,'何三六',27,'男',1912,100),(974,'孙八三',23,'女',1911,100),(975,'李三六',26,'女',1918,100),(977,'章十二',21,'女',1914,100),(980,'沈八一',24,'女',1915,100),(984,'陈一十',23,'女',1915,100),(986,'孙八九',30,'男',1917,100),(988,'沈九十',27,'男',1919,100),(990,'楚八五',29,'女',1920,100),(991,'琴十四',21,'女',1915,100),(994,'郑十二',21,'男',1911,100),(995,'冯九一',22,'男',1920,100),(996,'赵二二',24,'女',1913,100),(1002,'韩四一',24,'女',1917,100),(1003,'冯四三',23,'男',1912,100),(1004,'周十一',28,'男',1911,100),(1006,'吕一六',21,'女',1916,100),(1013,'郑六一',27,'男',1917,100),(1014,'将十六',27,'男',1914,100),(1015,'冯七八',20,'男',1917,100),(1017,'何七一',21,'女',1912,100),(1019,'沈十六',25,'女',1916,100),(1020,'杨一八',26,'女',1919,100),(1021,'吕五二',29,'男',1914,100),(1022,'楚六四',26,'女',1919,100);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `passwor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='使用者';

#
# Data for table "user"
#

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'丽丽','122456'),(2,'wss','123yy7'),(3,'iii','456789'),(8,'122','122'),(9,'wxxxx','1234567');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;