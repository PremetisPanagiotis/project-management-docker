-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: project_management_db
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  `description` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `customer_name` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `customer_email` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `customer_phone` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Enterprise project',1,'','2025-12-23 11:10:03',NULL,'Enterprise Customer','enter@mail.com','6981815221'),(2,'Ecommerce Project',2,'','2025-12-23 11:10:35',NULL,'Ecommerce Customer','ecom@mail.com','6981812562'),(3,'Misc Project',3,'','2025-12-23 11:10:55',NULL,'Misc Customer','misc@mail.com','698287727');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_roles`
--

DROP TABLE IF EXISTS `security_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security_roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `label` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_roles`
--

LOCK TABLES `security_roles` WRITE;
/*!40000 ALTER TABLE `security_roles` DISABLE KEYS */;
INSERT INTO `security_roles` VALUES (1,'Administrator',NULL,NULL),(9,'Project Manager',NULL,NULL),(10,'Developer',NULL,NULL);
/*!40000 ALTER TABLE `security_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_users`
--

DROP TABLE IF EXISTS `security_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security_users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `company_mobile` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_users`
--

LOCK TABLES `security_users` WRITE;
/*!40000 ALTER TABLE `security_users` DISABLE KEYS */;
INSERT INTO `security_users` VALUES (1,'admin','Doe','John','oJfTtchpM9WC/4Oqpu7FZQ==','test@mail.com','693818181','692518253',1),(4,'janeDoe','Doe','Jane','oJfTtchpM9WC/4Oqpu7FZQ==','janedoe@mail.com','698471815','694878181',9),(5,'developer','Developer','Test','oJfTtchpM9WC/4Oqpu7FZQ==','dev@mail.com','6988125251','693182251',10);
/*!40000 ALTER TABLE `security_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `domain` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comments` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
INSERT INTO `servers` VALUES (1,'Test server','10.1.1.1','www.test.gr','Greece','username','password',NULL);
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `project_group_id` bigint DEFAULT NULL,
  `project_id` bigint DEFAULT NULL,
  `status` varchar(245) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL,
  `given_time` int DEFAULT NULL,
  `spent_time` int DEFAULT '0',
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (4,'Requirements Analysis','Make a first analysis of tasks to be done for the project',1,1,'inProgress','2026-02-10 00:00:00','2026-02-17 00:00:00',NULL,0,0,4),(5,'Infrastacture','',1,1,'inProgress','2026-02-18 00:00:00','2026-02-24 00:00:00',NULL,0,0,5),(6,'Create db with tables and relations','',1,1,'toDo','2026-02-24 00:00:00','2026-02-25 00:00:00',NULL,0,0,5),(7,'1st Meeting with client for requirements','',1,1,'completed','2026-02-09 00:00:00','2026-02-09 00:00:00','2026-02-09 11:28:19',0,0,5),(8,'Create core data API','',1,1,'toDo','2026-02-25 00:00:00','2026-02-27 00:00:00',NULL,0,0,5),(9,'Basic frontend design and structure','',1,1,'toDo','2026-03-02 00:00:00','2026-04-03 00:00:00',NULL,0,0,5),(10,'Products data entry','',2,2,'toTest','2026-02-04 00:00:00','2026-02-05 00:00:00','2026-02-05 11:27:57',0,0,5),(11,'Update Wordpress plugins','',2,2,'completed','2026-02-05 00:00:00','2026-02-06 00:00:00','2026-02-06 11:27:52',0,0,5),(12,'Meeting with Test Developer for requirements','',1,1,'completed','2026-02-10 00:00:00','2026-02-10 00:00:00','2026-02-10 11:25:50',0,0,4),(13,'Meeting with client','',1,1,'completed','2026-02-09 00:00:00','2026-02-09 00:00:00','2026-02-09 11:25:45',0,0,4),(14,'Assign Tasks','',1,1,'toDo','2026-02-17 00:00:00','2026-02-17 00:00:00',NULL,0,0,4);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-23 11:38:51

