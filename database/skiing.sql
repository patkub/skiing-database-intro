-- MySQL dump 10.13  Distrib 5.7.10, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: skiing
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `chairlift`
--

DROP TABLE IF EXISTS `chairlift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chairlift` (
  `ChairNumber` int(10) NOT NULL,
  `SafetyBar` tinyint(4) NOT NULL,
  PRIMARY KEY (`ChairNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chairlift`
--

LOCK TABLES `chairlift` WRITE;
/*!40000 ALTER TABLE `chairlift` DISABLE KEYS */;
INSERT INTO `chairlift` VALUES (1,1),(2,0),(4,1),(5,1),(6,1),(7,0),(8,0),(10,1);
/*!40000 ALTER TABLE `chairlift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `EmployeeID` int(10) NOT NULL,
  `EmployeeName` char(20) NOT NULL,
  `Salary` decimal(5,2) NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1001,'Ted Cruz',9.80),(1002,'Percy Curatolo',11.00),(1111,'John Fote',12.50),(1991,'Barak Obama',11.50),(2087,'Bill Garrity',12.50),(2111,'Sean Flaherty',17.00),(2744,'Joe Miller',15.60),(3351,'Patrick Kubiak',18.25),(4118,'Marco Rubio',11.98),(4467,'Cedric Miro',8.15),(5772,'Rand Paul',10.00),(7043,'Leha Lambson',8.00),(8351,'Justin Beiber',14.00),(8891,'Marcel Eckles',14.75);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gondola`
--

DROP TABLE IF EXISTS `gondola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gondola` (
  `ChairNumber` int(10) NOT NULL,
  `RackCapacity` int(10) NOT NULL,
  PRIMARY KEY (`ChairNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gondola`
--

LOCK TABLES `gondola` WRITE;
/*!40000 ALTER TABLE `gondola` DISABLE KEYS */;
INSERT INTO `gondola` VALUES (3,4),(9,6),(11,4),(12,3);
/*!40000 ALTER TABLE `gondola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lifts`
--

DROP TABLE IF EXISTS `lifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lifts` (
  `ChairNumber` int(10) NOT NULL,
  `Capacity` int(10) NOT NULL,
  `ResortName` char(100) NOT NULL,
  `Address` char(200) NOT NULL,
  PRIMARY KEY (`ChairNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lifts`
--

LOCK TABLES `lifts` WRITE;
/*!40000 ALTER TABLE `lifts` DISABLE KEYS */;
INSERT INTO `lifts` VALUES (1,2,'Burke Mountain Ski Area','223 Sherburne Lodge Rd, East Burke, VT 05832'),(2,3,'Burke Mountain Ski Area','223 Sherburne Lodge Rd, East Burke, VT 05832'),(3,5,'Camelback Mountain','301 Resort Dr, Tannersville, PA 18372'),(4,1,'Camelback Mountain','301 Resort Dr, Tannersville, PA 18372'),(5,4,'Heavenly Mountain','4080 Lake Tahoe Blvd'),(6,3,'Killington Mountain','Killington, VT 05751'),(7,2,'Loon Mountain','Lincoln, New Hampshire'),(8,4,'Mount Snow','Dover, Vermont'),(9,5,'Mount Southington','396 Mt Vernon Rd, Plantsville, CT 06479'),(10,2,'Presidential Mountain','1600 Pennsylvania Avenue NW'),(11,6,'Stratton Mountain','5 Village Lodge Rd, South Londonderry, VT 05155'),(12,6,'Whiteface Lake Placid','2634 Main St. Lake Placid, NY 12946');
/*!40000 ALTER TABLE `lifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental-items`
--

DROP TABLE IF EXISTS `rental-items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rental-items` (
  `Rental-ItemID` int(10) NOT NULL,
  `Type` char(20) NOT NULL,
  PRIMARY KEY (`Rental-ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental-items`
--

LOCK TABLES `rental-items` WRITE;
/*!40000 ALTER TABLE `rental-items` DISABLE KEYS */;
INSERT INTO `rental-items` VALUES (1,'skis'),(2,'snowboard'),(3,'skitube'),(4,'skis'),(5,'skis'),(6,'skitube'),(7,'snowboard'),(8,'poles'),(9,'boots'),(10,'helmet'),(11,'skitube'),(12,'skis'),(13,'skis'),(14,'boots'),(15,'skis'),(16,'skitube');
/*!40000 ALTER TABLE `rental-items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rents`
--

DROP TABLE IF EXISTS `rents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rents` (
  `Rental-ItemID` int(10) NOT NULL,
  `ResortName` char(100) NOT NULL,
  `Address` char(200) NOT NULL,
  PRIMARY KEY (`Rental-ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rents`
--

LOCK TABLES `rents` WRITE;
/*!40000 ALTER TABLE `rents` DISABLE KEYS */;
INSERT INTO `rents` VALUES (1,'Burke Mountain Ski Area','223 Sherburne Lodge Rd, East Burke, VT 05832'),(2,'Camelback Mountain','301 Resort Dr, Tannersville, PA 18372'),(3,'Heavenly Mountain','4080 Lake Tahoe Blvd'),(4,'Killington Mountain','Killington, VT 05751'),(5,'Loon Mountain','Lincoln, New Hampshire'),(6,'Mount Snow','Dover, Vermont'),(7,'Mount Southington','396 Mt Vernon Rd, Plantsville, CT 06479'),(8,'Presidential Mountain','1600 Pennsylvania Avenue NW'),(9,'Stratton Mountain','5 Village Lodge Rd, South Londonderry, VT 05155'),(10,'Whiteface Lake Placid','2634 Main St. Lake Placid, NY 12946'),(11,'Mount Southington','396 Mt Vernon Rd, Plantsville, CT 06479'),(12,'Presidential Mountain','1600 Pennsylvania Avenue NW'),(13,'Camelback Mountain','301 Resort Dr, Tannersville, PA 18372'),(14,'Burke Mountain Ski Area','223 Sherburne Lodge Rd, East Burke, VT 05832'),(15,'Heavenly Mountain','4080 Lake Tahoe Blvd'),(16,'Loon Mountain','Lincoln, New Hampshire');
/*!40000 ALTER TABLE `rents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale-items`
--

DROP TABLE IF EXISTS `sale-items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale-items` (
  `SaleItemId` int(10) NOT NULL,
  `Price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`SaleItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale-items`
--

LOCK TABLES `sale-items` WRITE;
/*!40000 ALTER TABLE `sale-items` DISABLE KEYS */;
INSERT INTO `sale-items` VALUES (1108,200.00),(2259,450.00),(2260,176.00),(3394,340.00),(3829,380.00),(4477,750.00),(20345,30.00),(20346,45.00),(20347,55.00),(20348,45.00),(20349,38.99),(20350,15.60);
/*!40000 ALTER TABLE `sale-items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sells`
--

DROP TABLE IF EXISTS `sells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sells` (
  `SaleItemId` int(10) NOT NULL,
  `ResortName` char(100) NOT NULL,
  `Address` char(200) NOT NULL,
  PRIMARY KEY (`SaleItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sells`
--

LOCK TABLES `sells` WRITE;
/*!40000 ALTER TABLE `sells` DISABLE KEYS */;
INSERT INTO `sells` VALUES (1108,'Burke Mountain Ski Area','223 Sherburne Lodge Rd, East Burke, VT 05832'),(2259,'Camelback Mountain','301 Resort Dr, Tannersville, PA 18372'),(2260,'Heavenly Mountain','4080 Lake Tahoe Blvd'),(3394,'Killington Mountain','Killington, VT 05751'),(3829,'Loon Mountain','Lincoln, New Hampshire'),(4477,'Mount Snow','Dover, Vermont'),(20345,'Mount Southington','396 Mt Vernon Rd, Plantsville, CT 06479'),(20346,'Presidential Mountain','1600 Pennsylvania Avenue NW'),(20347,'Stratton Mountain','5 Village Lodge Rd, South Londonderry, VT 05155'),(20348,'Whiteface Lake Placid','2634 Main St. Lake Placid, NY 12946'),(20349,'Heavenly Mountain','4080 Lake Tahoe Blvd');
/*!40000 ALTER TABLE `sells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skier`
--

DROP TABLE IF EXISTS `skier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skier` (
  `SkierName` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  PRIMARY KEY (`SkierName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skier`
--

LOCK TABLES `skier` WRITE;
/*!40000 ALTER TABLE `skier` DISABLE KEYS */;
INSERT INTO `skier` VALUES ('Anne Frank',14),('George W. Bush',69),('Harry Potter',17),('Ivona Kubiak',40),('Kayce Pasley',11),('Mark Twain',74),('Patrick Kubiak',18),('Robby Windham',35),('Ronald Reagan',93),('Stefan Olmedo',78),('Vladimir Putin',63),('Walker Radcliff',56);
/*!40000 ALTER TABLE `skier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skiresort`
--

DROP TABLE IF EXISTS `skiresort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skiresort` (
  `ResortName` char(100) NOT NULL,
  `Address` char(200) NOT NULL,
  PRIMARY KEY (`ResortName`,`Address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skiresort`
--

LOCK TABLES `skiresort` WRITE;
/*!40000 ALTER TABLE `skiresort` DISABLE KEYS */;
INSERT INTO `skiresort` VALUES ('Burke Mountain Ski Area','223 Sherburne Lodge Rd, East Burke, VT 05832'),('Camelback Mountain','301 Resort Dr, Tannersville, PA 18372'),('Heavenly Mountain','4080 Lake Tahoe Blvd'),('Killington Mountain','Killington, VT 05751'),('Loon Mountain','Lincoln, New Hampshire'),('Mount Snow','Dover, Vermont'),('Mount Southington','396 Mt Vernon Rd, Plantsville, CT 06479'),('Presidential Mountain','1600 Pennsylvania Avenue NW'),('Stratton Mountain','5 Village Lodge Rd, South Londonderry, VT 05155'),('Whiteface Lake Placid','2634 Main St. Lake Placid, NY 12946');
/*!40000 ALTER TABLE `skiresort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skis`
--

DROP TABLE IF EXISTS `skis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skis` (
  `SaleItemId` int(10) NOT NULL,
  `Name` char(100) NOT NULL,
  `Height` int(10) NOT NULL,
  PRIMARY KEY (`SaleItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skis`
--

LOCK TABLES `skis` WRITE;
/*!40000 ALTER TABLE `skis` DISABLE KEYS */;
INSERT INTO `skis` VALUES (1108,'Volki Pro',60),(2259,'Rosignol Freeride 7',63),(2260,'Nordica Enforcer',65),(3394,'Blizzard Latigo Skis',55),(3829,'Volki Kink Skis 2016',78),(4477,'Black Dragon Snow Blade',58);
/*!40000 ALTER TABLE `skis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skisat`
--

DROP TABLE IF EXISTS `skisat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skisat` (
  `SkierName` char(20) NOT NULL,
  `ResortName` char(100) NOT NULL,
  `Address` char(200) NOT NULL,
  PRIMARY KEY (`SkierName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skisat`
--

LOCK TABLES `skisat` WRITE;
/*!40000 ALTER TABLE `skisat` DISABLE KEYS */;
INSERT INTO `skisat` VALUES ('Anne Frank','Mount Snow','Dover, Vermont'),('George W. Bush','Stratton Mountain','5 Village Lodge Rd, South Londonderry, VT 05155'),('Harry Potter','Mount Southington','396 Mt Vernon Rd, Plantsville, CT 06479'),('Ivona Kubiak','Burke Mountain Ski Area','223 Sherburne Lodge Rd, East Burke, VT 05832'),('Kayce Pasley','Killington Mountain','Killington, VT 05751'),('Mark Twain','Camelback Mountain','301 Resort Dr, Tannersville, PA 18372'),('Patrick Kubiak','Burke Mountain Ski Area','223 Sherburne Lodge Rd, East Burke, VT 05832'),('Robby Windham','Heavenly Mountain','4080 Lake Tahoe Blvd'),('Ronald Reagan','Whiteface Lake Placid','301 Resort Dr, Tannersville, PA 18372'),('Stefan Olmedo','Loon Mountain','Lincoln, New Hampshire'),('Vladimir Putin','Presidential Mountain','1600 Pennsylvania Avenue NW'),('Walker Radcliff','Camelback Mountain','301 Resort Dr, Tannersville, PA 18372');
/*!40000 ALTER TABLE `skisat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `SaleItemId` int(10) NOT NULL,
  `Time` datetime NOT NULL,
  `ExpirationDate` date NOT NULL,
  PRIMARY KEY (`SaleItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (20345,'2016-04-13 08:00:00','2016-05-15'),(20346,'2016-05-14 07:45:00','2016-05-15'),(20347,'2016-05-11 08:15:00','2016-04-15'),(20348,'2016-04-21 12:10:00','2016-04-22'),(20349,'2016-04-11 10:00:00','2016-04-12'),(20350,'2016-04-15 11:00:00','2016-04-18');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worksfor`
--

DROP TABLE IF EXISTS `worksfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worksfor` (
  `ResortName` char(100) NOT NULL,
  `Address` char(200) NOT NULL,
  `EmployeeID` int(10) NOT NULL,
  `Since` date DEFAULT NULL,
  PRIMARY KEY (`ResortName`,`Address`,`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worksfor`
--

LOCK TABLES `worksfor` WRITE;
/*!40000 ALTER TABLE `worksfor` DISABLE KEYS */;
INSERT INTO `worksfor` VALUES ('Burke Mountain Ski Area','223 Sherburne Lodge Rd, East Burke, VT 05832',2087,'2003-03-25'),('Burke Mountain Ski Area','223 Sherburne Lodge Rd, East Burke, VT 05832',3351,'2012-08-05'),('Camelback Mountain','301 Resort Dr, Tannersville, PA 18372',4467,'2001-08-08'),('Heavenly Mountain','4080 Lake Tahoe Blvd',4118,'2004-05-14'),('Killington Mountain','Killington, VT 05751',5772,'2008-07-28'),('Loon Mountain','Mountain in Lincoln, New Hampshire',2111,'2014-09-01'),('Mount Snow','Dover, Vermont',2744,'1998-11-23'),('Mount Southington','396 Mt Vernon Rd, Plantsville, CT 06479',7043,'1999-04-19'),('Mount Southington','396 Mt Vernon Rd, Plantsville, CT 06479',8351,'2014-05-12'),('Mount Southington','396 Mt Vernon Rd, Plantsville, CT 06479',8891,'2016-01-06'),('Presidential Mountain','1600 Pennsylvania Avenue NW',1991,'2009-01-20'),('Stratton Mountain','5 Village Lodge Rd, South Londonderry, VT 05155',1111,'1995-04-19'),('Whiteface Lake Placid','2634 Main St. Lake Placid, NY 12946',1001,'2015-02-18'),('Whiteface Lake Placid','2634 Main St. Lake Placid, NY 12946',1002,'2007-12-08');
/*!40000 ALTER TABLE `worksfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'skiing'
--

--
-- Dumping routines for database 'skiing'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-16 16:08:23
