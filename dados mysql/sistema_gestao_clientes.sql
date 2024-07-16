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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `estado_civil` enum('S','C') DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'miguel','21994911088','2004-02-25','C','M','São Paulo',20,'Rua santa lúcia',400,'N.senhora de fátima'),(2,'matheus','86994923100','2003-04-10','S','M','Parnaíba',20,'Rua Arlindomar',320,'bairro Elaine'),(3,'danilo','86994945101','2004-04-10','S','M','São joão dos pilãos',20,'Rua santana do parnaíba',300,'bairro são josé'),(4,'Naryara','86994329160','1999-03-01','C','F','Parnaíba',25,'Rua sei lá',3000,'Bairro Danilo Soares'),(5,'lutiara','86999139921','2004-05-12','C','F','Piriripiri',20,'Rua gabriel Rocha',20,'bairro sao francisco'),(6,'gabriel','86994129921','2004-12-11','S','M','Parnaíba',19,'Rua matheus Monteiro',405,'bairro geregotango'),(7,'william','86994399801','2000-07-14','C','M','Barro duro',25,'Rua alanzoka',40,'Bairro silva Sauro'),(8,'Ana gabriele','59994914222','2003-11-10','C','M','Itapiranga',20,'Rua alberto Silva',20,'B.do carmo'),(9,'Avelino silva','86994429352','1992-08-08','C','M','Teresina',32,'Rua monteiro Lobato',302,'Bairro Santos Alves'),(10,'vitor emanuel','86994429031','1985-09-12','S','M','Tutoia',38,'Rua Ceará',506,'Bairro Piauí');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-15 21:50:18
