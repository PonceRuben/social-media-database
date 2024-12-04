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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id_post` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `date_of_post` date DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `likes` int DEFAULT NULL,
  `content` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id_post`),
  KEY `fk_user_idx` (`id_user`),
  CONSTRAINT `fk_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'2023-11-25','Primer post del usuario 1',10,'Contenido interesante del usuario 1.'),(2,1,'2023-11-26','Segundo post del usuario 1',5,'Otra publicación fascinante del usuario 1.'),(3,2,'2023-11-25','Primer post del usuario 2',8,'Post inicial del usuario 2.'),(4,2,'2023-11-28','Segundo post del usuario 2',3,'Otra gran contribución del usuario 2.'),(5,3,'2023-11-24','Primer post del usuario 3',15,'Contenido único del usuario 3.'),(6,3,'2023-11-29','Segundo post del usuario 3',7,'Más reflexiones del usuario 3.'),(7,4,'2023-11-22','Primer post del usuario 4',12,'Interesante aporte del usuario 4.'),(8,4,'2023-11-27','Segundo post del usuario 4',9,'Ideas adicionales del usuario 4.'),(9,5,'2023-11-23','Primer post del usuario 5',6,'Contenido llamativo del usuario 5.'),(10,5,'2023-11-30','Segundo post del usuario 5',4,'Pensamientos nuevos del usuario 5.'),(11,6,'2023-11-21','Primer post del usuario 6',11,'Primera publicación del usuario 6.'),(12,6,'2023-11-29','Segundo post del usuario 6',8,'Más contribuciones del usuario 6.'),(13,7,'2023-11-22','Primer post del usuario 7',13,'Ideas interesantes del usuario 7.'),(14,7,'2023-11-28','Segundo post del usuario 7',5,'Siguientes pensamientos del usuario 7.'),(15,8,'2023-11-20','Primer post del usuario 8',9,'Publicación inicial del usuario 8.'),(16,8,'2023-11-27','Segundo post del usuario 8',6,'Post adicional del usuario 8.'),(17,9,'2023-11-24','Primer post del usuario 9',7,'Primera idea del usuario 9.'),(18,9,'2023-11-26','Segundo post del usuario 9',2,'Siguientes pensamientos del usuario 9.'),(19,10,'2023-11-23','Primer post del usuario 10',4,'Comentario inicial del usuario 10.'),(20,10,'2023-11-25','Segundo post del usuario 10',6,'Publicación extra del usuario 10.');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04 16:34:38
