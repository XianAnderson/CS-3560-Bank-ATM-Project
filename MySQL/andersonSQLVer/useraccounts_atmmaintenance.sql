CREATE DATABASE  IF NOT EXISTS `useraccounts` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `useraccounts`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: useraccounts
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `atmmaintenance`
--

DROP TABLE IF EXISTS `atmmaintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atmmaintenance` (
  `scheduleID` int NOT NULL AUTO_INCREMENT,
  `atmID` int NOT NULL,
  `maintenanceDate` date NOT NULL,
  `typeOfService` enum('Cash Refill','ATM Update','Replace ATM','ATM Troubleshoot') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Completed','In Progress','Not Started') COLLATE utf8mb4_unicode_ci NOT NULL,
  `workerID` int NOT NULL,
  PRIMARY KEY (`scheduleID`),
  KEY `atmID` (`atmID`),
  CONSTRAINT `atmmaintenance_ibfk_1` FOREIGN KEY (`atmID`) REFERENCES `atm` (`atmID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atmmaintenance`
--

LOCK TABLES `atmmaintenance` WRITE;
/*!40000 ALTER TABLE `atmmaintenance` DISABLE KEYS */;
INSERT INTO `atmmaintenance` VALUES (1,1,'2024-11-02','Cash Refill','Not Started',101),(2,1,'2024-11-05','ATM Troubleshoot','In Progress',102),(3,1,'2024-11-10','Replace ATM','Not Started',103);
/*!40000 ALTER TABLE `atmmaintenance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-13 19:51:20
