-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: panaderia_cola
-- ------------------------------------------------------
-- Server version	8.0.33

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
  `dpi` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `numero_ticket` int NOT NULL,
  `estado` enum('esperando','atendiendo','atendido') DEFAULT 'esperando',
  `creado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'3136156721090','mario',1,'atendido','2024-05-21 01:13:42'),(2,'3136156721090','adolfo',2,'atendido','2024-05-21 01:16:40'),(3,'3136156721090','matias',3,'atendido','2024-05-21 01:17:33'),(4,'3136156721090','ELIAS',4,'atendido','2024-05-21 01:25:25'),(5,'3136156721090','israel',5,'atendido','2024-05-21 01:27:40'),(6,'3136156721090','matias',6,'atendido','2024-05-21 01:54:15'),(7,'3136156721090','matias',7,'atendido','2024-05-21 01:54:16'),(8,'3136156721090','matias',8,'atendido','2024-05-21 01:54:17'),(9,'3136156721090','matias',9,'atendido','2024-05-21 01:54:17'),(10,'3136156721090','matias',10,'atendido','2024-05-21 01:54:17'),(11,'3136156721090','matias',11,'atendido','2024-05-21 01:54:17'),(12,'3136156721090','matias',12,'atendido','2024-05-21 01:54:17'),(13,'3136156721090','matias',13,'atendido','2024-05-21 01:54:18'),(14,'3136156721090','matias',14,'atendido','2024-05-21 01:54:18'),(15,'3136156721090','matias',15,'atendido','2024-05-21 01:54:18'),(16,'3136156721090','matias',16,'atendido','2024-05-21 01:54:18'),(17,'3136156721090','matias',17,'atendido','2024-05-21 01:54:18'),(18,'3136156721090','matias',18,'atendido','2024-05-21 01:54:18'),(19,'3136156721090','matias',19,'atendido','2024-05-21 01:54:19'),(20,'3136156721090','oscar',20,'atendido','2024-05-21 01:54:57'),(21,'3136156721090','oscar',21,'atendido','2024-05-21 01:54:57'),(22,'3136156721090','oscar',22,'atendido','2024-05-21 01:54:58'),(23,'3136156721090','oscar',23,'atendido','2024-05-21 01:54:58'),(24,'3136156721090','oscar',24,'atendido','2024-05-21 01:54:58'),(25,'3136156721090','oscar',25,'atendido','2024-05-21 01:54:58'),(26,'3136156721090','oscar',26,'atendido','2024-05-21 01:54:58'),(27,'3136156721090','matias',27,'atendido','2024-05-21 02:17:09'),(28,'3136156721090','matias',28,'atendido','2024-05-21 02:17:10'),(29,'3136156721090','matias',29,'atendido','2024-05-21 02:17:10'),(30,'3136156721090','matias',30,'atendido','2024-05-21 02:17:10'),(31,'3136156721090','matias',31,'atendido','2024-05-21 02:17:11'),(32,'','',32,'atendido','2024-05-21 02:22:08'),(33,'3136156721090','mag',33,'atendido','2024-05-21 02:22:12'),(34,'3136156721090','ELIAS',34,'atendido','2024-05-21 02:23:04');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependientes`
--

DROP TABLE IF EXISTS `dependientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `estado` enum('libre','ocupado') DEFAULT 'libre',
  `cliente_actual_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_actual_id` (`cliente_actual_id`),
  CONSTRAINT `dependientes_ibfk_1` FOREIGN KEY (`cliente_actual_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependientes`
--

LOCK TABLES `dependientes` WRITE;
/*!40000 ALTER TABLE `dependientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `dependientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuestas`
--

DROP TABLE IF EXISTS `encuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encuestas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `dependiente_id` int DEFAULT NULL,
  `puntuacion` int DEFAULT NULL,
  `comentarios` text,
  `creado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `dependiente_id` (`dependiente_id`),
  CONSTRAINT `encuestas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `encuestas_ibfk_2` FOREIGN KEY (`dependiente_id`) REFERENCES `dependientes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestas`
--

LOCK TABLES `encuestas` WRITE;
/*!40000 ALTER TABLE `encuestas` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuestas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-20 23:05:20
