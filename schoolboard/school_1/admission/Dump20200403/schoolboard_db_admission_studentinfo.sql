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
-- Table structure for table `admission_studentinfo`
--

DROP TABLE IF EXISTS `admission_studentinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admission_studentinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `student_class` int(10) unsigned NOT NULL,
  `date_of_birth` date NOT NULL,
  `acadamic_year` int(10) unsigned DEFAULT NULL,
  `gender` varchar(50) NOT NULL,
  `student_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission_studentinfo`
--

LOCK TABLES `admission_studentinfo` WRITE;
/*!40000 ALTER TABLE `admission_studentinfo` DISABLE KEYS */;
INSERT INTO `admission_studentinfo` VALUES (1,'Sreeja','Gajelli',10,'1994-07-22',2020,'Female',''),(2,'Manoj','Boddula',9,'1990-10-27',2020,'Male',''),(3,'Aravind','Gajelli',8,'1991-01-31',2020,'Male',''),(4,'Teja','Kodem',7,'2001-02-06',2020,'Male',''),(5,'Bannu','Kusuma',6,'2000-03-20',2020,'Male','2020-02-25 09:39:03.749568+00:00'),(6,'Sarah','S',5,'1999-09-09',2020,'Female','2020-02-25 09:39:03.749568+00:00'),(7,'Munni','Kusuma',4,'2002-03-20',2020,'Female',''),(8,'Mike','M',3,'2002-08-04',2020,'Male','2020-02-25 09:39:03.749568+00:00'),(9,'Sumedha','kodem',2,'2010-07-04',2020,'Female','2020-02-25 09:39:03.749568+00:00'),(10,'Sriragha','Bandla',1,'2017-08-08',2020,'Female','2020-02-25 09:39:03.749568+00:00'),(11,'Christopher','C',9,'1990-06-06',2020,'Male','2020-02-25 09:39:03.749568+00:00'),(12,'kris','k',8,'2002-11-28',2020,'Female','2020-02-25 09:39:03.749568+00:00'),(13,'Tweety','K',2,'2011-08-09',2020,'Female','2020-02-25 09:39:03.749568+00:00'),(14,'Sam','Kayak',2,'2008-12-25',2020,'Male','2020-02-25 09:39:03.749568+00:00'),(15,'Monika','M',1,'2008-09-23',2020,'Female','2020-02-25 09:39:03.749568+00:00'),(16,'Lorena','Gyna',10,'2003-05-09',2020,'Female','2020-02-25 09:39:03.749568+00:00'),(17,'Kelly','Kim',3,'1999-07-23',2020,'Male','2020-02-25 09:39:03.749568+00:00'),(18,'Angelo','J',8,'1999-08-24',2020,'Male',''),(19,'Welly','K',6,'1997-09-26',2020,'Male','2020-02-25 09:39:03.749568+00:00'),(20,'Bhanu','B',5,'2000-11-16',2020,'Male',''),(21,'Student','S',5,'2000-12-29',2020,'Male','image2.jpg'),(22,'Surya','S',4,'2004-12-26',2020,'Male','image3.jpg'),(23,'Json','J',7,'2003-09-09',2020,'Male',''),(25,'Nancy','Negg',3,'2004-08-17',2020,'Female',NULL),(26,'Megna','Maggi',7,'2009-12-19',2020,'Female',NULL),(27,'David','Dat',8,'2001-12-27',2020,'Male',NULL);
/*!40000 ALTER TABLE `admission_studentinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-03  1:57:42
