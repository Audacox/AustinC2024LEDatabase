-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: le_evidence_database
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases` (
  `case_id` int NOT NULL,
  `district_id` int NOT NULL,
  `officer_id` int NOT NULL,
  `case_open_date` datetime NOT NULL,
  `case_status` varchar(45) NOT NULL,
  PRIMARY KEY (`case_id`),
  KEY `fk_district_id_case_idx` (`district_id`),
  KEY `fk_officer_id_case_idx` (`officer_id`),
  CONSTRAINT `fk_district_id_case` FOREIGN KEY (`district_id`) REFERENCES `districts` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_officer_id_case` FOREIGN KEY (`officer_id`) REFERENCES `officers` (`officer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES (111111112,1,20248112,'2024-01-01 00:00:00','Open'),(111111113,1,20248114,'2024-01-02 00:00:00','Closed'),(111111114,1,20248119,'2024-01-02 00:00:00','Open'),(111111115,1,20248113,'2024-01-02 00:00:00','Open'),(111111116,1,20248115,'2024-01-03 00:00:00','Open'),(111111117,2,20248126,'2024-01-03 00:00:00','Closed'),(111111118,2,20248121,'2024-01-05 00:00:00','Open'),(111111119,2,20248124,'2024-01-07 00:00:00','Open'),(111111120,2,20248122,'2024-01-10 00:00:00','Open'),(111111121,1,20248111,'2024-01-11 00:00:00','Open'),(111111122,1,20248118,'2024-01-15 00:00:00','Open'),(111111123,2,20248130,'2024-01-19 00:00:00','Open'),(111111124,1,20248117,'2024-01-21 00:00:00','Open'),(111111125,1,20248121,'2024-01-22 00:00:00','Open'),(111111126,3,20248132,'2024-01-28 00:00:00','Closed'),(111111127,3,20248135,'2024-01-29 00:00:00','Open'),(111111128,3,20248134,'2024-01-30 00:00:00','Open'),(111111129,3,20248136,'2024-01-31 00:00:00','Open'),(111111130,4,20248144,'2024-02-01 00:00:00','Open'),(111111131,4,20248142,'2024-02-02 00:00:00','Closed'),(111111132,4,20248146,'2024-02-03 00:00:00','Closed'),(111111133,4,20248148,'2024-02-05 00:00:00','Open'),(111111134,5,20248152,'2024-02-06 00:00:00','Closed'),(111111135,5,20248155,'2024-02-08 00:00:00','Open'),(111111136,5,20248157,'2024-02-10 00:00:00','Open'),(111111137,5,20248160,'2024-02-11 00:00:00','Closed'),(111111138,5,20248159,'2024-02-13 00:00:00','Open'),(111111139,6,20248162,'2024-02-15 00:00:00','Closed'),(111111140,6,20248163,'2024-02-16 00:00:00','Open'),(111111141,6,20248164,'2024-02-17 00:00:00','Open'),(111111142,6,20248166,'2024-02-19 00:00:00','Open'),(111111143,6,20248167,'2024-02-21 00:00:00','Closed'),(111111144,6,20248168,'2024-02-23 00:00:00','Open'),(111111145,6,20248169,'2024-02-24 00:00:00','Open'),(111111146,6,20248170,'2024-02-28 00:00:00','Open'),(111111147,7,20248172,'2024-02-29 00:00:00','Open'),(111111148,7,20248173,'2024-03-01 00:00:00','Open'),(111111149,7,20248174,'2024-03-02 00:00:00','Closed'),(111111150,7,20248176,'2024-03-05 00:00:00','Open'),(111111151,7,20248177,'2024-03-08 00:00:00','Open'),(111111152,7,20248179,'2024-03-09 00:00:00','Open'),(111111153,7,20248180,'2024-03-11 00:00:00','Open'),(111111154,8,20248182,'2024-03-13 00:00:00','Closed'),(111111155,8,20248185,'2024-03-15 00:00:00','Open'),(111111156,8,20248187,'2024-03-17 00:00:00','Open'),(111111157,8,20248189,'2024-03-19 00:00:00','Open'),(111111158,9,20248192,'2024-03-21 00:00:00','Open'),(111111159,9,20248194,'2024-03-23 00:00:00','Open'),(111111160,9,20248196,'2024-03-25 00:00:00','Open'),(111111161,9,20248198,'2024-03-27 00:00:00','Open'),(111111162,9,20248200,'2024-03-28 00:00:00','Open'),(111111163,10,20248202,'2024-03-29 00:00:00','Open'),(111111164,10,20248203,'2024-03-30 00:00:00','Open'),(111111165,10,20248205,'2024-04-01 00:00:00','Open'),(111111166,10,20248206,'2024-04-02 00:00:00','Open'),(111111167,10,20248212,'2024-05-03 00:00:00','Open'),(111111168,10,20248212,'2024-05-04 00:00:00','Open');
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district_supervisors`
--

DROP TABLE IF EXISTS `district_supervisors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district_supervisors` (
  `district_supervisor_id` int NOT NULL,
  `district_id` int NOT NULL,
  `officer_id` int NOT NULL,
  `officer_rank` varchar(45) NOT NULL,
  PRIMARY KEY (`district_supervisor_id`),
  KEY `fk_district_id_sup_idx` (`district_id`),
  KEY `fk_officer_id_sup_idx` (`officer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district_supervisors`
--

LOCK TABLES `district_supervisors` WRITE;
/*!40000 ALTER TABLE `district_supervisors` DISABLE KEYS */;
INSERT INTO `district_supervisors` VALUES (1,1,20248120,'Captain'),(2,2,20428131,'Captain'),(3,3,20248141,'Captain'),(4,4,20248151,'Captain'),(5,5,20248161,'Captain'),(6,6,20248171,'Captain'),(7,7,20248181,'Captain'),(8,8,20248191,'Lieutenant'),(9,9,20248201,'Lieutenant'),(10,10,20248211,'Lieutenant');
/*!40000 ALTER TABLE `district_supervisors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `districts` (
  `district_id` int NOT NULL,
  `district_name` varchar(45) NOT NULL,
  `district_supervisor_id` int NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`district_id`),
  KEY `fk_district_sup_district_idx` (`district_supervisor_id`),
  CONSTRAINT `fk_district_sup_district` FOREIGN KEY (`district_supervisor_id`) REFERENCES `district_supervisors` (`district_supervisor_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (1,'Washington',1,'100 N Main St Plainfield, IN'),(2,'Rockville',2,'400 E Government St Avon, IN'),(3,'Danvillle',3,'250 S US 39 Hwy Danville, IN'),(4,'Cartersburg',4,'980 Cartersburg Rd Cartersburg, IN'),(5,'Stilesville',5,'120 Hendricks St Stilesville, IN'),(6,'Clayton',6,'130 N US 39 Hwy Clayton, IN'),(7,'Lizton',7,'800 N US 39 Hwy Lizton, IN'),(8,'Pittsboro',8,'235 E US 136 Hwy Pittsboro, IN'),(9,'North Salem',9,'660 N US 75 Hwy North Salem, IN'),(10,'Hazelwood',10,'450 S County Rd Hazelwood, IN');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evidence`
--

DROP TABLE IF EXISTS `evidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evidence` (
  `evidence_id` int NOT NULL,
  `case_id` int NOT NULL,
  `officer_id` int NOT NULL,
  `case_open_date` datetime NOT NULL,
  `case_status` varchar(45) NOT NULL,
  `evidence_type` varchar(45) NOT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `zipcode` int NOT NULL,
  PRIMARY KEY (`evidence_id`),
  KEY `fk_case_id_evi_idx` (`case_id`),
  KEY `fk_officer_id_evi_idx` (`officer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evidence`
--

LOCK TABLES `evidence` WRITE;
/*!40000 ALTER TABLE `evidence` DISABLE KEYS */;
INSERT INTO `evidence` VALUES (900000001,111111111,20248110,'2024-01-01 00:00:00','Closed','Arson','2 Kg Debris','2552 W Washington St Plainfield,IN',46168),(900000002,111111112,20248112,'2024-01-01 00:00:00','Closed','Theft','$1000','4452 E Washington St Plainfield, IN',46168),(900000003,111111113,20248114,'2024-01-02 00:00:00','Closed','Narcotics','1 Kg Cocaine','9880 W Shady Ln Plainfield, IN',46168),(900000004,111111114,20248119,'2024-01-02 00:00:00','Open','Biological','1 Sexual Assault Kit','1400 E Carr Rd Plainfield, IN',46168),(900000005,111111115,20248113,'2024-01-02 00:00:00','Open','Hit and Run','1 Kg of Debris','355 E Main St Plainfield, IN',46168),(900000006,111111116,20248115,'2024-01-03 00:00:00','Open','Homicide','1 Firearm','675 N Parkview Ln Avon, IN',46123),(900000007,111111117,20248136,'2024-01-03 00:00:00','Open','Assault (Deadly Weapon)','1 Knife','811 N Bridgeport Rd Avon, IN',46123),(900000008,111111118,20248121,'2024-01-05 00:00:00','Open','Theft','$52,500','400 N Dan Jones Rd Avon, IN',46123),(900000009,111111119,20248124,'2024-01-07 00:00:00','Open','Narcotics','1 Kg Cannabis','245 N Avon Avenue Avon, IN',46123),(900000010,111111120,20248122,'2024-01-10 00:00:00','Open','Narcotics','1000 Fentanyl Pills','555 Prestwick Dr Avon, IN',46123),(900000011,111111121,20248111,'2024-01-11 00:00:00','Open','Theft','$750','430 E Carr Rd Plainfield, IN',46168),(900000012,111111122,20248118,'2024-01-15 00:00:00','Open','Narcotics','1 Kg Methamphetamine','875 N County Rd Plainfield, IN',46168),(900000013,111111123,20248130,'2024-01-19 00:00:00','Open','Narcotics','1 Kg','750 N Dan Jones Rd Avon, IN',46123),(900000014,111111124,20248117,'2024-01-21 00:00:00','Open','Assault(Deadly Weapon)','1 Baton','700 E Main St Plainfield, IN',46168),(900000015,111111125,20248121,'2024-01-22 00:00:00','Open','Hit and Run','2 Kg of Debris','960  S Shady Ln Plainfield, IN',46168),(900000016,111111126,20248132,'2024-01-28 00:00:00','Open','Assault (Deadly Weapon)','1 Buttefly Knife','440 E Tennessee St Danville, IN',46122),(900000017,111111127,20248135,'2024-01-29 00:00:00','Open','Theft','$1250','650 N Main St Danville, IN',46122),(900000018,111111128,20248134,'2024-01-30 00:00:00','Open','Homicide','1 Firearm','876 Twin Bridges Rd Danville, IN',46122),(900000019,111111129,20248136,'2024-01-31 00:00:00','Open','Narcotics','1 Oz Cannabis','845 W Illinois St Danville, IN',46122),(900000020,111111130,20248144,'2024-02-01 00:00:00','Open','Narcotics','100 Oxicotin Pills','566 W Cartersburg Rd Cartersburg , IN',46168),(900000021,111111131,20248142,'2024-02-02 00:00:00','Closed','Assault (Deadly Weapon)','1 Brass Knuckle','210 E County Rd 400 S Cartersburg, IN',46168),(900000022,111111132,20248146,'2024-02-03 00:00:00','Closed','Theft','$2500','330 N County Rd 600 E Cartersburg, IN',46168),(900000023,111111133,20248148,'2024-02-05 00:00:00','Open','Theft','$4000','589 S County Rd 750 W Cartersburg, IN',46168),(900000024,111111134,20248152,'2024-02-06 00:00:00','Closed','Narcotics','1 Oz Cocaine','200 N Hendricks Rd Stilesville, IN',46180),(900000025,111111135,20248155,'2024-02-08 00:00:00','Open','Assault (Deadly Weapon)','1 Spiked Club','340 N County Rd 500 W Stilesville, IN',46180),(900000026,111111136,20248157,'2024-02-10 00:00:00','Open','Assault (Deadly Weapon)','1 Pitchfork','460 E County Rd 200 N Stilesville, IN',46180),(900000027,111111137,20248160,'2024-02-11 00:00:00','Closed','Theft','$5000','325 E County Rd 400 N Stilesville, IN',46180),(900000028,111111138,20248159,'2024-02-13 00:00:00','Open','Narcotics','1 Kg Methamphetamine','775 E County Rd 600 S Stilesville, IN',46180),(900000029,111111139,20248162,'2024-02-15 00:00:00','Closed','Theft','$750','400 N US 39 Hwy Clayton, IN',46118),(900000030,111111140,20248163,'2024-02-16 00:00:00','Open','Assault (Deadly Weapon)','1 Machete','600 E County Rd 400 S Clayton, IN',46118),(900000031,111111141,20248164,'2024-02-17 00:00:00','Open','Narcotics','1 Kg Cannabis','550 E County Rd 575 S Clayton, IN',46118),(900000032,111111142,20248166,'2024-02-19 00:00:00','Open','Narcotics','2 Kg Cocaine','400 S County Rd 250 E Clayton, IN',46118),(900000033,111111143,20248167,'2024-02-21 00:00:00','Closed','Assault (Deadly Weapon)','1 Metal Rake','300 N County Rd 350 W Clayton, IN',46118),(900000034,111111144,20248168,'2024-02-23 00:00:00','Open','Assault (Deadly Weapon)','1 Hammer','150 N County Rd 650 W Clayton, IN',46118),(900000035,111111145,20248169,'2024-02-24 00:00:00','Open','Narcotics ','1 Kg Methamphetamine','950 S County Rd 500 W Clayton, IN',46118),(900000036,111111146,20248170,'2024-02-28 00:00:00','Open','Hit and Run','1 Kg Debris','350 E County Rd 600 N Clayton, IN',46118),(900000037,111111147,20248172,'2024-02-29 00:00:00','Open','Assault (Deadly Weapon)','1 Broken Beer Bottle','425 W County Rd 200 N Lizton, IN',46149),(900000038,111111148,20248173,'2024-03-01 00:00:00','Open','Narcotics','1 Kg Cocaine','500 S County Rd 900 E Lizton, IN',46149),(900000039,111111149,20248174,'2024-03-02 00:00:00','Closed','Theft','$1000','550 N County Rd 800 W Lizton, IN',46149),(900000040,111111150,20248176,'2024-03-05 00:00:00','Open','Theft','$2250','300 E County Rd 100 S Lizton, IN',46149),(900000041,111111151,20248177,'2024-03-08 00:00:00','Open','Narcotics','1 Kg Cannabis','225 N County Rd 750 E Lizton, IN',46149),(900000042,111111152,20248179,'2024-03-09 00:00:00','Open','Narcotics','5 Kg Methamphetamine','290 E County Rd 250 S Lizton, IN',46149),(900000043,111111153,20248180,'2024-03-11 00:00:00','Open','Assault (Deadly Weapon)','1 Hunting Knife','450 E County Rd 400 W Lizton, IN',46149),(900000044,111111154,20248182,'2024-03-13 00:00:00','Closed','Theft','$4500','245 S County Rd 500 N Pittsboro, IN',46167),(900000045,111111155,20248185,'2024-03-15 00:00:00','Open','Hit and Run','2 Kg Debris','900 E County Rd 250 N Pittsboro, IN',46167),(900000046,111111156,20248187,'2024-03-17 00:00:00','Open','Arson','1 Kg Debris','750 S County Rd 450 E Pittsboro, IN',46167),(900000047,111111157,20248189,'2024-03-19 00:00:00','Open','Theft','$900','550 W County Rd 700 S Pittsboro, IN',46167),(900000048,111111158,20248192,'2024-03-21 00:00:00','Open','Homicide','1 Shotgun','225 W County Rd 250 S North Salem, IN',46165),(900000049,111111159,20248194,'2024-03-23 00:00:00','Open','Assault (Deadly Weapon)','1 Rolling Pin','550 N County Rd 400 W North Salem, IN',46165),(900000050,111111160,20248196,'2024-03-25 00:00:00','Open','Theft','$6000','275 N County Rd 250 E North Salem, IN',46165),(900000051,111111161,20248198,'2024-03-27 00:00:00','Open','Assault (Deadly Weapon)','1 Metal Baton','450 S County Rd 300 W North Salem, IN',46165),(900000052,111111162,20248200,'2024-03-28 00:00:00','Open','Theft','$750','277 E County Rd 100 N North Salem, IN',46165),(900000053,111111163,20248202,'2024-03-29 00:00:00','Open','Homicide','1 Rifle','400 S US 39 Hwy Hazelwood, IN',46118),(900000054,111111164,20248203,'2024-03-30 00:00:00','Open','Theft','$2000','550 W County Rd 900 S Hazelwood, IN',46118),(900000055,111111165,20248205,'2024-04-01 00:00:00','Open','Hit and Run','1 Kg Debris','228 E County Rd 850 S Hazelwood, IN',46118),(900000056,111111166,20248206,'2024-04-02 00:00:00','Open','Homicide','1 Firearm','800 N County Rd Hazelwood, IN',46118),(900000057,111111167,20248207,'2024-05-03 00:00:00','Open','Narcotics','1 Kg Methamphetamine','900 S County Rd Hazelwood, IN',46118),(900000058,111111168,20248208,'2024-05-03 00:00:00','Open','Homicide','1 Shotgun','750 W County Rd Hazelwood, IN',46118);
/*!40000 ALTER TABLE `evidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firearms_evidence`
--

DROP TABLE IF EXISTS `firearms_evidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `firearms_evidence` (
  `firearm_evidence_id` int NOT NULL,
  `evidence_id` int NOT NULL,
  `serial_number` varchar(45) NOT NULL,
  `manufacturer` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `caliber` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `firearm_class` varchar(45) NOT NULL,
  `crime_type` varchar(45) NOT NULL,
  PRIMARY KEY (`firearm_evidence_id`),
  KEY `fk_evidence_id_evi_fire_idx` (`evidence_id`),
  CONSTRAINT `fk_evidence_id_evi_fire` FOREIGN KEY (`evidence_id`) REFERENCES `evidence` (`evidence_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firearms_evidence`
--

LOCK TABLES `firearms_evidence` WRITE;
/*!40000 ALTER TABLE `firearms_evidence` DISABLE KEYS */;
INSERT INTO `firearms_evidence` VALUES (1,900000006,'RG6533000','Ruger','LCP 9','9mm','Black','Handgun','Homicide'),(2,900000048,'RM3440009','Remington','870 Express','12G','Black/Wood','Shotgun','Homicide'),(3,900000053,'RM7002239','Remington','R700','30-06','Black','Rifle','Homicide'),(4,900000056,'SW491133','Smith And Wesson','1911','45 ACP','Stainless Steel','Handgun','Homicide'),(5,900000058,'MS387669','Mossberg','500 Express','12 G','Black','Shotgun','Homicide');
/*!40000 ALTER TABLE `firearms_evidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `officers`
--

DROP TABLE IF EXISTS `officers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `officers` (
  `officer_id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_initial` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `shift_id` int NOT NULL,
  `district_id` int NOT NULL,
  `district_supervisor_id` int DEFAULT NULL,
  PRIMARY KEY (`officer_id`),
  KEY `fk_district_supervisor_id_district_sup_idx` (`district_supervisor_id`),
  KEY `fk_district_id_district_idx` (`district_id`),
  CONSTRAINT `fk_district_id_district` FOREIGN KEY (`district_id`) REFERENCES `districts` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_district_supervisor_id_district_sup` FOREIGN KEY (`district_supervisor_id`) REFERENCES `district_supervisors` (`district_supervisor_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officers`
--

LOCK TABLES `officers` WRITE;
/*!40000 ALTER TABLE `officers` DISABLE KEYS */;
INSERT INTO `officers` VALUES (20248110,'William','D.','Lesley',1,1,NULL),(20248111,'Brian','C.','Booker',1,1,NULL),(20248112,'John','D.','Mastadon',1,1,NULL),(20248113,'Alex','F.','Ulrich',2,1,NULL),(20248114,'Von','A.','Meadlow',2,1,NULL),(20248115,'Katie','L.','Chapman',2,1,NULL),(20248116,'Lawerence','B.','Johnson',2,1,NULL),(20248117,'Kitt','R.','Lesley',2,1,NULL),(20248118,'Bobby','C.','Earnhardt',3,1,NULL),(20248119,'Kyle','D.','Bush',3,1,NULL),(20248120,'Art','Z.','Durant',3,1,1),(20248121,'Bertrand','D.','Russell',1,2,NULL),(20248122,'Andy','H.','Holmes',1,2,NULL),(20248123,'Demarcus','D.','Cousins',1,2,NULL),(20248124,'Tyrese','V.','Haliburton',1,2,NULL),(20248125,'John','A.','Cooper',2,2,NULL),(20248126,'Jeff','G.','Minnix',2,2,NULL),(20248127,'Sarah','T.','Able',2,2,NULL),(20248129,'Chris','D.','Leslie',3,2,NULL),(20248130,'Ty','D.','Washington',3,2,NULL),(20248131,'Carmen','D.','Santana',3,2,2),(20248132,'John','B.','Munster',1,3,NULL),(20248133,'Jay','W.','Warner',1,3,NULL),(20248134,'Kyle','G.','Flushing',1,3,NULL),(20248135,'George','W.','Constanza',1,3,NULL),(20248136,'Betty','D','Black',2,3,NULL),(20248137,'Bruce','E.','Cavill',2,3,NULL),(20248138,'Kody','M.','Cheeseman',2,3,NULL),(20248139,'Phillip','C.','Post',3,3,NULL),(20248140,'Joe','N.','Yeager',3,3,NULL),(20248141,'Max','J.','Galipoli',3,3,3),(20248142,'Jill','N.','Parsons',1,4,NULL),(20248143,'Tyler','N.','Lock',1,4,NULL),(20248144,'Ulysses','H.','Lockheed',1,4,NULL),(20248145,'Ernesto','L.','Cossio',1,4,NULL),(20248146,'Reginald','W.','Gray',2,4,NULL),(20248147,'Elizabeth','N.','Graves',2,4,NULL),(20248148,'Izzac','G.','Washington',2,4,NULL),(20248149,'Oscar','Q.','Treblow',3,4,NULL),(20248150,'Yolanda','R.','Fisser',3,4,NULL),(20248151,'Burt','P.','Parks',3,4,4),(20248152,'Issac','U.','Gates',1,5,NULL),(20248153,'Percival','G.','Jones',1,5,NULL),(20248154,'Korey','L.','Hoffa',1,5,NULL),(20248155,'Wesley','J.','Jones',1,5,NULL),(20248156,'Robert','T.','Rodriguez',2,5,NULL),(20248157,'Ernie','R.','Koch',2,5,NULL),(20248158,'Ryan','G.','Gosmer',2,5,NULL),(20248159,'Hugh','T.','Banks',3,5,NULL),(20248160,'Lori','T.','Zyles',3,5,NULL),(20248161,'Andrew','B.','Cunningham',3,5,5),(20248162,'Stacy','M.','Bowser',1,6,NULL),(20248163,'Elaine','U.','Trax',1,6,NULL),(20248164,'Oppy','G.','Schiller',1,6,NULL),(20248165,'Andy','Y.','Galoppogos',1,6,NULL),(20248166,'Bob','C.','Cruikshank',2,6,NULL),(20248167,'Arnold','W.','Rosenthal',2,6,NULL),(20248168,'Uzi','M.','Smith',2,6,NULL),(20248169,'Brent','T.','Giles',3,6,NULL),(20248170,'Boris','I.','Azimov',3,6,NULL),(20248171,'Tyson','M.','Porter',3,6,6),(20248172,'Nick ','H.','Ayers',1,7,NULL),(20248173,'Robbie','E.','Leslie',1,7,NULL),(20248174,'William','E.','Hammer',1,7,NULL),(20248175,'Peter','R.','Simpson',1,7,NULL),(20248176,'Homer','E.','Griffin',2,7,NULL),(20248177,'Stan','I.','Cartman',2,7,NULL),(20248178,'Eric','P.','Marsh',2,7,NULL),(20248179,'Kenny','Z.','Broflovski',3,7,NULL),(20248180,'Kyle','T.','McCormick',3,7,NULL),(20248181,'Randy','Q.','Garrison',3,7,7),(20248182,'Holly','E.','Johsnon',1,8,NULL),(20248183,'Henry','L.','Richardson',1,8,NULL),(20248184,'Zakk','B.','Thompson',1,8,NULL),(20248185,'Joe','B.','Henry',1,8,NULL),(20248186,'Bo','E.','Scott',2,8,NULL),(20248187,'Jeff','N.','Carson',2,8,NULL),(20248188,'Jimmy','M.','Wells',2,8,NULL),(20248189,'Tyler','G.','Walts',3,8,NULL),(20248190,'Kyle','C.','Effinger',3,8,NULL),(20248191,'Reginald','K.','Tounkara',3,8,8),(20248192,'Allen','C.','Wonka',1,9,NULL),(20248193,'Horace','N.','Allen',1,9,NULL),(20248194,'Rachel','G.','Woodyard',1,9,NULL),(20248195,'Matthew','H.','Wells',1,9,NULL),(20248196,'Larry','T.','Stall',2,9,NULL),(20248197,'James','R.','Miller',2,9,NULL),(20248198,'Tyrese','B.','Brookes',2,9,NULL),(20248199,'Owen','P.','Franklin',3,9,NULL),(20248200,'Kai','B.','Keller',3,9,NULL),(20248201,'Joseph','G.','Chapman',3,9,9),(20248202,'Rob','E.','Wagoner',1,10,NULL),(20248203,'Resse','I.','Thornton',1,10,NULL),(20248204,'Ken','U.','Welch',1,10,NULL),(20248205,'Isaiah','R.','Stevens',1,10,NULL),(20248206,'Martin','R.','Hopper',2,10,NULL),(20248207,'Spencer','O.','Morgan',2,10,NULL),(20248208,'Evan','F.','Marks',2,10,NULL),(20248209,'Gerald','Z.','Kelley',3,10,NULL),(20248210,'Jordan','R.','Wilson',3,10,NULL),(20248211,'Zach','T.','Wolfe',3,10,10),(20248212,'Joe','M.','Exotic',3,10,NULL),(20428128,'Stacie','L.','Peters',2,2,NULL);
/*!40000 ALTER TABLE `officers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 20:47:36
