CREATE DATABASE  IF NOT EXISTS `tourism` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `tourism`;
-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: tourism
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.14.04.1

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
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
	`id_goods` int(11) NOT NULL,
	`name_goods` varchar(45) COLLATE utf8_bin DEFAULT NULL,
	`description_goods` text COLLATE utf8_bin,
	`price_goods` int(11) DEFAULT NULL,
	`images_goods` varchar(64) COLLATE utf8_bin DEFAULT NULL,
	PRIMARY KEY (`id_goods`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'Палатка \"Jaguar 2 v.2\"','Лёгкая трекинговая палатка на внешних дугах обеспечивающая максимальный комфорт при минимальном весе. Тент и палатка могут устанавливаться одновременно. Возможна установка отдельно тента без внутренней палатки. Вентиляция внутренней палатки продублирована противомоскитной сеткой.',8900,'Палатка.jpg'),(2,'Рюкзак \"Saiber 90\"','Универсальный туристический рюкзак    В верхней части спины расположена вогнутая внутрь рюкзака объемная деталь с мягкой вставкой и жестким фиксирующим элементом, обеспечивающая больше свободного места для головы    Съемный фронтальный карман можно использовать в качестве удобной поясной сумки    Анатомический, съёмный пояс отлично сидит на бедрах, хорошо перераспределяя нагрузку    Объёмный плавающий клапан, дополнительно имеет два плоских кармана, один внутри самого клапана для документов, второй с обратной стороны    Боковые карманы, изменяемого объёма    Нижний вход фиксируется двумя стяжками, переходящими на дно    Отделения рюкзака разделены перегородкой на молнии    Нижние боковые карманы для фиксирования длинномерных грузов имеют собственные стяжки1',7700,'Рюкзак.jpg'),(3,'Коврик специальный полевой 10мм (190х58х1)','\n    Изготавливается из материала по свойствам сходного с искусственным каучуком    Напряжённая вспененная мелкопористая структура материала в массе, в отличии от обычных пенополиэтиленовых туристических ковров, практически, исключает «пролёживание» в области плеч и таза, не впитывает воду, а так же обеспечивает больший комфорт при использовании на каменистых грунтах и существенно повышает живучесть изделия    За счёт шлихтовки (зашкуривания) обеих рабочих поверхностей ковра значительно снижена возможность проскальзывания в том числе и спального синтетического мешка даже во влажном состоянии ковра (увеличивается коэффициент трения-скольжения)    По теплоизоляционным свойствам сравним с 20-ти мм пенополиэтиленовым ковром',870,'Пенка.jpg'),(4,'Ботинки трекинговые LOMER Fiemme Lady','Материал верха – велюр (т. 2,0 мм) с водоотталкивающей пропиткой + Cordura®. Оптимальное сочетание материалов, обеспечивающее комфорт и легкость этой модели    Подкладка - практичный синтетический материал на мембране Mertex®. Хорошо отводит лишнюю влагу и удерживает тепло    Сменная формованная стелька    Прочная нейлоновая шнуровка гарантирует плотную и удобную посадку по ноге    Подошва Vibram® Viking Black (Резина 100%)    В носочной части ботинка имеется резиновая накладка, обеспечивающая дополнительную защиту от механических воздействий при ходьбе    Разнонаправленный протектор гарантирует оптимальное сцепление с поверхностью',8240,'Ботинки.jpg'),(5,'Аптечка маршрутная МНМ','Аптечка маршрутная носимая малая (МНМ) - содержит групповой комплект средств первой медицинской помощи. Предназначен для медицинского обеспечения групп людей в условиях природной среды в том числе во время экспедиций, походов, охоты, соревнований в условиях природной среды',5940,'Аптечка.jpg');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`username` char(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
	`password` char(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
	`email` char(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
	`role` char(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
	`firstname` char(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
	`lastname` char(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
	`locale` char(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'en_US',
	`confirmed` bit(1) DEFAULT b'0',
	`active` bit(1) DEFAULT b'0',
	`uuid` char(50) DEFAULT NULL,
	`deletedate` date DEFAULT NULL,
	`vote` float DEFAULT NULL,
	`vote_count` int(11) DEFAULT NULL,
	UNIQUE KEY `Индекс 2` (`username`),
	KEY `Индекс 1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (76,'1','123456','bugor2896@gmail.com','SIGHTSEER','1','1','en_US','\0','\0','fddc676b-33ed-4d39-9442-c41b6c902589','2016-11-23',NULL,NULL),(69,'1391809730','facebook','eljah@mail.ru','SIGHTSEER','Ilya','Yevlampiev','en','','',NULL,NULL,NULL,NULL),(77,'2','123456','bugor2896@gmail.com','SIGHTSEER','2','2','en_US','\0','\0','96ea2553-3635-4c27-b283-e1f3a64db631','2016-11-23',NULL,NULL),(78,'3','123456','bugor2896@gmail.com','SIGHTSEER','3','3','en_US','','\0',NULL,NULL,NULL,NULL),(74,'MyUser','123456','bugor2896@gmail.com','ADMIN','MyUser','MyUser','ru','','\0',NULL,NULL,NULL,NULL),(56,'eljah','eljah','eljah@mail.ru','SIGHTSEER','Илья',NULL,'ru','','\0',NULL,NULL,NULL,NULL),(57,'eljah2','eljah2','eljah@mail.ru','SIGHTSEER','Илья','Евлампие','ru','\0','\0',NULL,NULL,NULL,NULL),(2,'guide','guide','guide@tourism.tatar','GUIDE','Neo','фы','en_US','','\0',NULL,NULL,3,5),(4,'guide1','guide1','guide1@t.ru','ADMIN','Chief','Architect','en_US','\0','\0',NULL,NULL,NULL,NULL),(66,'guide10','guide10','eljah@mail.ru','SIGHTSEER','10','10','en_US','','\0',NULL,NULL,NULL,NULL),(67,'guide11','guide11','eljah@mail.ru','SIGHTSEER','11','11','en_US','','\0',NULL,NULL,NULL,NULL),(68,'guide12','guide12','eljah@mail.ru','SIGHTSEER','12','12','en_US','','\0',NULL,NULL,NULL,NULL),(71,'guide14','guide14','eljah@mail.ru','SIGHTSEER','14','14','en','','\0',NULL,NULL,NULL,NULL),(58,'guide2','guide2','eljah@mail.ru','SIGHTSEER','','','en_US','\0','\0',NULL,NULL,NULL,NULL),(59,'guide3','guide3','eljah@mail.ru','SIGHTSEER','Илья','Евлампиев','ru','\0','\0',NULL,NULL,NULL,NULL),(60,'guide4','guide4','eljah@mail.ru','SIGHTSEER','Илья','Евлампиев','ru','','\0',NULL,NULL,NULL,NULL),(61,'guide5','guide5','eljah@mail.ru','SIGHTSEER','i','ye','ru','','\0',NULL,NULL,NULL,NULL),(62,'guide6','guide6','eljah@mail.ru','SIGHTSEER','6','6','en_US','\0','\0',NULL,NULL,NULL,NULL),(63,'guide7','guide7','eljah@mail.ru','SIGHTSEER','7','7','en_US','','\0',NULL,NULL,NULL,NULL),(64,'guide8','guide8','eljah@mail.ru','SIGHTSEER','8','8','en_us','','\0',NULL,NULL,NULL,NULL),(79,'md 5','14e1b600b1fd579f47433b88e8d85291','bugor2896@gmail.com','SIGHTSEER','md 5','md 5','en_US','','\0',NULL,NULL,NULL,NULL),(75,'md5','14e1b600b1fd579f47433b88e8d85291','bugor2896@gmail.com','SIGHTSEER','md5','md5','en_US','','\0',NULL,NULL,NULL,NULL),(73,'qwerty','123456','pavlov_egor007@mail.ru','SIGHTSEER','qwerty1','qwerty2','en_US','','\0',NULL,NULL,NULL,NULL),(3,'sightseer','sightseer','sightseer@tourism.tatar','BUSDRIVER','Trinity','Trinity','en_US','\0','\0',NULL,NULL,NULL,NULL),(1,'user','user','user@tourism.tatar','ADMIN','John','Smith','en_US','','\0',NULL,NULL,2,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`user_id` int(11) NOT NULL,
	`text` char(255) COLLATE utf8_bin NOT NULL,
	KEY `Индекс 1` (`id`),
	KEY `FK_notification_users` (`user_id`),
	CONSTRAINT `FK_notification_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_records`
--

DROP TABLE IF EXISTS `shipping_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_records` (
	`id_delivery` int(11) NOT NULL AUTO_INCREMENT,
	`id_goods` int(11) NOT NULL,
	`adress_buer` varchar(45) COLLATE utf8_bin DEFAULT NULL,
	`phone_buyer` varchar(64) COLLATE utf8_bin DEFAULT NULL,
	`comment_buyer` text COLLATE utf8_bin,
	`done_delivery` enum('done','not done') COLLATE utf8_bin DEFAULT 'not done',
	PRIMARY KEY (`id_delivery`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_records`
--

LOCK TABLES `shipping_records` WRITE;
/*!40000 ALTER TABLE `shipping_records` DISABLE KEYS */;
INSERT INTO `shipping_records` VALUES (1,1,'hjkl','45678','fghjkl','not done'),(2,1,'klnv','123','klsmdc','not done'),(3,1,'dkn','21','sdc','not done'),(4,1,'ewr','23','sac','not done'),(5,1,'iuqhc','742','sjdvb','not done'),(6,12,'ddsd','30','df0','done'),(7,1,'kmv','22',';\'sk','not done'),(8,1,'sdkmv','324','pvl,f','not done'),(9,1,'jjj','909','jjj','done'),(10,1,'прол','567','мить','not done'),(11,5,'прол','567','мить','not done'),(12,1,'111','11','11','not done');
/*!40000 ALTER TABLE `shipping_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routes` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`plan_id` int(11) DEFAULT NULL,
	`point_id` int(11) NOT NULL,
	`point_order` int(11) NOT NULL,
	KEY `Индекс 1` (`id`),
	KEY `FK_routes_excursion_plan` (`plan_id`),
	KEY `FK_routes_points` (`point_id`),
	KEY `FK_routes_points_2` (`point_order`),
	CONSTRAINT `FK_routes_excursion_plan` FOREIGN KEY (`plan_id`) REFERENCES `excursion_plan` (`id`),
	CONSTRAINT `FK_routes_points` FOREIGN KEY (`point_id`) REFERENCES `points` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (2,1,2,4),(3,1,3,3),(4,1,4,2),(18,1,20,5),(19,1,21,6),(20,1,22,7),(21,1,23,8),(22,1,24,9),(23,1,25,10),(24,1,26,11),(25,1,27,12),(26,1,28,13),(27,1,29,14),(28,2,30,1),(29,2,31,2),(30,2,32,3),(31,2,33,4),(32,2,34,5),(33,2,35,6),(34,2,36,7),(35,2,37,8),(36,2,38,9),(37,2,39,10),(38,2,40,11),(39,2,41,12),(40,2,42,13),(41,2,43,14);
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-19 16:50:39
