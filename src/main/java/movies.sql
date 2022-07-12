CREATE DATABASE  IF NOT EXISTS `movies` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `movies`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: movies
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cadena`
--

DROP TABLE IF EXISTS `cadena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cadena` (
  `idcadena` int(11) NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `nombre_comercial` varchar(45) DEFAULT NULL,
  `ruc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcadena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadena`
--

LOCK TABLES `cadena` WRITE;
/*!40000 ALTER TABLE `cadena` DISABLE KEYS */;
INSERT INTO `cadena` VALUES (1,'CINEPLEX S.A','Cineplanet','20429683581'),(2,'CINEMARK DEL PERU S.R.L','Cinemark','20337771085'),(3,'PENTARAMA S.A.','Cinerama','20510360932'),(4,'UVK MULTICINES','UVK','20388128748');
/*!40000 ALTER TABLE `cadena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartelera`
--

DROP TABLE IF EXISTS `cartelera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cartelera` (
  `idCartelera` int(11) NOT NULL AUTO_INCREMENT,
  `idpelicula` int(11) NOT NULL,
  `idcine` int(11) NOT NULL,
  `3d` int(11) NOT NULL,
  `doblada` int(11) NOT NULL,
  `subtitulada` int(11) NOT NULL,
  `horario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCartelera`),
  KEY `fk_table1_cine1` (`idcine`),
  KEY `fk_table1_pelicula` (`idpelicula`),
  CONSTRAINT `fk_table1_cine1` FOREIGN KEY (`idcine`) REFERENCES `cine` (`idcine`),
  CONSTRAINT `fk_table1_pelicula` FOREIGN KEY (`idpelicula`) REFERENCES `pelicula` (`idpelicula`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartelera`
--

LOCK TABLES `cartelera` WRITE;
/*!40000 ALTER TABLE `cartelera` DISABLE KEYS */;
INSERT INTO `cartelera` VALUES (1,1,15,1,0,1,'20:00 / 22:45'),(2,1,16,0,0,1,'20:00 / 22:45'),(3,1,20,1,0,1,'20:00 / 22:45'),(4,2,1,1,1,0,'14:30 / 16:20 / 18:10 / 20:00 / 21:50'),(5,2,2,0,1,0,'15:00 / 17:00 / 19:00 / 21:00'),(6,2,2,1,1,0,'16:00 / 18:00 / 20:00 / 22:00'),(7,2,3,0,1,0,'15:00 / 17:00 / 19:00 / 21:00'),(8,2,3,1,1,0,'14:00 / 16:00 / 18:00 / 20:00 / 22:00'),(9,2,4,0,1,0,'13:00 / 14:50 / 16:40 / 18:30 / 20:20'),(10,2,6,0,1,0,'16:00 / 18:00 / 20:00 / 22:00'),(11,2,7,0,1,0,'14:00 / 15:00 / 17:00 / 19:00 / 21:00'),(12,2,8,0,1,0,'13:30 / 15:30 / 17:30 / 19:30 / 21:30'),(13,2,8,1,1,0,'14:30 / 16:30 / 18:30 / 20:30 / 22:30'),(14,2,9,0,1,0,'13:10 / 15:10 / 17:20 / 19:30 / 21:40'),(15,2,9,1,1,0,'14:00 / 16:00 / 18:10 / 20:20 / 22:30'),(16,2,10,0,1,0,'12:30 / 14:30 / 16:30 / 18:30 / 20:30 / 22:30'),(17,2,10,1,1,0,'13:30 / 15:30 / 17:30 / 19:30 / 21:30'),(18,2,11,0,1,0,'14:00 / 16:00 / 18:00 / 20:00 / 22:00'),(19,2,11,1,1,0,'15:00 / 17:00 / 19:10 / 21:20'),(20,2,12,0,1,0,'23:30 / 13:30 / 15:30 / 17:30 / 19:30 / 21:30'),(21,2,13,0,1,0,'13:00 / 15:00 / 17:00 / 19:00 / 21:00'),(22,2,13,1,1,0,'12:00 / 14:00 / 16:00 / 18:00 / 20:00 / 22:00'),(23,2,14,0,1,0,'15:30 / 17:30 / 19:30 / 21:30'),(24,2,15,0,1,0,'13:40 / 15:45 / 18:00 / 20:10 / 22:10'),(25,2,15,1,1,0,'14:45 / 17:00 / 19:10 / 21:10 / 23:10'),(26,2,16,0,1,0,'13:40 / 15:45 / 18:00 / 20:10 / 22:10'),(27,2,16,1,1,0,'14:45 / 17:00 / 19:10 / 21:10 / 23:10'),(28,2,17,0,1,0,'15:10 / 17:20 / 18:20 / 19:30 / 20:30 / 21:45'),(29,2,17,1,1,0,'13:40 / 15:45 / 17:50 / 20:00 / 22:15'),(30,2,18,0,1,0,'14:45 / 16:45 / 18:45 / 20:45 / 22:50'),(31,2,18,1,1,0,'15:40 / 17:40 / 19:40 / 21:50'),(32,2,19,0,1,0,'16:00 / 18:00 / 20:00 / 22:10'),(33,2,19,1,1,0,'14:45 / 17:00 / 19:00 / 21:15'),(34,2,20,0,1,0,'15:45 / 17:50 / 19:45 / 21:45'),(35,2,20,1,1,0,'14:40 / 16:40 / 18:40 / 20:40 / 22:40'),(36,2,21,0,1,0,'15:45 / 5:45 / 19:30 / 21:15'),(37,3,2,0,1,0,'15:30 / 17:30 / 19:30 / 21:20'),(38,3,3,0,1,0,'15:30 / 17:30 / 19:30 / 21:20'),(39,3,4,0,1,0,'13:45 / 15:45 / 17:45 / 19:45 / 21:00'),(40,3,6,0,1,0,'15:30 / 17:30 / 19:30 / 21:30'),(41,3,7,0,1,0,'15:30 / 17:30 / 19:30 / 21:30'),(42,3,8,0,1,0,'13:45 / 15:45 / 17:45 / 19:45 / 21:45'),(43,3,8,1,1,0,'14:45 / 16:45 / 18:45 / 20:45'),(44,3,9,0,1,0,'13:40 / 15:40 / 17:40'),(45,3,10,0,1,0,'12:15 / 14:15 / 16:15 / 18:15 / 20:15'),(46,3,11,0,1,0,'14:15 / 16:15 / 18:20 / 20:20'),(47,3,12,0,1,0,'12:00 / 14:00 / 16:00 / 18:00 / 20:00 / 22:00'),(48,3,13,0,1,0,'12:40 / 14:40 / 16:40 / 18:40 / 20:40'),(49,3,14,0,1,0,'14:30 / 16:30 / 18:30 / 20:30'),(50,3,15,0,1,0,'14:20 / 16:30 / 18:30 / 20:45 / 22:45'),(51,3,17,0,1,0,'14:40 / 16:50 / 19:00 / 21:15'),(52,3,19,0,1,0,'15:40 / 17:40 / 19:45 / 21:50'),(53,3,20,0,1,0,'14:50 / 16:50 / 18:50 / 21:00 / 23:10'),(54,3,21,0,1,0,'16:15 / 18:15 / 20:15 / 22:15'),(55,4,2,0,1,0,'16:15 / 18:15 / 20:15 / 22:15'),(56,4,4,0,1,0,'13:30 / 15:30 / 17:30 / 19:30 / 21:30'),(57,4,6,0,1,0,'15:45 / 17:45 / 19:45 / 21:45'),(58,4,8,0,0,1,'14:20 / 16:30 / 18:40 / 20:50 / 23:00'),(59,4,9,0,0,1,'14:10 / 16:25 / 18:40 / 20:50 / 23:00'),(60,4,10,0,0,1,'14:10 / 16:20 / 18:40 / 20:50 / 23:00'),(61,4,12,0,0,1,'23:40 / 13:50 / 16:10 / 18:20 / 20:30 / 22:35'),(62,4,13,0,0,1,'13:10 / 15:20 / 17:30 / 19:40 / 21:50'),(63,4,14,0,0,1,'16:00 / 18:10 / 20:20 / 22:40'),(64,4,15,0,1,0,'14:10 / 16:20 / 18:40 / 21:00 / 23:15'),(65,4,16,0,1,0,'14:10 / 16:20 / 18:40 / 21:00 / 23:15'),(66,4,17,0,1,0,'14:00 / 16:15 / 18:30 / 20:45 / 23:00'),(67,4,18,0,1,0,'18:00 / 20:15 / 22:30'),(68,4,19,0,1,0,'14:30 / 16:30 / 18:40 / 20:45 / 23:00'),(69,5,1,0,1,0,'15:00 / 17:30 / 20:10 / 22:40'),(70,5,2,0,1,0,'21:15'),(71,5,3,0,1,0,'15:15 / 17:40 / 20:10 / 22:40'),(72,5,7,0,0,1,'14:40 / 17:20 / 20:00 / 22:30'),(73,5,8,0,0,1,'15:15 / 17:45 / 20:15 / 22:45'),(74,5,9,0,0,1,'13:50 / 16:20 / 18:50 / 21:20'),(75,5,10,0,0,1,'14:00 / 16:40 / 19:20 / 21:50'),(76,5,11,0,0,1,'15:10 / 17:40 / 20:10 / 22:40'),(77,5,12,0,0,1,'23:35 / 14:10 / 16:40 / 19:10 / 21:50'),(78,5,15,0,1,0,'13:45 / 16:10 / 18:50 / 21:30'),(79,5,16,0,1,0,'13:45 / 16:10 / 18:50 / 21:30'),(80,5,17,0,1,0,'15:00 / 17:40 / 20:15 / 22:45'),(81,5,18,0,1,0,'14:10 / 16:30 / 19:00 / 21:30'),(82,5,20,0,1,0,'15:00 / 17:30 / 20:00 / 22:30'),(83,5,21,0,1,0,'15:15 / 17:30 / 19:45 / 22:00'),(84,6,1,0,1,0,'16:00 / 18:10 / 20:20 / 22:30'),(85,6,2,0,1,0,'15:30 / 17:50 / 20:10 / 22:25'),(86,6,3,0,1,0,'15:30 / 17:40 / 19:50 / 22:00'),(87,6,7,0,0,1,'15:10 / 17:40 / 20:10 / 22:40'),(88,6,8,0,0,1,'13:00 / 15:20 / 17:50 / 20:20 / 22:40'),(89,6,9,0,0,1,'13:00 / 15:20 / 17:40 / 20:10 / 22:40'),(90,6,10,0,0,1,'13:00 / 15:20 / 17:50 / 20:20 / 22:40'),(91,6,11,0,0,1,'14:50 / 17:20 / 19:50 / 22:20'),(92,6,15,0,1,0,'15:10 / 17:20 / 19:45 / 22:00'),(93,6,16,0,1,0,'15:10 / 17:20 / 19:45 / 22:00'),(94,6,17,0,1,0,'14:50 / 17:00 / 19:15 / 21:30'),(95,6,18,0,1,0,'15:30 / 17:50 / 20:00 / 22:15'),(96,6,19,0,1,0,'15:20 / 17:50 / 20:15 / 22:30'),(97,6,20,0,1,0,'14:30 / 17:00 / 19:10 / 21:20 / 23:30'),(98,6,21,0,0,1,'16:30 / 18:30 / 20:30 / 22:30'),(99,7,1,0,0,1,'15:20 / 17:30 / 19:40 / 21:50'),(100,7,2,0,0,1,'15:50 / 18:00 / 20:10 / 22:20'),(101,7,2,1,0,1,'14:50'),(102,7,2,1,1,0,'17:00'),(103,7,3,0,0,1,'15:20 / 17:30 / 19:40 / 21:50'),(104,7,3,1,0,1,'16:00 / 18:10 / 20:20 / 22:30'),(105,7,4,0,1,0,'14:00 / 16:00 / 17:00 / 18:00 / 19:00 / 20:00 / 22:00'),(106,7,6,0,1,0,'14:30 / 16:40 / 18:50 / 21:00'),(107,7,6,1,1,0,'15:00 / 17:10 / 19:20 / 21:30'),(108,7,7,0,0,1,'14:10 / 16:20 / 18:30 / 20:40 / 22:50'),(109,7,7,1,0,1,'14:20 / 16:40'),(110,7,8,0,0,1,'14:10 / 16:25 / 18:50 / 21:10 / 23:20'),(111,7,8,0,1,0,'12:50 / 15:10 / 17:25 / 19:40 / 20:40 / 22:10'),(112,7,8,1,1,0,'14:50 / 17:10 / 19:25 / 21:50'),(113,7,9,0,0,1,'14:50 / 17:00 / 19:20 / 21:30'),(114,7,9,0,1,0,'14:20 / 16:40 / 19:10 / 21:50'),(115,7,9,1,1,0,'13:20 / 15:30 / 18:00 / 20:30 / 22:50'),(116,7,10,0,0,1,'14:40 / 17:00 / 19:10 / 21:20'),(117,7,10,1,1,0,'13:40 / 15:50 / 18:00 / 20:10 / 22:20'),(118,7,11,0,0,1,'14:40 / 17:10 / 19:30 / 21:50'),(119,7,11,1,0,1,'14:10 / 16:20 / 20:40'),(120,7,12,0,1,0,'23:20 / 12:40 / 13:40 / 15:00 / 15:50 / 17:10 / 18:10 / 19:20 / 20:20 / 21:40 / 22:30'),(121,7,12,1,1,0,'12:10 / 14:20 / 16:30 / 18:50 / 21:10'),(122,7,13,0,0,1,'12:20 / 14:50 / 17:10 / 19:20 / 21:30'),(123,7,13,1,1,0,'13:40 / 15:50 / 18:10 / 20:20 / 22:30'),(124,7,14,0,1,0,'14:50 / 17:00 / 19:10 / 21:20 / 22:30'),(125,7,14,1,1,0,'15:50 / 18:00 / 20:10 / 22:20'),(126,7,15,0,0,1,'14:30 / 16:50 / 19:00 / 21:20 / 23:30'),(127,7,15,0,1,0,'13:20 / 15:30 / 17:40 / 20:00 / 22:30'),(128,7,15,1,0,1,'20:30 / 23:00'),(129,7,15,1,1,0,'13:50 / 15:00 / 16:00 / 17:10 / 18:20 / 19:30 / 21:45'),(130,7,16,0,0,1,'13:20 / 15:30 / 17:40 / 20:00 / 22:30'),(131,7,16,0,1,0,'14:30 / 16:50 / 19:00 / 21:20 / 23:30'),(132,7,16,1,0,1,'20:30 / 23:00'),(133,7,16,1,1,0,'13:50 / 15:00 / 16:00 / 17:10 / 18:20 / 19:30 / 21:45'),(134,7,17,0,1,0,'15:20 / 17:30 / 19:45 / 22:00'),(135,7,17,1,1,0,'14:15 / 16:30 / 18:45 / 21:00 / 23:15'),(136,7,18,0,0,1,'15:00 / 17:10 / 19:20 / 21:40'),(137,7,18,1,1,0,'14:00 / 16:10 / 18:20 / 20:30 / 22:40'),(138,7,19,0,1,0,'15:10 / 17:20 / 19:30 / 21:40'),(139,7,19,1,1,0,'16:15 / 18:20 / 20:30 / 22:45'),(140,7,20,0,0,1,'15:10 / 17:10 / 19:30 / 22:00'),(141,7,20,1,0,1,'23:00'),(142,7,20,1,1,0,'14:00 / 16:10 / 18:15 / 20:30'),(143,7,21,0,1,0,'15:00 / 16:00 / 17:00 / 18:00 / 20:00 / 22:10'),(144,8,2,0,1,0,'14:10 / 18:20 / 20:30 / 22:40'),(145,8,7,0,0,1,'14:30 / 16:50 / 19:10 / 21:40'),(146,8,8,0,0,1,'14:40 / 17:00 / 19:20 / 21:40'),(147,8,11,0,0,1,'18:30 / 22:50'),(148,8,15,0,1,0,'18:10 / 23:20'),(149,8,20,0,1,0,'15:30 / 20:15'),(150,9,1,0,0,1,'17:20 / 20:00 / 22:45'),(151,9,2,0,0,1,'15:20 / 16:20 / 18:10 / 19:10 / 21:00 / 22:00 / 23:10'),(152,9,3,0,0,1,'16:15 / 19:00 / 21:50 / 23:10'),(153,9,4,0,1,0,'13:00 / 15:40 / 18:10 / 20:40 / 22:10'),(154,9,5,0,1,0,'16:40 / 19:20 / 22:15'),(155,9,7,0,0,1,'16:00 / 18:50'),(156,9,8,0,0,1,'18:25 / 21:25'),(157,9,9,0,0,1,'22:45'),(158,9,10,0,0,1,'22:15'),(159,9,11,0,0,1,'15:30 / 18:40 / 21:40'),(160,9,12,0,0,1,'23:50 / 17:00 / 22:10'),(161,9,13,0,0,1,'22:40'),(162,9,14,0,0,1,'16:50 / 21:50'),(163,9,15,0,0,1,'13:30 / 19:20'),(164,9,15,0,1,0,'15:20 / 20:20'),(165,9,16,0,1,0,'15:20 / 20:20'),(166,9,17,0,1,0,'22:30'),(167,9,18,0,1,0,'15:15'),(168,9,20,0,0,1,'17:30 / 22:30'),(169,9,21,0,0,1,'19:00 /9:45'),(170,10,4,0,1,0,'14:20 / 21:40'),(171,10,5,0,1,0,'16:30 / 19:00'),(172,10,8,0,1,0,'13:10 / 18:45'),(173,10,15,1,1,0,'16:40 / 22:20'),(174,10,17,0,1,0,'15:30'),(175,12,8,0,0,1,'15:50'),(176,14,6,0,1,0,'20:00 / 22:00'),(177,14,8,0,0,1,'16:20 / 21:35'),(178,14,12,0,1,0,'14:40 / 19:50'),(179,14,14,0,1,0,'14:40 / 19:40'),(180,15,2,0,1,0,'23:00'),(181,15,3,0,1,0,'23:00'),(182,15,5,0,1,0,'21:40'),(183,15,8,0,0,1,'22:50'),(184,16,1,0,1,0,'15:20'),(185,16,2,0,1,0,'16:20'),(186,16,7,0,0,1,'21:50'),(187,16,8,0,0,1,'18:20 / 22:50'),(188,16,11,0,0,1,'22:30');
/*!40000 ALTER TABLE `cartelera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cine`
--

DROP TABLE IF EXISTS `cine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cine` (
  `idcine` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `idcadena` int(11) NOT NULL,
  PRIMARY KEY (`idcine`),
  KEY `fk_cine_cadena1` (`idcadena`),
  CONSTRAINT `fk_cine_cadena1` FOREIGN KEY (`idcadena`) REFERENCES `cadena` (`idcadena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cine`
--

LOCK TABLES `cine` WRITE;
/*!40000 ALTER TABLE `cine` DISABLE KEYS */;
INSERT INTO `cine` VALUES (1,'UVK PLATINO BASADRE',4),(2,'UVK LARCOMAR',4),(3,'UVK CAMINOS DEL INCA',4),(4,'UVK SAN MARTÍN - CENTRO',4),(5,'UVK ASIA',4),(6,'UVK EL AGUSTINO',4),(7,'CinePlanet Alcázar',1),(8,'CinePlanet San Miguel',1),(9,'CinePlanet Primavera',1),(10,'CinePlanet Risso',1),(11,'CinePlanet La Molina',1),(12,'CinePlanet Centro',1),(13,'CinePlanet Centro Cívico',1),(14,'Cineplanet Comas',1),(15,'CINEMARK JOCKEY PLAZA',2),(16,'CINEMARK SAN MIGUEL',2),(17,'CINEMARK MEGA PLAZA',2),(18,'CINEMARK PLAZA LIMA SUR',2),(19,'CINEMARK MALL AVENTURA PLAZA BELLAVISTA',2),(20,'CINEMARK OPEN PLAZA ANGAMOS',2),(21,'Cinerama-El Pacifico',3);
/*!40000 ALTER TABLE `cine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empleado` (
  `idempleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `dni` varchar(8) NOT NULL,
  `salario` decimal(8,2) DEFAULT NULL,
  `fechaContrato` date DEFAULT NULL,
  `nombreUsuario` varchar(45) DEFAULT NULL,
  `edad` int(3) DEFAULT NULL,
  `activo` bit(1) NOT NULL,
  `idcine` int(11) NOT NULL,
  `idjefe` int(11) DEFAULT NULL,
  PRIMARY KEY (`idempleado`),
  KEY `fk_empleado_cine1` (`idcine`),
  KEY `fk_empleado_empleado1` (`idjefe`),
  CONSTRAINT `fk_empleado_cine1` FOREIGN KEY (`idcine`) REFERENCES `cine` (`idcine`),
  CONSTRAINT `fk_empleado_empleado1` FOREIGN KEY (`idjefe`) REFERENCES `empleado` (`idempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Gloria','Baños','28242525',2200.00,'2011-07-03','gloria.banos',28,_binary '',7,NULL),(2,'Oscar','Diaz','06891320',3500.00,'1999-12-12','oscar.diaz',27,_binary '',9,110),(3,'Diego','Zavala','54805105',3000.00,'1998-02-07','diego.zavala',25,_binary '',5,NULL),(4,'Diana','Zapata','59529755',5100.00,'2006-12-14',NULL,27,_binary '\0',9,10),(5,'Carla','Zapata','14514870',2200.00,'2010-02-15',NULL,28,_binary '\0',20,51),(6,'Carlos','Sanchez','79306353',2200.00,'2011-05-15',NULL,29,_binary '\0',7,1),(7,'Renzo','Trujillo','04454993',1600.00,'1995-10-18',NULL,29,_binary '\0',15,48),(8,'Lucero','Martinez','06270287',9900.00,'2000-05-17',NULL,29,_binary '\0',9,NULL),(9,'Magda','Romero','21069897',6300.00,'2000-04-13',NULL,26,_binary '\0',13,81),(10,'Miguel','Galdos','31240948',6600.00,'2006-10-26',NULL,27,_binary '\0',9,131),(11,'Luis','Mendoza','17475179',1500.00,'2006-08-06',NULL,26,_binary '\0',7,1),(12,'Franco','Alarcon','60455297',4500.00,'2010-10-08',NULL,25,_binary '\0',10,28),(13,'Janet','Marca','47515519',3100.00,'2010-01-09',NULL,29,_binary '\0',13,165),(14,'Samantha','Sipion','64333604',4500.00,'1996-09-20',NULL,29,_binary '\0',13,81),(15,'Renzo','Mogrovejo','69644070',1500.00,'2003-04-23',NULL,25,_binary '\0',16,145),(16,'Silvia','Garcia','16247581',5200.00,'2004-02-09',NULL,25,_binary '\0',6,102),(17,'Cinthia','Torres','19694550',7200.00,'2006-05-11',NULL,27,_binary '\0',4,157),(18,'Evelyn','Gutierrez','98008025',7100.00,'1996-03-27',NULL,29,_binary '\0',11,20),(19,'Alessandra','Leon','46356278',7700.00,'1998-01-23',NULL,27,_binary '\0',12,72),(20,'Jose','Tafur','48523535',8500.00,'2010-09-06',NULL,28,_binary '\0',11,70),(21,'Pedro','Valera','25623303',3500.00,'2000-03-28',NULL,25,_binary '\0',8,52),(22,'Daniel','Sanchez','40377759',3200.00,'2002-01-16',NULL,28,_binary '\0',3,59),(23,'Daniela','Huerta','82718552',7700.00,'2001-11-18',NULL,28,_binary '\0',12,72),(24,'Alejandra','Arispe','26767906',2200.00,'2003-10-28',NULL,30,_binary '\0',13,165),(25,'Corali','Ferrer','94667134',9200.00,'2005-09-08',NULL,26,_binary '\0',11,NULL),(26,'Gigi','Laura','15555716',6600.00,'1999-03-24',NULL,26,_binary '\0',9,8),(27,'Natali','Flores','72198579',4400.00,'2002-08-19',NULL,29,_binary '\0',19,168),(28,'Felipe','Carrero','65376585',6000.00,'1997-05-01',NULL,30,_binary '\0',10,NULL),(29,'Daniel','Zavala','17320899',5000.00,'2001-04-15',NULL,28,_binary '\0',9,26),(30,'Karina','Alvarez','67461888',1700.00,NULL,'',30,_binary '\0',5,63),(31,'Pierre','Gutierrez','28555866',4500.00,'2003-04-09',NULL,25,_binary '\0',14,160),(32,'Maria','Chamorro','39038504',6000.00,'1997-03-21',NULL,27,_binary '\0',12,111),(33,'Jorge','Madrid','89245078',4000.00,'1995-01-22',NULL,29,_binary '\0',13,81),(34,'Juvenal','Ormachea','03036908',2200.00,'2004-04-14',NULL,27,_binary '\0',14,160),(35,'Sara','Carrillo','25329291',3200.00,'1995-03-11',NULL,25,_binary '\0',3,129),(36,'Sergio','Ponce','83412210',9600.00,'2003-08-27',NULL,26,_binary '\0',4,NULL),(37,'Rodolfo','Cordero','56517562',2800.00,'2007-05-03',NULL,28,_binary '\0',10,134),(38,'Enrique','Larios','64868442',9700.00,'2009-03-12',NULL,29,_binary '\0',7,1),(39,'Dennis','Cohn','67204552',9000.00,'1999-07-05',NULL,27,_binary '\0',1,NULL),(40,'Rossana','Poma','12758075',4500.00,'2011-02-22',NULL,25,_binary '\0',10,28),(41,'Erick','Beltran','49929534',3000.00,'2002-10-25',NULL,25,_binary '\0',11,78),(42,'Juan','Mamani','82011890',8400.00,'1999-09-14',NULL,30,_binary '\0',4,36),(43,'Marco','Flores','89356868',1600.00,'1998-06-22',NULL,29,_binary '\0',13,165),(44,'Antonio','Ocampo','38779288',7100.00,'2010-02-14',NULL,30,_binary '\0',11,20),(45,'Kathleen','Velasquez','40470649',1600.00,'1996-01-19',NULL,27,_binary '\0',15,48),(46,'Efrain','Schwartz','22757095',5500.00,'2003-11-19',NULL,27,_binary '\0',21,NULL),(47,'Carlos','Bustamante','45109912',4500.00,'1999-02-20',NULL,29,_binary '\0',19,168),(48,'Nelson','Porlles','09123377',3000.00,'1997-12-23',NULL,26,_binary '\0',15,143),(49,'Oscar','Cieza','58717971',8100.00,'2010-12-05',NULL,27,_binary '\0',1,150),(50,'Rosario','Priero','96292755',2100.00,'2004-11-18',NULL,27,_binary '\0',6,16),(51,'Rodrigo','Parra','27918481',4100.00,'1995-06-25',NULL,27,_binary '\0',20,53),(52,'Jorge','Naula','62192956',6000.00,'2004-10-24',NULL,26,_binary '\0',8,139),(53,'Elita','Tacza','87460091',6500.00,'2009-07-23',NULL,28,_binary '\0',20,NULL),(54,'Sandy','Maldonado','57058667',2200.00,'2003-12-16',NULL,26,_binary '\0',14,160),(55,'Aldo','Romero','10319901',3600.00,'2003-01-04',NULL,29,_binary '\0',9,110),(56,'Oscar','Heras','87646786',8200.00,'2005-02-26',NULL,30,_binary '\0',19,NULL),(57,'Areli','Tinoco','29406818',7000.00,'1999-07-05',NULL,25,_binary '\0',13,81),(58,'Carlos','Cerna','44176026',1500.00,'2011-11-29',NULL,27,_binary '\0',21,46),(59,'Andrew','Ramos','94146648',4900.00,'2010-04-03',NULL,26,_binary '\0',3,83),(60,'Mayra','Juarez','57685419',2200.00,'2007-01-30',NULL,26,_binary '\0',12,96),(61,'Jorge','Carpena','24811997',1500.00,'2007-09-04',NULL,30,_binary '\0',16,145),(62,'Diego','Cruz','63894901',3200.00,'2001-03-13',NULL,27,_binary '\0',1,150),(63,'Arlon','Borel','17798573',2300.00,'2009-12-19',NULL,29,_binary '\0',5,88),(64,'Carlos','Rivera','35500191',3400.00,'2003-10-26',NULL,25,_binary '\0',4,65),(65,'Angela','Gutierrez','39563608',7200.00,'2001-12-17',NULL,29,_binary '\0',4,157),(66,'Raul','Heller','93351560',9500.00,'2001-02-26',NULL,30,_binary '\0',3,NULL),(67,'Maria','Dejo','74182494',9600.00,'2010-04-08',NULL,26,_binary '\0',5,3),(68,'Victor','Chang','07881234',1700.00,'2006-03-19',NULL,27,_binary '\0',5,30),(69,'Fernando','Silva','04277832',8500.00,'2003-02-07',NULL,26,_binary '\0',13,NULL),(70,'Mario','Campos','48379340',9900.00,'2006-08-13',NULL,25,_binary '\0',11,NULL),(71,'Javier','Lazo','79275665',2400.00,'2010-11-14',NULL,29,_binary '\0',4,17),(72,'Gustavo','Martinez','86179364',10000.00,'2000-05-25',NULL,25,_binary '\0',12,NULL),(73,'Francisco','Espinoza','06682419',8700.00,'2006-07-05',NULL,29,_binary '\0',19,NULL),(74,'Jose','Berrocal','80275050',7400.00,'2003-03-30',NULL,25,_binary '\0',18,140),(75,'Valeria','Anco','84165461',5600.00,'1998-06-29',NULL,26,_binary '\0',9,26),(76,'Victor','Vera','11037406',3000.00,'2000-01-20',NULL,29,_binary '\0',6,16),(77,'Frank','Farro','28807862',1700.00,'2004-06-27',NULL,26,_binary '\0',20,51),(78,'Alejandra','Chavez','74988812',7100.00,'2004-12-24',NULL,30,_binary '\0',11,20),(79,'Antonio','Poma','22567936',4400.00,'2003-10-12',NULL,29,_binary '\0',19,168),(80,'Luis','Venegas','19431657',3500.00,'1998-07-09',NULL,25,_binary '\0',8,52),(81,'Pamela','Ortiz','21862590',8900.00,'2001-06-10',NULL,28,_binary '\0',13,NULL),(82,'Daniel','Salinas','45161330',2200.00,'1997-02-11',NULL,25,_binary '\0',17,100),(83,'Denzel','Glandel','75297422',7200.00,'2005-11-02',NULL,29,_binary '\0',3,66),(84,'Luis','Gregorio','38494363',5000.00,'1995-05-28',NULL,29,_binary '\0',9,10),(85,'Vanessa','Delgado','48682765',5800.00,'2008-03-08',NULL,29,_binary '\0',3,83),(86,'Jean','Villarreal','26922878',2300.00,'2007-01-13',NULL,30,_binary '\0',5,88),(87,'Christiam','Rojas','14732140',8200.00,'2005-08-11',NULL,30,_binary '\0',18,113),(88,'Adriana','Castañeda','82732851',7400.00,'1997-07-08',NULL,28,_binary '\0',5,146),(89,'Angelo','Velarde','11855728',1700.00,'2010-04-09',NULL,30,_binary '\0',8,162),(90,'Navet','Navarro','89128979',10000.00,'2005-01-29',NULL,26,_binary '\0',15,NULL),(91,'Claudia','Vargas','58430632',8300.00,'2011-05-02',NULL,25,_binary '\0',18,113),(92,'Javier','Pinazo','78509122',1500.00,'2008-08-15',NULL,30,_binary '\0',11,41),(93,'Gustavo','Aguilar','23265536',5600.00,'2009-02-26',NULL,25,_binary '\0',19,56),(94,'Susana','Mendoza','21311462',2200.00,'1996-03-16',NULL,27,_binary '\0',17,100),(95,'Jose','Cadillo','55400442',8600.00,'2003-07-09',NULL,27,_binary '\0',18,113),(96,'Sofia','Torres','84111574',4400.00,'2010-10-16',NULL,26,_binary '\0',12,32),(97,'Lizet','Calle','65536856',2000.00,'1995-05-09',NULL,26,_binary '\0',10,134),(98,'Manuel','Macedo','49955117',2300.00,'2009-08-10',NULL,29,_binary '\0',5,88),(99,'Zunilda','Carvajal','11993030',2200.00,'2011-04-24',NULL,25,_binary '\0',17,100),(100,'Gabriel','Gallardo','13726220',4500.00,'2000-01-27',NULL,29,_binary '\0',17,NULL),(101,'Roman','Huerta','70102344',2000.00,'2004-12-03',NULL,30,_binary '\0',19,47),(102,'Yuri','Fernandez','99154695',7400.00,'1997-11-02',NULL,26,_binary '\0',6,138),(103,'Leslie','Tamayo','23790832',9800.00,'2001-11-24',NULL,27,_binary '\0',2,NULL),(104,'Victor','Rodriguez','40592962',5800.00,'2007-03-28',NULL,25,_binary '\0',18,87),(105,'Andrea','Carruitero','03122965',7700.00,'2000-10-23',NULL,27,_binary '\0',12,72),(106,'Giacomo','Novella','88265947',2000.00,'2002-07-08',NULL,27,_binary '\0',9,136),(107,'Karol','Alarcon','08642346',7500.00,'1998-06-11',NULL,26,_binary '\0',12,72),(108,'Issac','Llacuachaqui','67343528',3800.00,'2008-11-25',NULL,25,_binary '\0',1,150),(109,'Juan','Hurtado','61639688',4600.00,'2007-09-20',NULL,27,_binary '\0',19,168),(110,'Javier','Olaechea','02400692',4500.00,'2004-08-19',NULL,29,_binary '\0',9,163),(111,'Santiago','Ventocilla','01413375',7700.00,'2007-07-18',NULL,27,_binary '\0',12,72),(112,'Fiorella','Otiniano','23334936',1500.00,'2008-04-20',NULL,29,_binary '\0',21,46),(113,'Pamela','Navarro','80060928',9900.00,'1999-12-15',NULL,30,_binary '\0',18,NULL),(114,'Alberto','Checa','03399121',8900.00,'2004-01-09',NULL,27,_binary '\0',4,36),(115,'Angel','Kamt','07035231',5400.00,'1998-03-04',NULL,27,_binary '\0',9,163),(116,'Rosana','Heredia','10008173',9300.00,'2009-04-24',NULL,28,_binary '\0',11,NULL),(117,'Andoni','Grados','29600515',5800.00,'2003-06-20',NULL,30,_binary '\0',2,154),(118,'Damaris','Anci','14695430',3200.00,'2003-01-07',NULL,28,_binary '\0',5,88),(119,'Sandra','Meza','98032616',6000.00,'2011-02-03',NULL,30,_binary '\0',12,19),(120,'Jose','Corcuera','13281513',3000.00,'2001-04-16',NULL,26,_binary '\0',6,16),(121,'Carlos','Pizarro','96182324',4800.00,'2005-01-11',NULL,26,_binary '\0',20,53),(122,'Raisa','Montoro','67350736',9500.00,'2007-02-20',NULL,29,_binary '\0',15,90),(123,'Jorge','Montero','24302716',3900.00,'2004-09-03',NULL,25,_binary '\0',2,103),(124,'Jasmin','Trujillo','63644262',5200.00,'2009-06-21',NULL,30,_binary '\0',15,122),(125,'Mauricio','Cordova','90334255',2200.00,'2007-09-22',NULL,29,_binary '\0',12,96),(126,'Jorge','Alvarado','85308080',2400.00,'2005-11-13',NULL,27,_binary '\0',18,104),(127,'Maria','Escudero','73015000',1600.00,'2001-02-06',NULL,26,_binary '\0',6,50),(128,'Arturo','Diaz','44451552',1700.00,'2004-01-14',NULL,29,_binary '\0',20,51),(129,'Victor','Huiman','18789028',8600.00,'2010-02-24',NULL,26,_binary '\0',3,66),(130,'Marite','Arbaiza','22025917',1500.00,'1999-06-05',NULL,29,_binary '\0',11,41),(131,'Araceli','Carpio','72565164',9600.00,'2010-03-21',NULL,30,_binary '\0',9,NULL),(132,'Isabel','Molla','89585683',3000.00,'2001-05-05',NULL,26,_binary '\0',12,142),(133,'Victor','Isidro','01288389',1500.00,'1995-07-18',NULL,27,_binary '\0',11,41),(134,'Sergio','Torres','14962221',4500.00,'2004-12-13',NULL,28,_binary '\0',10,28),(135,'Rosario','Garrido','86777743',7200.00,'2007-06-25',NULL,29,_binary '\0',18,91),(136,'Diego','Neyra','40641670',4500.00,'2009-03-27',NULL,29,_binary '\0',9,163),(137,'Katya','Egusquiza','70601305',2000.00,'2007-01-11',NULL,26,_binary '\0',1,150),(138,'Emy','Nakasato','95515987',9400.00,'2009-07-27',NULL,28,_binary '\0',6,NULL),(139,'Edinson','Paredes','31831252',8500.00,'2004-10-24',NULL,30,_binary '\0',8,NULL),(140,'Oscar','Panduro','91998516',8700.00,'2002-05-19',NULL,28,_binary '\0',18,113),(141,'Juan','Araujo','04560493',9600.00,'1997-09-16',NULL,27,_binary '\0',15,90),(142,'Renzo','Prado','35613301',4100.00,'2010-02-06',NULL,26,_binary '\0',12,32),(143,'Aldo','Roman','75104383',5400.00,'2005-10-18',NULL,25,_binary '\0',15,122),(144,'Mafer','Aguinaga','99024683',2200.00,'2004-08-24',NULL,30,_binary '\0',14,160),(145,'Dennis','Zarate','72955513',5500.00,'2004-09-08',NULL,25,_binary '\0',16,NULL),(146,'Carlos','Moquillaza','55289716',8600.00,'2001-12-03',NULL,29,_binary '\0',5,67),(147,'Alessandra','Ninamango','07320729',1500.00,'2005-06-09',NULL,29,_binary '\0',7,1),(148,'Santiago','Ponce','40962663',7500.00,'2007-01-12',NULL,25,_binary '\0',1,39),(149,'Bruna','Rios','71844794',9500.00,'1998-05-01',NULL,27,_binary '\0',9,NULL),(150,'Gabriela','Villalta','57559542',8400.00,'2000-08-22',NULL,29,_binary '\0',1,39),(151,'Stefanie','Fazio','81841338',1600.00,'1995-11-02',NULL,29,_binary '\0',15,48),(152,'Vicente','Linares','04571218',2200.00,'2009-02-03',NULL,28,_binary '\0',7,1),(153,'Miguel','Patiño','80971150',2400.00,'1998-09-23',NULL,27,_binary '\0',18,104),(154,'Danna','Rabanal','11749616',9900.00,'1998-10-22',NULL,29,_binary '\0',2,NULL),(155,'Miguel','Revolo','30698604',9200.00,'2006-01-13',NULL,26,_binary '\0',15,90),(156,'Diego','Trigueros','67995782',2500.00,'2000-02-01',NULL,29,_binary '\0',6,16),(157,'Vicente','Espinosa','05325663',8200.00,'2008-07-13',NULL,27,_binary '\0',4,36),(158,'Urial','Chavesta','45684535',5800.00,'2003-06-09',NULL,29,_binary '\0',18,87),(159,'Cynthia','Alvarez','88428991',1500.00,'2000-10-20',NULL,28,_binary '\0',16,145),(160,'Guillermo','Gallo','14611136',6100.00,'1998-07-30',NULL,26,_binary '\0',14,167),(161,'Alexander','Lam','97613115',2000.00,'2007-03-27',NULL,30,_binary '\0',9,136),(162,'Adriana','Salas','06418324',2100.00,'2011-04-10',NULL,25,_binary '\0',8,80),(163,'Pablo','Mocarro','51236722',6600.00,'1998-09-22',NULL,25,_binary '\0',9,149),(164,'Karina','Horna','53998018',5200.00,'2009-08-21',NULL,27,_binary '\0',6,102),(165,'Jim','Calderon','70479434',6000.00,'2007-05-30',NULL,25,_binary '\0',13,81),(166,'Renzo','Monteza','73677569',4800.00,'2008-12-21',NULL,28,_binary '\0',20,53),(167,'Guillermo','Figueroa','65654176',9800.00,'2011-04-06',NULL,26,_binary '\0',14,NULL),(168,'Priscilla','Mendoza','82902482',6700.00,'2008-03-01',NULL,27,_binary '\0',19,73),(169,'Victor','Chahuilco','30779349',2200.00,'2010-01-13',NULL,30,_binary '\0',20,51),(170,'Igor','Anyosa','57585043',7900.00,'1998-08-02',NULL,29,_binary '\0',6,138);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pelicula` (
  `idpelicula` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idpelicula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` VALUES (1,'MADAME BUTTERFLY'),(2,'EL LORAX EN BUSCA DE LA TRUFULA PERDIDA'),(3,'MINIESPIAS 4'),(4,'NO TENGAS MIEDO A LA OSCURIDAD'),(5,'EL DIARIO DE UN SEDUCTOR'),(6,'VOTOS DE AMOR'),(7,'FURIA DE TITANES 2'),(8,'ESTO ES GUERRA'),(9,'LOS JUEGOS DEL HAMBRE'),(10,'JOHN CARTER'),(11,'INFRAMUNDO 4'),(12,'50/50'),(13,'AMOR POR SIEMPRE'),(14,'GHOST RIDER ESPíRITU DE VENGANZA'),(15,'PROTEGIENDO AL ENEMIGO'),(16,'UNA SOLA NOCHE');
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puntuacion`
--

DROP TABLE IF EXISTS `puntuacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `puntuacion` (
  `idpuntuacion` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `idpelicula` int(11) NOT NULL,
  PRIMARY KEY (`idpuntuacion`),
  KEY `fk_puntuacion_pelicula1` (`idpelicula`),
  CONSTRAINT `fk_puntuacion_pelicula1` FOREIGN KEY (`idpelicula`) REFERENCES `pelicula` (`idpelicula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntuacion`
--

LOCK TABLES `puntuacion` WRITE;
/*!40000 ALTER TABLE `puntuacion` DISABLE KEYS */;
INSERT INTO `puntuacion` VALUES (2,9,2),(3,4,3),(4,5,4),(5,7,7),(6,3,10),(7,6,14),(8,6,15);
/*!40000 ALTER TABLE `puntuacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'admin'),(2,'gestor'),(3,'vendedor');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolempleado`
--

DROP TABLE IF EXISTS `rolempleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rolempleado` (
  `idrol` int(11) NOT NULL,
  `idempleado` int(11) NOT NULL,
  PRIMARY KEY (`idrol`,`idempleado`),
  KEY `fk_rol_has_empleado_empleado1_idx` (`idempleado`),
  KEY `fk_rol_has_empleado_rol1_idx` (`idrol`),
  CONSTRAINT `fk_rol_has_empleado_empleado1` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`),
  CONSTRAINT `fk_rol_has_empleado_rol1` FOREIGN KEY (`idrol`) REFERENCES `rol` (`idrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolempleado`
--

LOCK TABLES `rolempleado` WRITE;
/*!40000 ALTER TABLE `rolempleado` DISABLE KEYS */;
INSERT INTO `rolempleado` VALUES (2,1),(2,2),(2,3),(2,4),(1,5),(1,6),(2,7),(2,8),(2,9),(3,10),(3,11),(2,12),(1,13),(1,14),(1,15),(1,16),(1,17),(3,18),(3,19),(1,20),(2,21),(2,22),(1,23),(3,24),(1,25),(1,26),(1,27),(2,28),(1,29),(1,30),(3,31),(3,32),(1,33),(2,34),(1,35),(1,36),(2,37),(3,38),(1,39),(3,40),(2,41),(2,42),(3,43),(3,44),(1,45),(1,46),(2,47),(3,48),(1,49),(1,50),(2,51),(3,52),(2,53),(3,54),(1,55),(3,56),(2,57),(1,58),(2,59),(3,60),(1,61),(1,62),(1,63),(1,64),(3,65),(3,66),(3,67),(1,68),(1,69),(1,70),(3,71),(3,72),(1,73),(1,74),(2,75),(3,76),(3,77),(1,78),(2,79),(3,80),(3,81),(1,82),(2,83),(3,84),(2,85),(2,86),(2,87),(3,88),(2,89),(2,90),(1,91),(3,92),(1,93),(2,94),(3,95),(1,96),(3,97),(1,98),(2,99),(2,100),(3,101),(3,102),(2,103),(3,104),(1,105),(2,106),(2,107),(3,108),(1,109),(3,110),(3,111),(2,112),(2,113),(3,114),(1,115),(2,116),(3,117),(3,118),(1,119),(3,120),(2,121),(2,122),(1,123),(1,124),(3,125),(1,126),(3,127),(3,128),(1,129),(3,130),(2,131),(3,132),(3,133),(3,134),(1,135),(3,136),(3,137),(3,138),(1,139),(3,140),(1,141),(1,142),(3,143),(1,144),(2,145),(2,146),(2,147),(1,148),(1,149),(2,150),(3,151),(2,152),(2,153),(2,154),(1,155),(1,156),(2,157),(2,158),(3,159),(1,160),(1,161),(3,162),(3,163),(1,164),(3,165),(2,166),(1,167),(1,168),(2,169),(2,170);
/*!40000 ALTER TABLE `rolempleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-05 16:48:09
