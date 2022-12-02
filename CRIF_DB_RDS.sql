CREATE DATABASE  IF NOT EXISTS `crif` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `crif`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: cloudcrif.c9qkhx4o6ase.ap-south-1.rds.amazonaws.com    Database: crif
-- ------------------------------------------------------
-- Server version	5.7.38-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applications` (
  `application_id` int(11) NOT NULL AUTO_INCREMENT,
  `instrument_code` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `role` varchar(64) NOT NULL,
  `sample_properties` varchar(256) NOT NULL,
  `incompatibility` varchar(128) NOT NULL,
  `toxicity` varchar(64) NOT NULL,
  `health_hazard` varchar(128) NOT NULL,
  `first_aid` varchar(128) NOT NULL,
  `disposal` varchar(256) NOT NULL,
  `additional_info` varchar(512) NOT NULL,
  `department` varchar(64) NOT NULL,
  `supervisor_department` varchar(64) NOT NULL,
  `supervisor_name` varchar(64) NOT NULL,
  `pricing` int(11) NOT NULL,
  `status` varchar(64) NOT NULL DEFAULT 'SAVED',
  PRIMARY KEY (`application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (4,'ESR','bonda_971927@student.nitw.ac.in','int_stu','None','None','Non-Hazardous','None','None','None','None','CSE','CSE','Faculty One',600,'FACULTY REVIEW'),(6,'ESR','bonda_971927@student.nitw.ac.in','int_stu','None','None','Non-Hazardous','None','None','None','None','BIOTECH','BIOTECH','Faculty One',400,'FACULTY REVIEW'),(9,'CDORD','bonda_971927@student.nitw.ac.in','int_stu','None','None','Non-Hazardous','None','None','None','None','CSE','CIVIl','Faculty One',150,'WORK IN PROGRESS'),(13,'ICPOES','bonda_971927@student.nitw.ac.in','int_stu','None','None','Non-Hazardous','None','None','None','None','BIOTECH','BIOTECH','Faculty One',150,'WORK IN PROGRESS'),(14,'PL','bonda_971927@student.nitw.ac.in','int_stu','None','None','Non-Hazardous','None','None','None','None','CHEM','CSE','Faculty One',100,'WORK IN PROGRESS'),(15,'ESR','bonda_971927@student.nitw.ac.in','int_stu','NA','None','Non-Hazardous','No','None','Normal','','CHEM','CHEM','Faculty One',200,'WORK IN PROGRESS'),(16,'ESR','bonda_971927@student.nitw.ac.in','int_stu','None','None','Non-Hazardous','No','None','None','','CSE','CSE','Faculty One',200,'WORK IN PROGRESS'),(17,'ESR','bonda_971927@student.nitw.ac.in','int_stu','None','None','Non-Hazardous','None','None','None','None','SOM','SOM','Faculty Two',200,'ADMIN REVIEW'),(18,'CDORD','bonda_971927@student.nitw.ac.in','int_stu','None','None','Non-Hazardous','None','None','None','None','BIOTECH','BIOTECH','Faculty One',150,'WORK IN PROGRESS'),(19,'ESR','bonda_971927@student.nitw.ac.in','int_stu','sample','sample','Non-Hazardous','yes','sample','sample','','CSE','CHEM','Faculty Four',400,'INCHARGE REVIEW'),(20,'ESR','bonda_971927@student.nitw.ac.in','int_stu','Test_1','Test_1','Non-Hazardous','yes','Test_1','Test_1','Test_1','CHEMISTRY','CHEMISTRY','Faculty Two',200,'WORK IN PROGRESS');
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdord`
--

DROP TABLE IF EXISTS `cdord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdord` (
  `ref_id` varchar(64) NOT NULL,
  `application_id` varchar(64) NOT NULL,
  `sample_code` varchar(64) NOT NULL,
  `liquid_powder` varchar(64) NOT NULL,
  `solubility` varchar(64) NOT NULL,
  `expected_wavelength` varchar(64) NOT NULL,
  `analysis` varchar(64) NOT NULL,
  `temperature` varchar(64) NOT NULL,
  `health_hazard` varchar(64) NOT NULL,
  `fire_hazard` varchar(64) NOT NULL,
  `specific_hazard` varchar(64) NOT NULL,
  `instability_hazard` varchar(64) NOT NULL,
  `sample_status` varchar(45) NOT NULL DEFAULT 'Under Review',
  PRIMARY KEY (`ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdord`
--

LOCK TABLES `cdord` WRITE;
/*!40000 ALTER TABLE `cdord` DISABLE KEYS */;
INSERT INTO `cdord` VALUES ('18_1','18','ABC123','Liquid','50','500','CD','Room','Normal','Will Not Burn','Acid','Stable','Under Review'),('9_1','9','Sample 1','Liquid','60','60','CD','Room','Normal','Will Not Burn','Stable','Stable','Under Review');
/*!40000 ALTER TABLE `cdord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipments`
--

DROP TABLE IF EXISTS `equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipments` (
  `equipment_code` varchar(64) NOT NULL,
  `equipment_name` varchar(128) NOT NULL,
  `faculty_in_charge` varchar(64) NOT NULL,
  PRIMARY KEY (`equipment_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipments`
--

LOCK TABLES `equipments` WRITE;
/*!40000 ALTER TABLE `equipments` DISABLE KEYS */;
INSERT INTO `equipments` VALUES ('CD-ORD','Circular Dichroism-Optical Rotatory Dispersion Spectrometer','faculty2@nitw.ac.in'),('ESR','X-Band Electron Spin Resonance Spectroscopy','faculty1@nitw.ac.in'),('ICP-OES','Inductively Coupled Plasma Optical-Emission Spectroscopy','faculty1@nitw.ac.in'),('LC-HRMS','Liquid Chromatography-High Resolution Mass Spectrometry','faculty1@nitw.ac.in'),('NMR','Nuclear Magnetic Resonance','faculty1@nitw.ac.in'),('PL','Photo Luminescence','faculty1@nitw.ac.in'),('UTM','Universal Testing Machine','faculty1@nitw.ac.in'),('UV-Vis-NIR','UV-Vis NIR Spectrophotometer','faculty1@nitw.ac.in');
/*!40000 ALTER TABLE `equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esr`
--

DROP TABLE IF EXISTS `esr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esr` (
  `ref_id` varchar(64) NOT NULL,
  `application_id` varchar(64) NOT NULL,
  `sample_code` varchar(64) NOT NULL,
  `liquid_powder` varchar(64) NOT NULL,
  `solubility` varchar(64) NOT NULL,
  `esr_range` varchar(64) NOT NULL,
  `temperature` varchar(64) NOT NULL,
  `health_hazard` varchar(64) NOT NULL,
  `fire_hazard` varchar(64) NOT NULL,
  `specific_hazard` varchar(64) NOT NULL,
  `instability_hazard` varchar(64) NOT NULL,
  `sample_status` varchar(45) NOT NULL DEFAULT 'Under Review',
  PRIMARY KEY (`ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esr`
--

LOCK TABLES `esr` WRITE;
/*!40000 ALTER TABLE `esr` DISABLE KEYS */;
INSERT INTO `esr` VALUES ('15_1','15','Sample1','Liquid','CdCl3','400-420','Room','Normal','Will Not Burn','Stable','Stable','Under Review'),('16_1','16','S1','Powder','CdCl3','320','Room','Normal','Will Not Burn','Stable','Stable','Under Review'),('17_1','17','Sample 1','Liquid','60','60','Room','Normal','Will Not Burn','Stable','Stable','Under Review'),('19_1','19','sample','Powder','sample','123','Variable','Slightly Hazardous','Below 200F','Alkali','Shock and Heat May Denote','Under Review'),('20_1','20','Test_1','Powder','Test_1','Test_1','Room','Hazardous','Above 200F','Alkali','Violent Chemical Change','Under Review'),('4_1','4','Sample 1','Liquid','50','520','Room','Normal','Will Not Burn','Acid','Stable','Under Review'),('4_2','4','Sample 2','Liquid','60','120','Variable','Normal','Above 200F','Acid&Alkali','Stable','Under Review'),('6_1','6','Sample1','Powder','50','90','Low','Normal','Will Not Burn','Radiation Hazard','Unstable If Heated','Under Review');
/*!40000 ALTER TABLE `esr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icpoes`
--

DROP TABLE IF EXISTS `icpoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `icpoes` (
  `ref_id` varchar(64) NOT NULL,
  `application_id` varchar(64) NOT NULL,
  `sample_code` varchar(64) NOT NULL,
  `liquid_powder` varchar(64) NOT NULL,
  `solubility` varchar(64) NOT NULL,
  `expected_wavelength` varchar(64) NOT NULL,
  `expected_concentration` varchar(64) NOT NULL,
  `analysis` varchar(64) NOT NULL,
  `health_hazard` varchar(64) NOT NULL,
  `fire_hazard` varchar(64) NOT NULL,
  `specific_hazard` varchar(64) NOT NULL,
  `instability_hazard` varchar(64) NOT NULL,
  `sample_status` varchar(45) NOT NULL DEFAULT 'Under Review',
  PRIMARY KEY (`ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icpoes`
--

LOCK TABLES `icpoes` WRITE;
/*!40000 ALTER TABLE `icpoes` DISABLE KEYS */;
INSERT INTO `icpoes` VALUES ('13_1','13','Sample 1','Liquid','60','80','60','Single Element','Normal','Will Not Burn','Stable','Stable','Under Review');
/*!40000 ALTER TABLE `icpoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl`
--

DROP TABLE IF EXISTS `pl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pl` (
  `ref_id` varchar(64) NOT NULL,
  `application_id` varchar(64) NOT NULL,
  `sample_code` varchar(64) NOT NULL,
  `liquid_powder` varchar(64) NOT NULL,
  `solubility` varchar(64) NOT NULL,
  `expected_wavelength` varchar(64) NOT NULL,
  `emission_range` varchar(64) NOT NULL,
  `temperature` varchar(64) NOT NULL,
  `analysis` varchar(64) NOT NULL,
  `health_hazard` varchar(64) NOT NULL,
  `fire_hazard` varchar(64) NOT NULL,
  `specific_hazard` varchar(64) NOT NULL,
  `instability_hazard` varchar(64) NOT NULL,
  `sample_status` varchar(45) NOT NULL DEFAULT 'Under Review',
  PRIMARY KEY (`ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl`
--

LOCK TABLES `pl` WRITE;
/*!40000 ALTER TABLE `pl` DISABLE KEYS */;
INSERT INTO `pl` VALUES ('14_1','14','Sample 1 ','Liquid','50','60','80','Room','Emission','Normal','Will Not Burn','Stable','Stable','Under Review');
/*!40000 ALTER TABLE `pl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` varchar(64) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `role` varchar(64) NOT NULL,
  `branch` varchar(64) NOT NULL,
  `img` varchar(512) DEFAULT 'none',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('bonda_971927@student.nitw.ac.in','Saim','Bonda','int_stu','','https://media-exp1.licdn.com/dms/image/D5603AQHzXyZIegBnjg/profile-displayphoto-shrink_800_800/0/1668927129533?e=1674691200&v=beta&t=s_N-j-HejYXBFQp_OVZDsMRMoaptFO87mdvvrhUigeM'),('faculty1@nitw.ac.in','Faculty','One','faculty','BT','none'),('faculty2@nitw.ac.in','Faculty','Two','faculty','CHEM','none'),('faculty3@nitw.ac.in','Faculty','Three','faculty','BT','none'),('faculty4@nitw.ac.in','Faculty','Four','faculty','CHEM','none'),('harishmadupu@nitw.ac.in','Harish','Madupu','industry','','none'),('pso_crif@nitw.ac.in','PSO','CRIF','admin','','none'),('techofficer_crif@nitw.ac.in','Technical','Officer','admin','','none'),('test@student.nitw.ac.in','Test','Student','int_stu','','none'),('webservices_crif@nitw.ac.in','Admin','CRIF','admin','','none');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-02 17:07:22
