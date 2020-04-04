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
-- Table structure for table `admission_teacherinfo`
--

DROP TABLE IF EXISTS `admission_teacherinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admission_teacherinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `qualifications` varchar(255) NOT NULL,
  `subject_teaches` varchar(10) NOT NULL,
  `contact_num` varchar(10) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(20) NOT NULL,
  `postal_code` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission_teacherinfo`
--

LOCK TABLES `admission_teacherinfo` WRITE;
/*!40000 ALTER TABLE `admission_teacherinfo` DISABLE KEYS */;
INSERT INTO `admission_teacherinfo` VALUES (1,'Malathi','Kodem','Female','1970-02-03','B.Ed','Telugu','9440123123','malathi@gmail.com','Kamareddy','Kamareddy','Telangana','India','503111'),(2,'Vamsi','CH','Male','1980-04-07','M.Ed','Hindi','1231231234','vamsi@gmail.com','Hyderabad','Hyderabad','Telangana','India','500008'),(3,'Brad','Ben','Male','1988-09-27','M.Ed','English','6667777999','brad@gmail.com','Gachibowli','Hyderabad','Telangana','India','500043'),(4,'Swetha','Gajelli','Female','1985-05-05','M.Ed','Maths','9889440440','swetha@gmail.com','Kamareddy','Hyderabad','Telangana','India','503111'),(5,'Sandhya','Gajelli','Female','1989-07-09','B.Ed','Science','7897648779','sandhya@gmail.com','Hyderabad','Hyderabad','Telangana','India','500032'),(6,'Sumila','Boddula','Female','1960-05-05','B.Ed','Social','6576387058','sumila@gmail.com','Hyderabad','Hyderabad','Telangana','India','500008');
/*!40000 ALTER TABLE `admission_teacherinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-03  1:57:44
