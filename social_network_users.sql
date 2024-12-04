-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: social_network
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `posts` int DEFAULT NULL,
  `comments` int DEFAULT NULL,
  `likes` int DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_posts_idx` (`posts`),
  KEY `fk_comments_idx` (`comments`),
  KEY `fk_likes_idx` (`likes`),
  CONSTRAINT `fk_comments` FOREIGN KEY (`comments`) REFERENCES `comments` (`id_comment`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_likes` FOREIGN KEY (`likes`) REFERENCES `likes` (`id_like`),
  CONSTRAINT `fk_posts` FOREIGN KEY (`posts`) REFERENCES `posts` (`id_post`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alice Johnson','alice.johnson@example.com','1990-05-15',NULL,NULL,NULL),(2,'Bob Smith','bob.smith@example.com','1985-11-22',NULL,NULL,NULL),(3,'Charlie Brown','charlie.brown@example.com','1992-08-05',NULL,NULL,NULL),(4,'Diana Prince','diana.prince@example.com','1995-03-18',NULL,NULL,NULL),(5,'Ethan Hunt','ethan.hunt@example.com','1987-01-12',NULL,NULL,NULL),(6,'Fiona Apple','fiona.apple@example.com','1993-07-29',NULL,NULL,NULL),(7,'George Miller','george.miller@example.com','1989-12-10',NULL,NULL,NULL),(8,'Hannah White','hannah.white@example.com','1996-09-24',NULL,NULL,NULL),(9,'Ian Black','ian.black@example.com','1991-04-02',NULL,NULL,NULL),(10,'Jenna Green','jenna.green@example.com','1994-06-13',NULL,NULL,NULL),(11,'Kevin Adams','kevin.adams@example.com','1986-10-27',NULL,NULL,NULL),(12,'Laura Blue','laura.blue@example.com','1992-02-08',NULL,NULL,NULL),(13,'Michael Gray','michael.gray@example.com','1988-11-15',NULL,NULL,NULL),(14,'Nina Red','nina.red@example.com','1995-07-01',NULL,NULL,NULL),(15,'Oscar Gold','oscar.gold@example.com','1990-03-19',NULL,NULL,NULL),(16,'Paula Silver','paula.silver@example.com','1993-12-25',NULL,NULL,NULL),(17,'Quincy Brown','quincy.brown@example.com','1987-09-14',NULL,NULL,NULL),(18,'Rachel White','rachel.white@example.com','1996-11-02',NULL,NULL,NULL),(19,'Steven Black','steven.black@example.com','1991-05-30',NULL,NULL,NULL),(20,'Tina Green','tina.green@example.com','1994-08-22',NULL,NULL,NULL),(21,'Uma Blue','uma.blue@example.com','1992-01-10',NULL,NULL,NULL),(22,'Victor Gray','victor.gray@example.com','1988-04-18',NULL,NULL,NULL),(23,'Wendy Red','wendy.red@example.com','1995-10-31',NULL,NULL,NULL),(24,'Xavier Gold','xavier.gold@example.com','1990-06-20',NULL,NULL,NULL),(25,'Yvonne Silver','yvonne.silver@example.com','1993-09-05',NULL,NULL,NULL),(26,'Zachary Brown','zachary.brown@example.com','1987-12-21',NULL,NULL,NULL),(27,'Abigail White','abigail.white@example.com','1996-03-11',NULL,NULL,NULL),(28,'Brandon Black','brandon.black@example.com','1991-07-09',NULL,NULL,NULL),(29,'Catherine Green','catherine.green@example.com','1994-10-15',NULL,NULL,NULL),(30,'Derek Blue','derek.blue@example.com','1992-05-06',NULL,NULL,NULL),(31,'Emily Gray','emily.gray@example.com','1988-01-23',NULL,NULL,NULL),(32,'Frank Red','frank.red@example.com','1995-08-19',NULL,NULL,NULL),(33,'Grace Gold','grace.gold@example.com','1990-02-14',NULL,NULL,NULL),(34,'Henry Silver','henry.silver@example.com','1993-12-04',NULL,NULL,NULL),(35,'Ivy Brown','ivy.brown@example.com','1987-03-07',NULL,NULL,NULL),(36,'Jack White','jack.white@example.com','1996-06-12',NULL,NULL,NULL),(37,'Karen Black','karen.black@example.com','1991-11-29',NULL,NULL,NULL),(38,'Liam Green','liam.green@example.com','1994-04-16',NULL,NULL,NULL),(39,'Mia Blue','mia.blue@example.com','1992-09-30',NULL,NULL,NULL),(40,'Nathan Gray','nathan.gray@example.com','1988-07-03',NULL,NULL,NULL),(41,'Olivia Red','olivia.red@example.com','1995-11-20',NULL,NULL,NULL),(42,'Patrick Gold','patrick.gold@example.com','1990-05-01',NULL,NULL,NULL),(43,'Quinn Silver','quinn.silver@example.com','1993-08-26',NULL,NULL,NULL),(44,'Rebecca Brown','rebecca.brown@example.com','1987-10-11',NULL,NULL,NULL),(45,'Sam White','sam.white@example.com','1996-02-17',NULL,NULL,NULL),(46,'Terry Black','terry.black@example.com','1991-06-25',NULL,NULL,NULL),(47,'Ursula Green','ursula.green@example.com','1994-12-09',NULL,NULL,NULL),(48,'Victor Blue','victor.blue@example.com','1992-03-13',NULL,NULL,NULL),(49,'Wendy Gray','wendy.gray@example.com','1988-11-07',NULL,NULL,NULL);
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

-- Dump completed on 2024-12-04 16:34:36
