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
-- Table structure for table `admission_results`
--

DROP TABLE IF EXISTS `admission_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admission_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telugu` int(11) NOT NULL,
  `hindi` int(11) NOT NULL,
  `english` int(11) NOT NULL,
  `maths` int(11) NOT NULL,
  `science` int(11) NOT NULL,
  `social` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `semester` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admission_results_student_id_76137eb3_fk_admission` (`student_id`),
  CONSTRAINT `admission_results_student_id_76137eb3_fk_admission` FOREIGN KEY (`student_id`) REFERENCES `admission_studentinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission_results`
--

LOCK TABLES `admission_results` WRITE;
/*!40000 ALTER TABLE `admission_results` DISABLE KEYS */;
INSERT INTO `admission_results` VALUES (1,56,35,35,35,35,90,3,'Half Yearly Exam'),(2,45,45,45,45,45,45,8,'Quarterly Exam'),(3,45,45,45,45,45,45,2,'Yearly Exam'),(5,65,65,65,65,65,65,1,'Yearly Exam'),(6,90,90,90,90,90,90,7,'Yearly Exam'),(7,98,78,99,100,100,79,9,'Quarterly Exam'),(8,76,48,76,54,89,80,4,''),(9,98,90,87,88,65,78,10,'Quarterly Exam'),(10,58,67,98,45,87,86,11,'Yearly Exam'),(11,75,65,85,84,79,69,12,''),(12,89,76,90,99,76,82,13,'Half Yearly Exam'),(13,91,92,93,100,95,95,14,'Yearly Exam'),(14,75,90,99,87,67,90,15,'Yearly Exam'),(15,89,89,78,90,89,97,16,'Quarterly Exam'),(16,78,89,99,89,76,98,18,''),(17,67,67,78,89,87,76,5,''),(18,87,98,89,56,67,59,19,'Yearly Exam'),(19,56,67,89,90,76,77,23,'Quarterly Exam'),(20,78,67,85,75,78,89,23,'Half Yearly Exam'),(23,67,78,89,90,87,96,20,'Yearly Exam'),(24,67,78,89,90,73,98,4,'Yearly Exam'),(25,56,67,78,89,90,98,10,'Half Yearly Exam'),(26,76,78,89,78,90,98,8,'Yearly Exam'),(27,45,67,56,78,89,67,12,'Half Yearly Exam'),(29,45,56,67,78,89,90,23,'Half Yearly Exam'),(30,67,78,89,78,87,76,23,'Yearly Exam'),(31,56,56,67,78,45,67,1,'Half Yearly Exam'),(33,80,75,78,76,76,89,1,'Quarterly Exam'),(34,55,66,77,65,67,76,12,'Yearly Exam'),(35,78,87,86,78,84,74,3,'Yearly Exam'),(36,65,67,67,67,67,67,15,'Quarterly Exam'),(37,55,55,55,55,55,55,17,'Quarterly Exam'),(38,56,56,56,56,56,56,8,'Half Yearly Exam'),(39,55,66,77,88,99,98,7,'Quarterly Exam'),(40,67,78,89,56,79,76,7,'Half Yearly Exam');
/*!40000 ALTER TABLE `admission_results` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-03  1:57:43
