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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id_comment` int NOT NULL AUTO_INCREMENT,
  `id_post` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `id_like` int DEFAULT NULL,
  `date_of_comment` date DEFAULT NULL,
  `content` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_user_comment_idx` (`id_user`),
  KEY `id_post_commented_idx` (`id_post`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,3,NULL,NULL,'¡Excelente publicación!'),(2,1,4,NULL,NULL,'Muy interesante, gracias por compartir.'),(3,2,1,NULL,NULL,'Esto me sirvió mucho.'),(4,2,5,NULL,NULL,'Me encanta el contenido.'),(5,3,2,NULL,NULL,'No estoy de acuerdo, pero buen punto.'),(6,3,1,NULL,NULL,'¡Muy bien explicado!'),(7,4,3,NULL,NULL,'Por favor, más contenido como este.'),(8,4,4,NULL,NULL,'Esto me ha ayudado mucho.'),(9,5,2,NULL,NULL,'Podrías explicar más sobre esto.'),(10,5,3,NULL,NULL,'¡Gracias! Muy útil.'),(11,6,5,NULL,NULL,'Buen trabajo.'),(12,6,1,NULL,NULL,'Este tema es interesante.'),(13,7,3,NULL,NULL,'No entiendo esta parte.'),(14,7,4,NULL,NULL,'¡Gracias por compartir!'),(15,8,2,NULL,NULL,'Es justo lo que estaba buscando.'),(16,8,1,NULL,NULL,'Gran publicación.'),(17,9,5,NULL,NULL,'Me ayudaste mucho, gracias.'),(18,9,3,NULL,NULL,'¡Esto es genial!'),(19,10,4,NULL,NULL,'Buen punto.'),(20,10,2,NULL,NULL,'Voy a compartir esto con mis amigos.');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04 16:34:37
