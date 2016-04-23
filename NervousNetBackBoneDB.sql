-- MySQL dump 10.13  Distrib 5.7.12, for osx10.11 (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	5.7.12

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
-- Table structure for table `SENSOR_0`
--

DROP TABLE IF EXISTS `SENSOR_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SENSOR_0` (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` binary(16) NOT NULL,
  `RecordTime` bigint(20) unsigned NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID` (`RecordID`),
  KEY `idx_SENSOR_0_UUID` (`UUID`),
  KEY `idx_SENSOR_0_RecordTime` (`RecordTime`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SENSOR_0`
--

LOCK TABLES `SENSOR_0` WRITE;
/*!40000 ALTER TABLE `SENSOR_0` DISABLE KEYS */;
INSERT INTO `SENSOR_0` VALUES (1,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330496314,0.661511,0,0.0966842),(2,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330496315,0.636441,0,0.545774),(3,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330496316,0.432829,0,0.828589),(4,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330496317,0.611366,0,0.106725),(5,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330496318,0.601976,0,0.48709),(6,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330496319,0.883188,0,0.779055),(7,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330496320,0.718267,0,0.22568),(8,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330496321,0.725896,0,0.0481156),(9,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330496322,0.0609481,0,0.0934506),(10,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330496323,0.2421,0,0.0249662),(11,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330951503,0.173338,0,0.770906),(12,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330951504,0.106385,0,0.954313),(13,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330951505,0.794519,0,0.688652),(14,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330951506,0.300467,0,0.0849434),(15,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330951507,0.966906,0,0.134885),(16,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330951508,0.75191,0,0.310968),(17,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330951509,0.946771,0,0.635053),(18,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330951510,0.573172,0,0.225948),(19,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330951511,0.0367918,0,0.66543),(20,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330951512,0.151554,0,0.132129),(21,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461331099249,0.055051,0,0.0426918),(22,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461331099250,0.718347,0,0.290886),(23,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461331099251,0.306267,0,0.0324743),(24,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461331099252,0.385652,0,0.752884),(25,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461331099253,0.80667,0,0.489037),(26,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461331099254,0.872267,0,0.0574683),(27,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461331099255,0.965664,0,0.964837),(28,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461331099256,0.488012,0,0.341343),(29,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461331099257,0.046625,0,0.6555),(30,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461331099258,0.690465,0,0.79569),(31,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336581410,0.307082,0,0.202452),(32,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336581411,0.512712,0,0.967589),(33,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336581412,0.94341,0,0.121236),(34,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336581413,0.709804,0,0.410567),(35,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336581414,0.628537,0,0.223377),(36,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336581415,0.158815,0,0.477059),(37,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336581416,0.0394824,0,0.340192),(38,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336581417,0.558338,0,0.376508),(39,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336581418,0.671907,0,0.109066),(40,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336581419,0.699378,0,0.19258),(41,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336650433,0.754023,0,0.913156),(42,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336650434,0.271137,0,0.642999),(43,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336650435,0.516943,0,0.268431),(44,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336650436,0.120622,0,0.175024),(45,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336650437,0.706251,0,0.23609),(46,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336650438,0.94285,0,0.83689),(47,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336650439,0.948243,0,0.661415),(48,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336650440,0.517084,0,0.205476),(49,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336650441,0.0950749,0,0.745705),(50,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336650442,0.31018,0,0.0587119),(51,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461351108245,2,4,6),(52,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461351693164,2,4,6),(53,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461353763446,1,2,3),(54,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461355237475,1,2,3),(55,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461369430451,1,1,1),(56,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461372709061,0,0,0),(57,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461372715367,0,0,0),(58,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461372719576,0,0,0),(59,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461374114495,0,0,0),(60,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461374138444,0,0,0),(61,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461374351357,0,0,0);
/*!40000 ALTER TABLE `SENSOR_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SENSOR_1`
--

DROP TABLE IF EXISTS `SENSOR_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SENSOR_1` (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` binary(16) NOT NULL,
  `RecordTime` bigint(20) unsigned NOT NULL,
  `Percent` float NOT NULL,
  `Charging` bit(1) NOT NULL,
  `UsbCharging` bit(1) NOT NULL,
  `AcCharging` bit(1) NOT NULL,
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID` (`RecordID`),
  KEY `idx_SENSOR_1_UUID` (`UUID`),
  KEY `idx_SENSOR_1_RecordTime` (`RecordTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SENSOR_1`
--

LOCK TABLES `SENSOR_1` WRITE;
/*!40000 ALTER TABLE `SENSOR_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `SENSOR_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SENSOR_2`
--

DROP TABLE IF EXISTS `SENSOR_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SENSOR_2` (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` binary(16) NOT NULL,
  `RecordTime` bigint(20) unsigned NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID` (`RecordID`),
  KEY `idx_SENSOR_2_UUID` (`UUID`),
  KEY `idx_SENSOR_2_RecordTime` (`RecordTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SENSOR_2`
--

LOCK TABLES `SENSOR_2` WRITE;
/*!40000 ALTER TABLE `SENSOR_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `SENSOR_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SENSOR_3`
--

DROP TABLE IF EXISTS `SENSOR_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SENSOR_3` (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` binary(16) NOT NULL,
  `RecordTime` bigint(20) unsigned NOT NULL,
  `Humidity` float NOT NULL,
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID` (`RecordID`),
  KEY `idx_SENSOR_3_UUID` (`UUID`),
  KEY `idx_SENSOR_3_RecordTime` (`RecordTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SENSOR_3`
--

LOCK TABLES `SENSOR_3` WRITE;
/*!40000 ALTER TABLE `SENSOR_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `SENSOR_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SENSOR_4`
--

DROP TABLE IF EXISTS `SENSOR_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SENSOR_4` (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` binary(16) NOT NULL,
  `RecordTime` bigint(20) unsigned NOT NULL,
  `Light` float NOT NULL,
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID` (`RecordID`),
  KEY `idx_SENSOR_4_UUID` (`UUID`),
  KEY `idx_SENSOR_4_RecordTime` (`RecordTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SENSOR_4`
--

LOCK TABLES `SENSOR_4` WRITE;
/*!40000 ALTER TABLE `SENSOR_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `SENSOR_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SENSOR_5`
--

DROP TABLE IF EXISTS `SENSOR_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SENSOR_5` (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` binary(16) NOT NULL,
  `RecordTime` bigint(20) unsigned NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID` (`RecordID`),
  KEY `idx_SENSOR_5_UUID` (`UUID`),
  KEY `idx_SENSOR_5_RecordTime` (`RecordTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SENSOR_5`
--

LOCK TABLES `SENSOR_5` WRITE;
/*!40000 ALTER TABLE `SENSOR_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `SENSOR_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SENSOR_6`
--

DROP TABLE IF EXISTS `SENSOR_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SENSOR_6` (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` binary(16) NOT NULL,
  `RecordTime` bigint(20) unsigned NOT NULL,
  `Proximity` float NOT NULL,
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID` (`RecordID`),
  KEY `idx_SENSOR_6_UUID` (`UUID`),
  KEY `idx_SENSOR_6_RecordTime` (`RecordTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SENSOR_6`
--

LOCK TABLES `SENSOR_6` WRITE;
/*!40000 ALTER TABLE `SENSOR_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `SENSOR_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SENSOR_7`
--

DROP TABLE IF EXISTS `SENSOR_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SENSOR_7` (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` binary(16) NOT NULL,
  `RecordTime` bigint(20) unsigned NOT NULL,
  `Temperature` float NOT NULL,
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID` (`RecordID`),
  KEY `idx_SENSOR_7_UUID` (`UUID`),
  KEY `idx_SENSOR_7_RecordTime` (`RecordTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SENSOR_7`
--

LOCK TABLES `SENSOR_7` WRITE;
/*!40000 ALTER TABLE `SENSOR_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `SENSOR_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SENSOR_8`
--

DROP TABLE IF EXISTS `SENSOR_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SENSOR_8` (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` binary(16) NOT NULL,
  `RecordTime` bigint(20) unsigned NOT NULL,
  `Rms` float NOT NULL,
  `Spl` float NOT NULL,
  `Band01` float NOT NULL,
  `Band02` float NOT NULL,
  `Band03` float NOT NULL,
  `Band04` float NOT NULL,
  `Band05` float NOT NULL,
  `Band06` float NOT NULL,
  `Band07` float NOT NULL,
  `Band08` float NOT NULL,
  `Band09` float NOT NULL,
  `Band10` float NOT NULL,
  `Band11` float NOT NULL,
  `Band12` float NOT NULL,
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID` (`RecordID`),
  KEY `idx_SENSOR_8_UUID` (`UUID`),
  KEY `idx_SENSOR_8_RecordTime` (`RecordTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SENSOR_8`
--

LOCK TABLES `SENSOR_8` WRITE;
/*!40000 ALTER TABLE `SENSOR_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `SENSOR_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SENSOR_9`
--

DROP TABLE IF EXISTS `SENSOR_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SENSOR_9` (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` binary(16) NOT NULL,
  `RecordTime` bigint(20) unsigned NOT NULL,
  `Pressure` float NOT NULL,
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID` (`RecordID`),
  KEY `idx_SENSOR_9_UUID` (`UUID`),
  KEY `idx_SENSOR_9_RecordTime` (`RecordTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SENSOR_9`
--

LOCK TABLES `SENSOR_9` WRITE;
/*!40000 ALTER TABLE `SENSOR_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `SENSOR_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SENSOR_a`
--

DROP TABLE IF EXISTS `SENSOR_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SENSOR_a` (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` binary(16) NOT NULL,
  `RecordTime` bigint(20) unsigned NOT NULL,
  `Connected` bit(1) NOT NULL,
  `NetworkType` int(11) NOT NULL,
  `Roaming` bit(1) NOT NULL,
  `WifiHashId` varchar(255) NOT NULL,
  `WifiStrength` int(11) NOT NULL,
  `MobileHashId` varchar(255) NOT NULL,
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID` (`RecordID`),
  KEY `idx_SENSOR_a_UUID` (`UUID`),
  KEY `idx_SENSOR_a_RecordTime` (`RecordTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SENSOR_a`
--

LOCK TABLES `SENSOR_a` WRITE;
/*!40000 ALTER TABLE `SENSOR_a` DISABLE KEYS */;
/*!40000 ALTER TABLE `SENSOR_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SENSOR_b`
--

DROP TABLE IF EXISTS `SENSOR_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SENSOR_b` (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` binary(16) NOT NULL,
  `RecordTime` bigint(20) unsigned NOT NULL,
  `Mac` bigint(20) NOT NULL,
  `AdvertisementMSB` bigint(20) NOT NULL,
  `AdvertisementLSB` bigint(20) NOT NULL,
  `BleuuidMSB` bigint(20) NOT NULL,
  `BleuuidLSB` bigint(20) NOT NULL,
  `RSSI` int(11) NOT NULL,
  `Major` int(11) NOT NULL,
  `Minor` int(11) NOT NULL,
  `TXpower` int(11) NOT NULL,
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID` (`RecordID`),
  KEY `idx_SENSOR_b_UUID` (`UUID`),
  KEY `idx_SENSOR_b_RecordTime` (`RecordTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SENSOR_b`
--

LOCK TABLES `SENSOR_b` WRITE;
/*!40000 ALTER TABLE `SENSOR_b` DISABLE KEYS */;
/*!40000 ALTER TABLE `SENSOR_b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transact`
--

DROP TABLE IF EXISTS `Transact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transact` (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` binary(16) NOT NULL,
  `UploadTime` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID` (`RecordID`),
  KEY `idx_Transact_UUID` (`UUID`),
  KEY `idx_Transact_UploadTime` (`UploadTime`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transact`
--

LOCK TABLES `Transact` WRITE;
/*!40000 ALTER TABLE `Transact` DISABLE KEYS */;
INSERT INTO `Transact` VALUES (1,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330496449),(2,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461330951740),(3,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461331099344),(4,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336581603),(5,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461336650513),(6,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461351108245),(7,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461351693164),(8,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461353763447),(9,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461355237475),(10,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461369430451),(11,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461372709062),(12,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461372715367),(13,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461372719576),(14,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461374114495),(15,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461374138444),(16,'\0\0\0\0\"3D\0\0\0\0Ufwˆ',1461374351357);
/*!40000 ALTER TABLE `Transact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-23 12:51:26
