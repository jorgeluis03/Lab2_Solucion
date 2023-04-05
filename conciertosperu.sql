CREATE DATABASE  IF NOT EXISTS `conciertosperu` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `conciertosperu`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: conciertosperu
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `artistas`
--

DROP TABLE IF EXISTS `artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artistas` (
  `idArtistas` int NOT NULL,
  `Nombre_Grupo` varchar(45) DEFAULT NULL,
  `Fecha_creacion` date DEFAULT NULL,
  `Tipo_musica` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idArtistas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistas`
--

LOCK TABLES `artistas` WRITE;
/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` VALUES (1,'Grupo 5','2020-04-05','Cumbia'),(2,'Nectar','2020-05-04','Chicha'),(3,'Yaipen','2020-04-07','Cumbia');
/*!40000 ALTER TABLE `artistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concierto`
--

DROP TABLE IF EXISTS `concierto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concierto` (
  `idConcierto` int NOT NULL,
  `Fecha_evento` varchar(45) DEFAULT NULL,
  `proveedores_idProveedores` int NOT NULL,
  `artistas_idArtistas` int NOT NULL,
  PRIMARY KEY (`idConcierto`),
  KEY `fk_Concierto_proveedores_idx` (`proveedores_idProveedores`),
  KEY `fk_Concierto_artistas1_idx` (`artistas_idArtistas`),
  CONSTRAINT `fk_Concierto_artistas1` FOREIGN KEY (`artistas_idArtistas`) REFERENCES `artistas` (`idArtistas`),
  CONSTRAINT `fk_Concierto_proveedores` FOREIGN KEY (`proveedores_idProveedores`) REFERENCES `proveedores` (`idProveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concierto`
--

LOCK TABLES `concierto` WRITE;
/*!40000 ALTER TABLE `concierto` DISABLE KEYS */;
INSERT INTO `concierto` VALUES (1,'28 marzo 2020',1,1),(2,'20 junio 2022',2,3),(3,'15 mayo 2023',3,2);
/*!40000 ALTER TABLE `concierto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrantes`
--

DROP TABLE IF EXISTS `integrantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrantes` (
  `idIntegrantes` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Edad` int DEFAULT NULL,
  `Anhios_exp` int DEFAULT NULL,
  `rol` varchar(40) DEFAULT NULL,
  `artistas_idArtistas` int NOT NULL,
  PRIMARY KEY (`idIntegrantes`),
  KEY `fk_integrantes_artistas1_idx` (`artistas_idArtistas`),
  CONSTRAINT `fk_integrantes_artistas1` FOREIGN KEY (`artistas_idArtistas`) REFERENCES `artistas` (`idArtistas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrantes`
--

LOCK TABLES `integrantes` WRITE;
/*!40000 ALTER TABLE `integrantes` DISABLE KEYS */;
INSERT INTO `integrantes` VALUES (1,'JOrge',20,4,'Cantante',1),(2,'Noe',22,5,'Bajista',2),(3,'Jhon',22,5,'Guitarrista',3);
/*!40000 ALTER TABLE `integrantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedores` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Telefono` int DEFAULT NULL,
  `Elemento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Jorge',986126844,'Guitarra'),(2,'Luis ',789456123,'Bajo'),(3,'Lucho ',789456123,'Faluta');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'conciertosperu'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-05  8:38:26
