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
-- Table structure for table `admission_studentparentinfo`
--

DROP TABLE IF EXISTS `admission_studentparentinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admission_studentparentinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `contact_info` varchar(10) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admission_studentpar_student_id_063c797d_fk_admission` (`student_id`),
  CONSTRAINT `admission_studentpar_student_id_063c797d_fk_admission` FOREIGN KEY (`student_id`) REFERENCES `admission_studentinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission_studentparentinfo`
--

LOCK TABLES `admission_studentparentinfo` WRITE;
/*!40000 ALTER TABLE `admission_studentparentinfo` DISABLE KEYS */;
INSERT INTO `admission_studentparentinfo` VALUES (1,'Goraknath','Suryakala','9849091412','sreeja@gmail.com','      Mehdipatnam','','Hyderabad','Telangana','India','500028',1),(2,'Ramchandram','Sumila','9989089000','manoj@gmail.com',' Boduppal','','Hyderabad','Telangana','India','500008',2),(3,'Goraknath','Suryakala','7601081361','aravind@gmail.com','       Mehdipatnam','Pillar 85','Hyderabad','Telangana','india','500028',3),(4,'Kishore','Malathi','6476730668','teja@yahoo.com','  Kamareddy','','Kamareddy','Telangana','India','503111',4),(5,'Krishna','Shashirakha','8888888888','bannu@gmail.com','Kamareddy','','Kamareddy','Telangana','India','503111',5),(6,'Saint','Sanah','2222222222','sara@yahoo.com','Hitechcity','','Hyderabad','Telangana','India','500009',6),(7,'Krishna','Shasirekha','6666666666','munni@gmail.com',' Kamareddy','','Hyderabad','Telangana','India','503111',7),(8,'Michel','Myna','7777777777','mike#hotmail.com','Madhapur','','Hyderabad','Telangana','India','500055',8),(9,'Sreedhar','Swetha','5555555555','swetha@gmail.com','Kamareddy','','Hyderabad','Telangana','India','503111',9),(10,'Praveen','Sandhya','3333333333','sandhya@gmail.com','Shanlarpally','BDL','Hyderabad','Telangana','India','504888',10),(11,'James','Kaira','5675675678','james@gmail.com','Kukatpally','','Hyderabad','Telangana','India','500012',11),(12,'James','Jenner','2244668800','jenner@gmail.com','Ameerpet','','Hyderabad','Telangana','India','500076',12),(13,'Tweet','Twinkle','2342342344','tweety@gmail.com','Hyderabad','','Hyderabad','Telangana','India','500034',13),(14,'Samrat','samantha','4564564656','sam@gmail.com','Hyderabad','','Hyderabad','Telangana','India','500045',14),(15,'Mahider','Mona','9849088099','mona@gmail.com','Uppal','','Hyderbad','Telangana','India','500034',15),(16,'Parry','Micheal','6753746587','parry@gmail.com','Mindspace','','Hyderabad','Telangan','India','500089',16),(17,'Srkelly','Happy','8948576958','kelly@gmail.com','Hyderabad','','Hyderabad','Telangana','India','500076',17),(18,'Jesus','Lavi','5674987398','levi@yahoo.com','  Hyderabad','','Hyderabad','Telangana','India','500010',18),(19,'Wendy','Vicky','6677788888','vicky@gmail.com','Hyderabad','','Hyderabad','Telangana','India','500056',19),(20,'Bobby','Benny','5676987980','benny@hotmail.com','   LB Nagar','','Hyderabad','Telangana','India','500072',20),(21,'Fstudent','Mstudent','1234567890','student@gmail.com','Hyderabad','','Hyderabad','Telangana','India','500067',21),(22,'Fsurya','Msurya','1234567890','surya@gmail.com','MytrivanaM','','Hyderabad','Telangana','India','500098',22),(23,'Jag','Preet','0987654321','preest@yahoo.com',' Manikonda','','Hyderabad','Telangana','India','500076',23),(25,'Nikil','Neha','9984858898','neha@yahoo.com','Uppal','','Hyderabad','Telangana','India','500067',25),(26,'Varun','Vani','9984888888','varun@yahoo.com','Sagar X Road','','Hyderabad','Telangana','India','500087',26),(28,'Dat','Damini','998487708','dat@yahoo.com','Santhosh Nagar','','Hyderabad','Telangana','India','500045',27);
/*!40000 ALTER TABLE `admission_studentparentinfo` ENABLE KEYS */;
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
