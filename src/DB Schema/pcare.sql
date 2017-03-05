-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: pcare
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `date_of_birth` tinyblob,
  `email_id` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `speciality` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'John Street','Thunder Bay','8073569230','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','rich45@gmail.com','','Richard','Admin123','Ontario','Neurosurgeon','a'),(2,'Applewood','Hamilton','8073569452','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xpÿÿÿŠñ\Ì\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','drmike1954@gmail.com','','Michael','Admin123','Ontario','Addiction psychiatrist','a'),(3,'Red river','Kingston','8074269230','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0ë‹ \0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','Leon48@gmail.com','','Leon','Admin123','Ontario','Adolescent medicine specialist','a'),(4,'Varsity row','Oshawa','8022569230','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xpÿÿÿ\Ì#µˆ\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','Melken@yahoo.com','','Melissa','Admin123','Ontario','Allergist','d'),(5,'Machar Street','Windsor','8074039230','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','tommy5@gmail.com','','Tom','Admin123','Ontario','Anesthesiologist','d'),(6,'John Street','Thunder Bay','8073569230','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','rich454@gmail.com','','Richard','Admin123','Ontario','Cardiologist','d'),(7,'John Street','Thunder Bay','8073569230','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','rich455@gmail.com','','Richard','Admin123','Ontario','Cardiovascular surgeon','a'),(8,'John Street','Thunder Bay','8073569230','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','rich456@gmail.com','','Richard','Admin123','Ontario','Cardiologist','d'),(9,'John Street','Thunder Bay','8073569230','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','rich457@gmail.com','','Richard','Admin123','Ontario','Radiologist','a'),(10,'John Street','Thunder Bay','8073569230','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','rich458@gmail.com','','Richard','Admin123','Ontario','Cardiologist','d');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_patient`
--

DROP TABLE IF EXISTS `doctor_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_patient` (
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  KEY `FKoee3w1lhncf3q845n6vatov1j` (`patient_id`),
  KEY `FK1vod5519v8g177r669gytdahb` (`doctor_id`),
  CONSTRAINT `FK1vod5519v8g177r669gytdahb` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`),
  CONSTRAINT `FKoee3w1lhncf3q845n6vatov1j` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_patient`
--

LOCK TABLES `doctor_patient` WRITE;
/*!40000 ALTER TABLE `doctor_patient` DISABLE KEYS */;
INSERT INTO `doctor_patient` VALUES (1,1),(1,2),(2,7),(2,3),(3,5),(3,2),(4,9),(4,7),(5,3),(5,5),(6,2),(6,3),(7,4),(7,5),(8,6),(8,7),(9,8),(9,9),(10,9),(10,10);
/*!40000 ALTER TABLE `doctor_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical`
--

DROP TABLE IF EXISTS `medical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drug` varchar(255) DEFAULT NULL,
  `patient_patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr3dse37kf07xocbeyht9mh5b` (`patient_patient_id`),
  CONSTRAINT `FKr3dse37kf07xocbeyht9mh5b` FOREIGN KEY (`patient_patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical`
--

LOCK TABLES `medical` WRITE;
/*!40000 ALTER TABLE `medical` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `date_of_birth` tinyblob,
  `diagnosis` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `visits` int(11) DEFAULT NULL,
  `medical_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `FKitqtpxvqu3moc37p60u1njc1j` (`medical_id`),
  CONSTRAINT `FKitqtpxvqu3moc37p60u1njc1j` FOREIGN KEY (`medical_id`) REFERENCES `medical` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'John Street',25,'Thunder Bay','8077082057','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','Dengu','gaurav.sharma19@yahoo.com','','Gaurav Sharma','Admin123','Ontario',5,NULL),(2,'Phillip Street',25,'Toronto','8072552672','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','Tuberculosis','sid19@yahoo.com','','Siddhant','Admin123','Ontario',5,NULL),(3,'Pasteur Street',25,'Waterloo','8073562057','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','Malaria','grewal@yahoo.com','','S grewal','Admin123','Ontario',5,NULL),(4,'Oliver Road',25,'Hamilton','8074567980','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','Dengu','harish@yahoo.com','','Harish','Admin123','Ontario',5,NULL),(5,'Machar Street',25,'Windsor','8074782667','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','Tuberculosis','pacre@yahoo.com','','Popat Laal ','Admin123','Ontario',5,NULL),(6,'Mcbean Street',25,'Kingston','8073562607','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','Dengu','adminlte@yahoo.com','','Bob','Admin123','Ontario',5,NULL),(7,'Rupert Street',25,'Kitchener','8077082603','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','Malaria','sarwagya@yahoo.com','','Jacky','Admin123','Ontario',5,NULL),(8,'Algoma South',25,'Missisauga','8073451837','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','Malaria','ameya@yahoo.com','','Bruce','Admin123','Ontario',5,NULL),(9,'Red river',25,'Orillia','8077869810','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','Tuberculosis','atish@yahoo.com','','John','Admin123','Ontario',5,NULL),(10,'Varsity row',25,'Oshawa','8072226780','¬\í\0sr\0org.joda.time.LocalDateÿÿø\Ó\ä\ëµ\0J\0iLocalMillisL\0iChronologyt\0\ZLorg/joda/time/Chronology;xp\0\0\0¡6\Ô\0sr\0\'org.joda.time.chrono.ISOChronology$Stub©\Èfq7P\'\0\0xpsr\0org.joda.time.DateTimeZone$Stub¦/š|2\Z\ã\0\0xpw\0UTCxx','Dengu','ujjval@yahoo.com','','Ujjval','Admin123','Ontario',5,NULL);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prescription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `directions` varchar(255) DEFAULT NULL,
  `drug_name` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `form` varchar(255) DEFAULT NULL,
  `list_of_drugs` tinyblob,
  `patient_id` varchar(255) DEFAULT NULL,
  `prescribed_by` varchar(255) DEFAULT NULL,
  `prescribed_byid` varchar(255) DEFAULT NULL,
  `prescribed_on` varchar(255) DEFAULT NULL,
  `prescription_id` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `strength` varchar(255) DEFAULT NULL,
  `visit_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `patient_patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK43o0xe7qh7ogxbiv4f6s2drqb` (`patient_patient_id`),
  CONSTRAINT `FK43o0xe7qh7ogxbiv4f6s2drqb` FOREIGN KEY (`patient_patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_doctor`
--

DROP TABLE IF EXISTS `staff_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_doctor` (
  `staff_id` int(11) NOT NULL,
  `doctor_doctor_id` int(11) NOT NULL,
  UNIQUE KEY `UK_hevair82o305c5168ivmlm2vg` (`doctor_doctor_id`),
  KEY `FKf4rj4l8kb4t2tidvtmk9enp7v` (`staff_id`),
  CONSTRAINT `FKf4rj4l8kb4t2tidvtmk9enp7v` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  CONSTRAINT `FKgapebjhsn3j4811n0m315haeo` FOREIGN KEY (`doctor_doctor_id`) REFERENCES `doctor` (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_doctor`
--

LOCK TABLES `staff_doctor` WRITE;
/*!40000 ALTER TABLE `staff_doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_patient`
--

DROP TABLE IF EXISTS `staff_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_patient` (
  `staff_id` int(11) NOT NULL,
  `patient_patient_id` int(11) NOT NULL,
  UNIQUE KEY `UK_2t0hyo7y1c0fko5so8cfkdewc` (`patient_patient_id`),
  KEY `FKhovh7reffgi60c0nkul2cpf81` (`staff_id`),
  CONSTRAINT `FKhovh7reffgi60c0nkul2cpf81` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  CONSTRAINT `FKjc0agn8ns8gbicd2ggppqbaxd` FOREIGN KEY (`patient_patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_patient`
--

LOCK TABLES `staff_patient` WRITE;
/*!40000 ALTER TABLE `staff_patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `email_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('gaurav.sharma19@yahoo.com','Gaurav','Admin123','patient'),('rich45@gmail.com','Richard','Admin123','doctor');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-05 14:55:07
