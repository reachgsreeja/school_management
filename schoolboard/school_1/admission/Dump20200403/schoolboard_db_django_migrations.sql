-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: schoolboard_db
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-02-23 06:24:07.184160'),(2,'auth','0001_initial','2020-02-23 06:24:07.639808'),(3,'admin','0001_initial','2020-02-23 06:24:08.826714'),(4,'admin','0002_logentry_remove_auto_add','2020-02-23 06:24:09.136995'),(5,'admin','0003_logentry_add_action_flag_choices','2020-02-23 06:24:09.154335'),(6,'admission','0001_initial','2020-02-23 06:24:09.520397'),(7,'contenttypes','0002_remove_content_type_name','2020-02-23 06:24:10.180252'),(8,'auth','0002_alter_permission_name_max_length','2020-02-23 06:24:10.313778'),(9,'auth','0003_alter_user_email_max_length','2020-02-23 06:24:10.365847'),(10,'auth','0004_alter_user_username_opts','2020-02-23 06:24:10.378091'),(11,'auth','0005_alter_user_last_login_null','2020-02-23 06:24:10.597930'),(12,'auth','0006_require_contenttypes_0002','2020-02-23 06:24:10.607393'),(13,'auth','0007_alter_validators_add_error_messages','2020-02-23 06:24:10.633004'),(14,'auth','0008_alter_user_username_max_length','2020-02-23 06:24:10.811647'),(15,'auth','0009_alter_user_last_name_max_length','2020-02-23 06:24:10.977492'),(16,'auth','0010_alter_group_name_max_length','2020-02-23 06:24:11.026627'),(17,'auth','0011_update_proxy_permissions','2020-02-23 06:24:11.052358'),(18,'sessions','0001_initial','2020-02-23 06:24:11.105417'),(19,'admission','0002_auto_20200223_0432','2020-02-23 09:33:49.195632'),(20,'admission','0003_auto_20200224_0441','2020-02-24 15:30:13.527584'),(21,'admission','0004_results_total','2020-02-24 15:30:13.627742'),(22,'admission','0005_remove_results_total','2020-02-24 15:30:13.900110'),(23,'admission','0006_auto_20200225_0154','2020-02-25 06:56:12.675957'),(24,'admission','0007_auto_20200225_0437','2020-02-25 09:39:03.973957'),(25,'admission','0008_auto_20200225_0441','2020-02-25 09:41:36.472878'),(26,'admission','0009_auto_20200225_0502','2020-02-25 10:02:25.070582'),(27,'admission','0010_remove_results_total_marks','2020-02-25 10:12:51.624765'),(28,'admission','0011_remove_results_total_marks','2020-02-25 10:43:08.990840'),(29,'admission','0012_auto_20200226_0151','2020-02-26 06:51:27.097281'),(30,'admission','0013_auto_20200226_0239','2020-02-26 07:40:15.115592'),(31,'admission','0014_remove_results_total_marks','2020-03-03 13:14:24.743299'),(32,'admission','0015_auto_20200331_0259','2020-03-31 07:01:08.053160'),(33,'admission','0016_remove_results_total_marks','2020-03-31 07:05:09.550553'),(34,'admission','0017_auto_20200331_0813','2020-03-31 12:14:08.907968');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-03  1:57:41
