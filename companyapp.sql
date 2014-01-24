-- MySQL dump 10.13  Distrib 5.6.15, for Win64 (x86_64)
--
-- Host: localhost    Database: companyapp
-- ------------------------------------------------------
-- Server version	5.6.15-enterprise-commercial-advanced-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `communication`
--

DROP TABLE IF EXISTS `communication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communication` (
  `address` varchar(100) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `tk` varchar(5) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `afm` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`afm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication`
--

LOCK TABLES `communication` WRITE;
/*!40000 ALTER TABLE `communication` DISABLE KEYS */;
INSERT INTO `communication` VALUES ('Λ. Σαλαμίνος','Κερατσίνι','18757','2104926348','6948238761','jdrosatos@gmail.com','',108038855),('Αρχιμήδους 69','Π. Κοκκινιά','18562','2104381698','6948329417','evaskarapeti@hotmail.com','',125839874),('Π. Μαυρομιχάλη 169','Πειραιάς','18546','2104631919','6987885313','nikarwnis@hotmail.com','',126945368),('Αγίας Λαύρας 21','Πειραιάς','18544','2104631987','6987885314','gpapadopoulos@gmail.com','',158693479),('Υποκράτους 41','Αθήνα','18500','','6934701384','dionmouggolias@gmail.com','',196473658);
/*!40000 ALTER TABLE `communication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `hire_day` date DEFAULT NULL,
  `working_id` smallint(6) DEFAULT NULL,
  `meikta` int(11) DEFAULT NULL,
  `asfaleia` int(11) DEFAULT NULL,
  `children` tinyint(2) DEFAULT NULL,
  `afm` int(9) NOT NULL DEFAULT '0',
  `section_id` tinyint(6) DEFAULT NULL,
  PRIMARY KEY (`afm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('2011-05-30',3,940,50,0,108038855,4),('2000-02-22',3,962,60,2,125839874,5),('2014-01-21',3,962,60,0,126945368,5),('2000-01-02',3,2900,500,2,158693479,2),('1999-05-15',3,962,60,1,196473658,5);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general`
--

DROP TABLE IF EXISTS `general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general` (
  `name` varchar(20) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(7) DEFAULT NULL,
  `marital_id` smallint(6) DEFAULT NULL,
  `amka` varchar(20) DEFAULT NULL,
  `information` text,
  `afm` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`afm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general`
--

LOCK TABLES `general` WRITE;
/*!40000 ALTER TABLE `general` DISABLE KEYS */;
INSERT INTO `general` VALUES ('Ιωάννης','Δροσάτος','1988-03-15','Άντρας',3,'1503880015','',108038855),('Ευαγγελία','Σκαραπέτη','1988-03-27','Γυναίκα',5,'2703880041','',125839874),('Νικόλαος','Αρώνης','1978-12-12','Άντρας',3,'1212780041','',126945368),('Ιωάννης','Παπαδόπουλος','1972-02-10','Άντρας',2,'1002716418','Μεταπτυχιακό στη Διοίκηση Επιχειρήσεων στο Λονδίνο',158693479),('Διονύσης','Μουγγόλιας','1965-06-01','Άντρας',2,'0106650078','',196473658);
/*!40000 ALTER TABLE `general` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `afm` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`afm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('user1','pass1',125839874),('user3','pass3',126945368),('admin','1234',158693479),('user2','pass2',196473658);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marital_status`
--

DROP TABLE IF EXISTS `marital_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marital_status` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marital_status`
--

LOCK TABLES `marital_status` WRITE;
/*!40000 ALTER TABLE `marital_status` DISABLE KEYS */;
INSERT INTO `marital_status` VALUES (1,'Επιλέξτε...'),(2,'Έγγαμος/-η'),(3,'Άγαμος/-η'),(4,'Διαζευγμένος/-η'),(5,'Χήρος/-α');
/*!40000 ALTER TABLE `marital_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `afm` int(9) NOT NULL DEFAULT '0',
  `review` mediumtext,
  PRIMARY KEY (`afm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (108038855,'Πάρα πολύ καλός στη δουλειά του. Υπεύθυνος και ευγενικός.'),(125839874,''),(126945368,''),(158693479,''),(196473658,'');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `section_id` tinyint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'Επιλέξτε...'),(2,'General Management'),(3,'Γραμματειακή Υποστήριξη'),(4,'Μετάφραση'),(5,'HR Department'),(6,''),(7,''),(8,'');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statheres`
--

DROP TABLE IF EXISTS `statheres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statheres` (
  `epidoma_gamou` smallint(6) DEFAULT NULL,
  `epidoma_teknou` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statheres`
--

LOCK TABLES `statheres` WRITE;
/*!40000 ALTER TABLE `statheres` DISABLE KEYS */;
INSERT INTO `statheres` VALUES (50,50);
/*!40000 ALTER TABLE `statheres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `working_status`
--

DROP TABLE IF EXISTS `working_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `working_status` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `status` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_status`
--

LOCK TABLES `working_status` WRITE;
/*!40000 ALTER TABLE `working_status` DISABLE KEYS */;
INSERT INTO `working_status` VALUES (1,'Επιλέξτε...'),(2,'Μερική'),(3,'Πλήρη'),(4,'Εποχιακή');
/*!40000 ALTER TABLE `working_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-24 17:10:07
