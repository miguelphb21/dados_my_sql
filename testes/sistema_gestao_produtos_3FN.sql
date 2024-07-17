CREATE DATABASE  IF NOT EXISTS `sistema_gestao` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistema_gestao`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: sistema_gestao
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.24.04.1

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
-- Table structure for table `produtos_3FN`
--

DROP TABLE IF EXISTS `produtos_3FN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos_3FN` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_fornecedor` (`id_fornecedor`),
  CONSTRAINT `produtos_3FN_ibfk_1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_3FN`
--

LOCK TABLES `produtos_3FN` WRITE;
/*!40000 ALTER TABLE `produtos_3FN` DISABLE KEYS */;
INSERT INTO `produtos_3FN` VALUES (1,1,'Televisao CCL OLED FULL HD',1200.00),(2,2,'Samsung Galaxy s4',899.99),(3,3,'LG K10+',789.90),(4,4,'Microondas Panasonic',899.90),(5,5,'Aspirador de Pó Mallory',599.90),(6,6,'Mouse Dell',89.90),(7,7,'Monitor Asus 60/50hz',790.90),(8,8,'Gabinete Ninja black',199.90),(9,9,'Caderno Cadersil 20m',38.90),(10,10,'Caneta Azul Pilot',9.99);
/*!40000 ALTER TABLE `produtos_3FN` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-16 16:34:13
