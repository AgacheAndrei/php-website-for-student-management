-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: bd
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `istoric`
--

DROP TABLE IF EXISTS `istoric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `istoric` (
  `id_eveniment` int NOT NULL AUTO_INCREMENT,
  `user` varchar(45) NOT NULL,
  `eveniment` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_eveniment`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `istoric`
--

LOCK TABLES `istoric` WRITE;
/*!40000 ALTER TABLE `istoric` DISABLE KEYS */;
INSERT INTO `istoric` VALUES (2,'admin','test'),(3,'ana@cuza.com','Eveniment: apasare buton valaore_burse_per_specializare elev'),(4,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_specializare elev'),(5,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_tip_bursa elev'),(6,'ana@cuza.com','Eveniment: apasare buton valaore_burse_per_specializare elev'),(7,'','Eveniment: sing in'),(8,'andrei@cuza.com','Eveniment: sing out'),(9,'','Eveniment: sing in'),(10,'','Eveniment: sing in'),(11,'','Eveniment: sing in'),(12,'','Eveniment: sing in'),(13,'andrei@cuza.com','Eveniment: apsare buton refresh_grafice elev'),(14,'andrei@cuza.com','Eveniment: sing out'),(15,'andrei@cuza.com','Eveniment: sing in'),(16,'andrei@cuza.com','Eveniment: sing in'),(17,'andrei@cuza.com','Eveniment: apsare buton refresh_grafice elev'),(18,'andrei@cuza.com','Eveniment: sing in'),(19,'andrei@cuza.com','Eveniment: sing out'),(20,'ana@cuza.com','Eveniment: sing in'),(21,'andrei@cuza.com','Eveniment: sing in'),(22,'andrei@cuza.com','Eveniment: sing out'),(23,'ana@cuza.com','Eveniment: sing in'),(24,'ana@cuza.com','Eveniment: sing in'),(25,'ana@cuza.com','Eveniment: sing in'),(26,'ana@cuza.com','Eveniment: sing in'),(27,'','Eveniment: sing in'),(28,'andrei@cuza.com','Eveniment: sing in'),(29,'andrei@cuza.com','Eveniment: apasare buton insert elev'),(30,'andrei@cuza.com','Eveniment: apasare buton insert elev'),(31,'andrei@cuza.com','Eveniment: apasare buton insert elev'),(32,'andrei@cuza.com','Eveniment: apasare buton update elev'),(33,'andrei@cuza.com','Eveniment: apasare buton sterge elev'),(34,'andrei@cuza.com','Eveniment: sing out'),(35,'andrei@cuza.com','Eveniment: sing in'),(36,'ana@cuza.com','Eveniment: sing in'),(37,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(38,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(39,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(40,'ana@cuza.com','Eveniment: apasare buton all elevi'),(41,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(42,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(43,'ana@cuza.com','Eveniment: apasare buton cautare elev'),(44,'ana@cuza.com','Eveniment: apsare buton tip_burse_per_clase elev'),(45,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_student elev'),(46,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_tip_bursa elev'),(47,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_specializare elev'),(48,'ana@cuza.com','Eveniment: apasare buton valaore_burse_per_specializare elev'),(49,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_clasa elevi'),(50,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_student elev'),(51,'ana@cuza.com','Eveniment: apsare buton tip_burse_per_clase elev'),(52,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_student elev'),(53,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_tip_bursa elev'),(54,'ana@cuza.com','Eveniment: apasare buton all elevi'),(55,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(56,'andrei@cuza.com','Eveniment: sing in'),(57,'andrei@cuza.com','Eveniment: sing in'),(58,'andrei@cuza.com','Eveniment: sing in'),(59,'andrei@cuza.com','Eveniment: apasare buton insert elev'),(60,'andrei@cuza.com','Eveniment: apasare buton sterge elev'),(61,'andrei@cuza.com','Eveniment: sing out'),(62,'andrei@cuza.com','Eveniment: sing in'),(63,'andrei@cuza.com','Eveniment: sing in'),(64,'andrei@cuza.com','Eveniment: apasare buton insert elev'),(65,'andrei@cuza.com','Eveniment: sing in'),(66,'andrei@cuza.com','Eveniment: sing out'),(67,'ana@cuza.com','Eveniment: sing in'),(68,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_clasa elevi'),(69,'ana@cuza.com','Eveniment: apasare buton cautare elev'),(70,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_clasa elevi'),(71,'ana@cuza.com','Eveniment: apasare buton valoare_toatala_burse elevi'),(72,'ana@cuza.com','Eveniment: apasare buton nr_total_nebursieri elevi'),(73,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_tip_bursa elev'),(74,'ana@cuza.com','Eveniment: apsare buton tip_burse_per_clase elev'),(75,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_student elev'),(76,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_specializare elev'),(77,'ana@cuza.com','Eveniment: apsare buton refresh_grafice elev'),(78,'ana@cuza.com','Eveniment: apsare buton refresh_grafice elev'),(79,'ana@cuza.com','Eveniment: apsare buton refresh_grafice elev'),(80,'ana@cuza.com','Eveniment: apsare buton refresh_grafice elev'),(81,'ana@cuza.com','Eveniment: apsare buton refresh_grafice elev'),(82,'ana@cuza.com','Eveniment: apsare buton refresh_grafice elev'),(83,'ana@cuza.com','Eveniment: apsare buton refresh_grafice elev'),(84,'ana@cuza.com','Eveniment: apsare buton refresh_grafice elev'),(85,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(86,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(87,'ana@cuza.com','Eveniment: apasare buton all elevi'),(88,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(89,'ana@cuza.com','Eveniment: sing out'),(90,'andrei@cuza.com','Eveniment: sing in'),(91,'andrei@cuza.com','Eveniment: sing out'),(92,'ana@cuza.com','Eveniment: sing in'),(93,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(94,'ana@cuza.com','Eveniment: apasare buton nr_total_elevi elevi'),(95,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_clasa elevi'),(96,'ana@cuza.com','Eveniment: apsare buton tip_burse_per_clase elev'),(97,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_tip_bursa elev'),(98,'ana@cuza.com','Eveniment: apasare buton valaore_burse_per_specializare elev'),(99,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_specializare elev'),(100,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_tip_bursa elev'),(101,'ana@cuza.com','Eveniment: apasare buton valoare_toatala_burse elevi'),(102,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_clasa elevi'),(103,'ana@cuza.com','Eveniment: apasare buton nr_total_bursieri elevi'),(104,'ana@cuza.com','Eveniment: apasare buton all elevi'),(105,'ana@cuza.com','Eveniment: apasare buton cautare elev'),(106,'ana@cuza.com','Eveniment: apasare buton all elevi'),(107,'ana@cuza.com','Eveniment: sing out'),(108,'ana@cuza.com','Eveniment: sing in'),(109,'andrei@cuza.com','Eveniment: sing in'),(110,'andrei@cuza.com','Eveniment: sing in'),(111,'andrei@cuza.com','Eveniment: sing in'),(112,'andrei@cuza.com','Eveniment: apasare buton update elev'),(113,'andrei@cuza.com','Eveniment: sing in'),(114,'andrei@cuza.com','Eveniment: apasare buton sterge elev'),(115,'andrei@cuza.com','Eveniment: apasare buton update elev'),(116,'andrei@cuza.com','Eveniment: apasare buton insert elev'),(117,'andrei@cuza.com','Eveniment: apasare buton refresh_burse elevi'),(118,'andrei@cuza.com','Eveniment: apasare buton refresh_bursieriMouse elev'),(119,'andrei@cuza.com','Eveniment: sing out'),(120,'ana@cuza.com','Eveniment: sing in'),(121,'ana@cuza.com','Eveniment: sing in'),(122,'ana@cuza.com','Eveniment: sing in'),(123,'ana@cuza.com','Eveniment: sing in'),(124,'ana@cuza.com','Eveniment: sing in'),(125,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(126,'ana@cuza.com','Eveniment: sing in'),(127,'ana@cuza.com','Eveniment: sing in'),(128,'ana@cuza.com','Eveniment: sing in'),(129,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(130,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(131,'ana@cuza.com','Eveniment: sing in'),(132,'ana@cuza.com','Eveniment: sing in'),(133,'ana@cuza.com','Eveniment: sing in'),(134,'ana@cuza.com','Eveniment: sing out'),(135,'ana@cuza.com','Eveniment: sing in'),(136,'ana@cuza.com','Eveniment: sing in'),(137,'ana@cuza.com','Eveniment: sing in'),(138,'ana@cuza.com','Eveniment: sing out'),(139,'ana@cuza.com','Eveniment: sing in'),(140,'ana@cuza.com','Eveniment: sing in'),(141,'ana@cuza.com','Eveniment: sing in'),(142,'ana@cuza.com','Eveniment: sing in'),(143,'ana@cuza.com','Eveniment: sing in'),(144,'ana@cuza.com','Eveniment: sing in'),(145,'ana@cuza.com','Eveniment: sing in'),(146,'ana@cuza.com','Eveniment: sing in'),(147,'ana@cuza.com','Eveniment: sing in'),(148,'ana@cuza.com','Eveniment: sing in'),(149,'ana@cuza.com','Eveniment: sing in'),(150,'ana@cuza.com','Eveniment: sing in'),(151,'ana@cuza.com','Eveniment: sing in'),(152,'ana@cuza.com','Eveniment: sing in'),(153,'ana@cuza.com','Eveniment: sing in'),(154,'ana@cuza.com','Eveniment: sing in'),(155,'ana@cuza.com','Eveniment: sing in'),(156,'ana@cuza.com','Eveniment: sing in'),(157,'ana@cuza.com','Eveniment: sing in'),(158,'ana@cuza.com','Eveniment: sing in'),(159,'ana@cuza.com','Eveniment: sing in'),(160,'ana@cuza.com','Eveniment: sing in'),(161,'ana@cuza.com','Eveniment: sing in'),(162,'ana@cuza.com','Eveniment: sing in'),(163,'ana@cuza.com','Eveniment: sing in'),(164,'ana@cuza.com','Eveniment: sing in'),(165,'ana@cuza.com','Eveniment: sing in'),(166,'ana@cuza.com','Eveniment: apasare buton all elevi'),(167,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(168,'ana@cuza.com','Eveniment: sing in'),(169,'ana@cuza.com','Eveniment: sing in'),(170,'ana@cuza.com','Eveniment: sing in'),(171,'ana@cuza.com','Eveniment: apasare buton valaore_burse_per_specializare elev'),(172,'ana@cuza.com','Eveniment: sing in'),(173,'ana@cuza.com','Eveniment: sing in'),(174,'ana@cuza.com','Eveniment: sing in'),(175,'ana@cuza.com','Eveniment: apasare buton valaore_burse_per_specializare elev'),(176,'ana@cuza.com','Eveniment: apasare buton nr_total_elevi elevi'),(177,'ana@cuza.com','Eveniment: sing in'),(178,'ana@cuza.com','Eveniment: sing in'),(179,'ana@cuza.com','Eveniment: apasare buton valoare_toatala_burse elevi'),(180,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_clasa elevi'),(181,'ana@cuza.com','Eveniment: apsare buton tip_burse_per_clase elev'),(182,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_student elev'),(183,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_specializare elev'),(184,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_tip_bursa elev'),(185,'ana@cuza.com','Eveniment: apasare buton valaore_burse_per_specializare elev'),(186,'ana@cuza.com','Eveniment: sing in'),(187,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(188,'ana@cuza.com','Eveniment: apasare buton cautare elev'),(189,'ana@cuza.com','Eveniment: apsare buton tip_burse_per_clase elev'),(190,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_clasa elevi'),(191,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_student elev'),(192,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_tip_bursa elev'),(193,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(194,'ana@cuza.com','Eveniment: apasare export_to_excel_date_extrase'),(195,'ana@cuza.com','Eveniment: apasare buton import_excel'),(196,'andrei@cuza.com','Eveniment: sing in'),(197,'andrei@cuza.com','Eveniment: sing out'),(198,'andrei@cuza.com','Eveniment: sing in'),(199,'andrei@cuza.com','Eveniment: apasare buton update elev'),(200,'andrei@cuza.com','Eveniment: sing out'),(201,'ana@cuza.com','Eveniment: sing in'),(202,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(203,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(204,'ana@cuza.com','Eveniment: apasare buton all elevi'),(205,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(206,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(207,'ana@cuza.com','Eveniment: apasare buton all elevi'),(208,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(209,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(210,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(211,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(212,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(213,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(214,'ana@cuza.com','Eveniment: sing in'),(215,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(216,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(217,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(218,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(219,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(220,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(221,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(222,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(223,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(224,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(225,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(226,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(227,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(228,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(229,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(230,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(231,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(232,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(233,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(234,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(235,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(236,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(237,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(238,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(239,'ana@cuza.com','Eveniment: sing in'),(240,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(241,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(242,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(243,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(244,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(245,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(246,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(247,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(248,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(249,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(250,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(251,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(252,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(253,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(254,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(255,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(256,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(257,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(258,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(259,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(260,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(261,'ana@cuza.com','Eveniment: apasare buton all elevi'),(262,'ana@cuza.com','Eveniment: apasare buton cautare elev'),(263,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(264,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(265,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(266,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(267,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(268,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(269,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(270,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(271,'andrei@cuza.com','Eveniment: sing in'),(272,'andrei@cuza.com','Eveniment: sing out'),(273,'ana@cuza.com','Eveniment: sing in'),(274,'ana@cuza.com','Eveniment: sing out'),(275,'andrei@cuza.com','Eveniment: sing in'),(276,'andrei@cuza.com','Eveniment: sing out'),(277,'ana@cuza.com','Eveniment: sing in'),(278,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(279,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(280,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(281,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(282,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(283,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(284,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(285,'ana@cuza.com','Eveniment: sing in'),(286,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_clasa elevi'),(287,'ana@cuza.com','Eveniment: apsare buton tip_burse_per_clase elev'),(288,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_student elev'),(289,'ana@cuza.com','Eveniment: apasare buton nr_total_nebursieri elevi'),(290,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_specializare elev'),(291,'ana@cuza.com','Eveniment: apasare buton nr_total_bursieri elevi'),(292,'ana@cuza.com','Eveniment: apasare buton nr_total_elevi elevi'),(293,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_specializare elev'),(294,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_student elev'),(295,'ana@cuza.com','Eveniment: apsare buton tip_burse_per_clase elev'),(296,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_tip_bursa elev'),(297,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(298,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(299,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(300,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(301,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(302,'ana@cuza.com','Eveniment: sing in'),(303,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(304,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(305,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(306,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(307,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(308,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(309,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(310,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(311,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(312,'ana@cuza.com','Eveniment: sing in'),(313,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(314,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(315,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(316,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(317,'ana@cuza.com','Eveniment: sing out'),(318,'andrei@cuza.com','Eveniment: sing in'),(319,'andrei@cuza.com','Eveniment: sing out'),(320,'ana@cuza.com','Eveniment: sing in'),(321,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(322,'ana@cuza.com','Eveniment: apasare export_to_excel_date_extrase'),(323,'ana@cuza.com','Eveniment: apasare buton import_excel'),(324,'ana@cuza.com','Eveniment: apasare buton valaore_burse_per_specializare elev'),(325,'ana@cuza.com','Eveniment: apasare buton valoare_toatala_burse elevi'),(326,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_clasa elevi'),(327,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(328,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(329,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(330,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(331,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_clasa elevi'),(332,'ana@cuza.com','Eveniment: apasare buton valoare_toatala_burse elevi'),(333,'ana@cuza.com','Eveniment: apsare buton tip_burse_per_clase elev'),(334,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_student elev'),(335,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_tip_bursa elev'),(336,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_tip_bursa elev'),(337,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_specializare elev'),(338,'ana@cuza.com','Eveniment: sing out'),(339,'ana@cuza.com','Eveniment: sing in'),(340,'ana@cuza.com','Eveniment: sing out'),(341,'ana@cuza.com','Eveniment: sing in'),(342,'andrei@cuza.com','Eveniment: sing in'),(343,'andrei@cuza.com','Eveniment: apasare buton insert elev'),(344,'andrei@cuza.com','Eveniment: apasare buton refresh_bursieriMouse elev'),(345,'','Eveniment: sing in'),(346,'andrei@cuza.com','Eveniment: sing in'),(347,'andrei@cuza.com','Eveniment: sing in'),(348,'andrei@cuza.com','Eveniment: apasare buton update elev'),(349,'andrei@cuza.com','Eveniment: sing in'),(350,'andrei@cuza.com','Eveniment: apasare buton update elev'),(351,'andrei@cuza.com','Eveniment: apasare buton insert elev'),(352,'andrei@cuza.com','Eveniment: apasare buton update elev'),(353,'andrei@cuza.com','Eveniment: apasare buton sterge elev'),(354,'andrei@cuza.com','Eveniment: sing out'),(355,'ana@cuza.com','Eveniment: sing in'),(356,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(357,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(358,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(359,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(360,'ana@cuza.com','Eveniment: apasare buton filtrare elevi'),(361,'ana@cuza.com','Eveniment: apasare buton cautare elev'),(362,'ana@cuza.com','Eveniment: apasare buton nr_total_nebursieri elevi'),(363,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_clasa elevi'),(364,'ana@cuza.com','Eveniment: apasare buton valoare_toatala_burse elevi'),(365,'ana@cuza.com','Eveniment: apasare buton nr_total_bursieri elevi'),(366,'ana@cuza.com','Eveniment: apasare buton nr_total_nebursieri elevi'),(367,'ana@cuza.com','Eveniment: apasare buton nr_total_elevi elevi'),(368,'ana@cuza.com','Eveniment: apsare buton tip_burse_per_clase elev'),(369,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_student elev'),(370,'ana@cuza.com','Eveniment: apasare buton valaore_bursa_per_tip_bursa elev'),(371,'ana@cuza.com','Eveniment: apasare buton valoare_burse_per_specializare elev'),(372,'ana@cuza.com','Eveniment: apasare buton valaore_burse_per_specializare elev'),(373,'ana@cuza.com','Eveniment: apasare export_to_excel_date_extrase'),(374,'ana@cuza.com','Eveniment: apasare expoert_pdf_date_extrase'),(375,'ana@cuza.com','Eveniment: apasare expoert_pdf_date_extrase'),(376,'ana@cuza.com','Eveniment: apasare buton import_excel'),(377,'ana@cuza.com','Eveniment: sing in');
/*!40000 ALTER TABLE `istoric` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 11:47:56
