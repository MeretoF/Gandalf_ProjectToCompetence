-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `competence`
--

DROP TABLE IF EXISTS `competence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competence` (
  `idCompetence` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `done` tinyint DEFAULT '0',
  PRIMARY KEY (`idCompetence`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competence`
--

LOCK TABLES `competence` WRITE;
/*!40000 ALTER TABLE `competence` DISABLE KEYS */;
INSERT INTO `competence` (`idCompetence`, `name`, `done`) VALUES (1,'0.1.B01 - Address a clear and organized speech',0),(2,'0.2.B01 - Sum up information from an oral presentation',0),(3,'0.3.B01 - Support a talk with relevant slides',0),(4,'0.3.B02 - Make a professional public presentation',0),(5,'0.3.B03 - Make a professional presentation inside your company',0),(6,'0.3.B04 - Document produced work',0),(7,'0.3.B05 - Write a concise document',0),(8,'0.3.B06 - Adapt communication scheme to an objective',0),(9,'0.3.B07 - Define procedures',0),(10,'0.4.B01 - Understand given instructions',0),(11,'0.4.B02 - Work out meaning from written documents',0),(12,'0.5.B01 - Answer questions',0),(13,'0.5.B02 - Argue one\'s opinion',0),(14,'0.5.B03 - Get an interview with the user',0),(15,'1.1.B01 - Locate logs',0),(16,'1.1.B02 - Find non trivial technical points',0),(17,'1.1.B03 - Implement a technology watch',0),(18,'1.1.B04 - Comply with existing procedures',0),(19,'1.1.B05 - Get data from an external device',0),(20,'1.1.B06 - Get relevant 3D-models',0),(21,'1.1.B07 - Investigate relevant obstacles preventing a solution',0),(22,'1.2.B01 - Discriminate relevant information',0),(23,'1.2.B02 - Evaluate the feasability of a solution',0),(24,'1.2.B03 - Evaluate a video',0),(25,'1.2.B04 - Estimate an amount of work',0),(26,'1.2.B05 - Evaluate the quality of digital content',0),(27,'1.2.B06 - Assess produced work',0),(28,'1.2.B07 - Evaluate artefacts security using public vulnerabilities databases',0),(29,'1.2.B08 - Identify relevant criteria of analysis',0),(30,'1.3.B01 - Keep data persistent',0),(31,'1.3.B02 - Create session tokens',0),(32,'1.3.B03 - Make complex data visually understandable',0),(33,'1.3.B04 - Consume structured data from an external source',0),(34,'1.3.B05 - Balance size against quality',0),(35,'1.3.B06 - Log data in a file',0),(36,'1.3.B07 - Enhance expressiveness of the simulation',0),(37,'1.3.B08 - Centralize tasks',0),(38,'1.3.B09 - Reformat data',0),(39,'1.3.B10 - Make data easily available',0),(40,'2.1.B01 - Share info on Moodle forums',0),(41,'2.1.B02 - Adapt vectors of communication',0),(42,'2.1.B03 - Share work to be reviewed',0),(43,'2.1.B04 - Design a user interface',0),(44,'2.1.B05 - Connect two distant machines',0),(45,'2.1.B06 - Connect two containers',0),(46,'2.1.B07 - Give feedback',0),(47,'2.4.B01 - Use specific tools to collaborate as a team',0),(48,'2.4.B02 - Use project management tools',0),(49,'2.4.B03 - Comply with corporate guidelines',0),(50,'2.4.B04 - Participate in a code review',0),(51,'2.4.B05 - Define communication requirements',0),(52,'2.4.B06 - Set up beta tests',0),(53,'2.5.B01 - Behave decently on forums',0),(54,'2.5.B02 - Behave decently on professional forums',0),(55,'2.5.B03 - Adapt communication to the specific audience',0),(56,'2.5.B04 - Behave constructively on forums',0),(57,'2.5.B05 - Consider morality and ethics when proposing a solution',0),(58,'2.6.B01 - Promote a project or oneself',0),(59,'2.6.B02 - Publish on a public platform',0),(60,'3.0.B01 - Deliver in time',0),(61,'3.0.B02 - Use a versioning tool',0),(62,'3.0.B03 - Submit a clean and well organised delivery',0),(63,'3.0.B04 - Produce a clean code',0),(64,'3.0.B05 - Deliver a robust solution',0),(65,'3.1.B01 - Draw a use-case diagram',0),(66,'3.1.B02 - Draw a class diagram',0),(67,'3.1.B03 - Draw an activity diagram',0),(68,'3.1.B04 - Provide a final quality assessment process',0),(69,'3.1.B05 - Write code documentation',0),(70,'3.1.B06 - Produce a video',0),(71,'3.1.B07 - Create a synthesis of documents',0),(72,'3.1.B08 - Create a large set of files',0),(73,'3.1.B09 - Write formative documents',0),(74,'3.2.B01 - Automate deployment',0),(75,'3.2.B02 - Take ownership of legacy work',0),(76,'3.2.B03 - Overlay data',0),(77,'3.2.B04 - Automate generation of documentation',0),(78,'3.2.B05 - Automate tests launching',0),(79,'3.2.B06 - Automate patching',0),(80,'3.2.B07 - Use libraries',0),(81,'3.2.B08 - Optimize an algorithm tuning',0),(82,'3.2.B09 - Homogenize the components',0),(83,'3.2.B10 - Use SDK',0),(84,'3.4.B01 - Refer to a design pattern',0),(85,'3.4.B02 - Handle events in a HMI',0),(86,'3.4.B03 - Organize a code in logical entities',0),(87,'3.4.B04 - Distribute the work along appropriate classes and avoiding extra static methods',0),(88,'3.4.B05 - Craft a transmission protocol between two devices',0),(89,'3.4.B06 - Transmit information between two entities',0),(90,'3.4.B07 - Build a unit test',0),(91,'3.4.B08 - Build a full unit test coverage',0),(92,'3.4.B09 - Build a functional test sequence',0),(93,'3.4.B10 - Code in a functional paradigm-compliant way',0),(94,'3.4.B11 - Develop an authentication method',0),(95,'3.4.B12 - Develop using a Javascript framework',0),(96,'3.4.B13 - Utilize an application development framework',0),(97,'3.4.B14 - Produce fast code',0),(98,'3.4.B15 - Recognize a pattern in an image',0),(99,'3.4.B16 - Develop a complex algorithm',0),(100,'3.4.B17 - Perform cross-plateform compilation',0),(101,'3.4.B18 - Respect the Open-closed principle (from S.O.L.I.D.)',0),(102,'4.1.B01 - Guarantee uptime',0),(103,'4.1.B02 - Organize and separate deployments',0),(104,'4.1.B03 - Virtually isolate components',0),(105,'4.1.B04 - Ensure code safety',0),(106,'4.1.B05 - Ensure deployment quality',0),(107,'4.1.B06 - Ensure devices safety',0),(108,'4.1.B07 - Improve infrastructure safety',0),(109,'4.1.B08 - Backup a database',0),(110,'4.1.B09 - Regulate data transmission channels',0),(111,'4.2.B01 - Keep environment variables coherent',0),(112,'4.2.B02 - Store safely personal data',0),(113,'4.2.B03 - Strengthen security using a password policy',0),(114,'4.2.B04 - Lock data',0),(115,'4.2.B05 - Manage access',0),(116,'4.2.B06 - Securize communication',0),(117,'4.2.B07 - Suggest solution to avoid possible safety breach in data',0),(118,'4.3.B01 - Take handicaps into consideration when offering a service',0),(119,'4.3.B02 - Use digital technologies to improve well-being',0),(120,'4.3.B03 - Ensure electrical safety',0),(121,'4.4.B01 - Be aware of the environmental impact of digital technologies and their use',0),(122,'4.4.B02 - Use digital technologies to coppe with environmental issues',0),(123,'4.4.B03 - Optimize resources consumption',0),(124,'5.0.B01 - Comply with specifications',0),(125,'5.1.B01 - Guarantee a low MTTR (Mean Time To Recovery)',0),(126,'5.1.B02 - Deploy quickly',0),(127,'5.1.B03 - Automate recovery',0),(128,'5.1.B04 - Orchestrate',0),(129,'5.1.B05 - Define public access',0),(130,'5.1.B06 - Define access',0),(131,'5.1.B07 - Identify an anomaly',0),(132,'5.1.B08 - Make IP automatically available',0),(133,'5.1.B09 - Patch vulnerable artefacts',0),(134,'5.1.B10 - Fit an HMI to required functionalities',0),(135,'5.1.B11 - Define a global strategy',0),(136,'5.2.B01 - Write functional specifications',0),(137,'5.2.B02 - Write technical specifications',0),(138,'5.2.B03 - Write non-functional specifications',0),(139,'5.2.B04 - Fix steps (deliveries and non-regression tests)',0),(140,'5.2.B05 - Organize a project in several independent components',0),(141,'5.2.B06 - Prove flexibility and reactivity to client needs',0),(142,'5.2.B07 - Identify clients needs',0),(143,'5.2.B08 - Take into account budget and financial aspects of a project',0),(144,'5.2.B09 - Select the most suitable algorithm',0),(145,'5.2.B10 - Adapt wireless transmission',0),(146,'5.2.B11 - Discriminate operable data',0),(147,'5.2.B12 - Take into account legal aspects of a project',0),(148,'5.2.B13 - Refer to a standard',0),(149,'5.2.B14 - Draw lessons from experience',0),(150,'5.2.B15 - Identify stakeholders',0),(151,'5.2.B16 - Suggest a business model',0),(152,'5.3.B01 - Take part in HUB activities',0),(153,'5.3.B02 - Break unadapted rules',0),(154,'5.3.B03 - Design a creative solution',0),(155,'5.3.B04 - Craft an object',0),(156,'5.3.B05 - Hack a tool',0),(157,'5.3.B06 - Exploit vertically vulnerable artefacts',0),(158,'5.3.B07 - Exploit lateraly vulnerable artefacts',0),(159,'5.4.B01 - Assist users in using an application',0),(160,'5.4.B02 - Recruit the proper coworkers to fit a team',0),(161,'5.4.B03 - Organize training sessions',0),(162,'5.4.B04 - Facilitate newbies integration',0),(163,'5.4.B05 - Identify required skills',0),(164,'5.4.B06 - Facilitate product acceptance',0),(165,'5.4.B07 - Investigate product acceptance',0),(166,'3.3.B01 - Keep a legal watch',0),(167,'2.2.B01 - Create a tutorial',0),(168,'2.2.B02 - Give a talk in front of students',0),(169,'2.2.B03 - Organize a conference',0),(170,'2.3.B01 - Take part in community projects',0),(171,'2.3.B02 - Engage in extracurricular activities',0),(172,'2.3.B03 - Participate in a social action',0),(173,'2.3.B04 - Facilitate users sharing',0);
/*!40000 ALTER TABLE `competence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `idProject` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `specialty` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProject`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` (`idProject`, `name`, `specialty`) VALUES (1,'T-AIA-901',NULL),(2,'T-AIA-902',NULL),(3,'T-CLO-901',NULL),(4,'T-CLO-902',NULL),(5,'T-DAT-901',NULL),(6,'T-DAT-902',NULL),(7,'T-DEV-700',NULL),(8,'T-DEV-800',NULL),(9,'T-DEV-810',NULL),(10,'T-DEV-811',NULL),(11,'T-DIT-700',NULL),(12,'T-DIT-810',NULL),(13,'T-DIT-901',NULL),(14,'T-DIT-902',NULL),(15,'T-EPI-000',NULL),(16,'T-ESP-700',NULL),(17,'T-ESP-800',NULL),(18,'T-ESP-901',NULL),(19,'T-ESP-902',NULL),(20,'T-IOT-901',NULL),(21,'T-IOT-902',NULL),(22,'T-LAW-900',NULL),(23,'T-MAJ-800',NULL),(24,'T-NSA-700',NULL),(25,'T-NSA-800',NULL),(26,'T-NSA-810',NULL),(27,'T-POO-700',NULL),(28,'T-SEC-901',NULL),(29,'T-SEC-902',NULL),(30,'T-VIR-901',NULL),(31,'T-VIR-902',NULL),(32,'T-WEB-700',NULL),(33,'T-WEB-800',NULL);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectstocompetence`
--

DROP TABLE IF EXISTS `projectstocompetence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projectstocompetence` (
  `idPtoC` bigint NOT NULL AUTO_INCREMENT,
  `idProject` bigint DEFAULT NULL,
  `idCompetence` bigint DEFAULT NULL,
  PRIMARY KEY (`idPtoC`),
  UNIQUE KEY `composite` (`idProject`,`idCompetence`),
  KEY `fk_idProj_idx` (`idProject`),
  KEY `fk_idComp_idx` (`idCompetence`),
  CONSTRAINT `fk_idComp` FOREIGN KEY (`idCompetence`) REFERENCES `competence` (`idCompetence`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idProj` FOREIGN KEY (`idProject`) REFERENCES `project` (`idProject`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectstocompetence`
--

LOCK TABLES `projectstocompetence` WRITE;
/*!40000 ALTER TABLE `projectstocompetence` DISABLE KEYS */;
INSERT INTO `projectstocompetence` (`idPtoC`, `idProject`, `idCompetence`) VALUES (11,1,1),(51,1,3),(646,1,4),(75,1,7),(91,1,12),(110,1,13),(131,1,21),(135,1,22),(146,1,26),(151,1,27),(160,1,29),(178,1,32),(192,1,38),(210,1,43),(245,1,48),(265,1,60),(283,1,61),(299,1,62),(313,1,63),(328,1,64),(349,1,69),(360,1,72),(370,1,75),(386,1,80),(395,1,81),(417,1,86),(460,1,97),(468,1,99),(505,1,124),(531,1,131),(563,1,144),(569,1,146),(1,2,1),(52,2,3),(647,2,4),(76,2,7),(92,2,12),(111,2,13),(132,2,21),(136,2,22),(147,2,26),(152,2,27),(161,2,29),(169,2,30),(179,2,32),(244,2,48),(266,2,60),(284,2,61),(300,2,62),(314,2,63),(329,2,64),(361,2,72),(371,2,75),(387,2,80),(396,2,81),(418,2,86),(461,2,97),(469,2,99),(506,2,124),(532,2,131),(564,2,144),(590,2,159),(15,5,1),(53,5,3),(77,5,7),(93,5,12),(112,5,13),(123,5,16),(153,5,27),(162,5,29),(180,5,32),(193,5,38),(243,5,48),(267,5,60),(285,5,61),(301,5,62),(315,5,63),(330,5,64),(385,5,79),(388,5,80),(397,5,81),(419,5,86),(462,5,97),(470,5,99),(507,5,124),(533,5,131),(565,5,144),(586,5,156),(54,6,3),(78,6,7),(94,6,12),(113,6,13),(124,6,16),(137,6,22),(154,6,27),(163,6,29),(170,6,30),(181,6,32),(242,6,48),(268,6,60),(286,6,61),(302,6,62),(316,6,63),(331,6,64),(350,6,69),(389,6,80),(398,6,81),(420,6,86),(463,6,97),(471,6,99),(508,6,124),(534,6,131),(566,6,144),(587,6,156),(591,6,159),(16,7,1),(55,7,3),(95,7,12),(171,7,30),(197,7,40),(241,7,48),(269,7,60),(287,7,61),(303,7,62),(317,7,63),(332,7,64),(343,7,65),(344,7,66),(345,7,67),(346,7,68),(351,7,69),(414,7,84),(415,7,85),(421,7,86),(423,7,87),(425,7,88),(433,7,89),(435,7,90),(437,7,91),(448,7,92),(478,7,104),(480,7,105),(509,7,124),(539,7,136),(541,7,137),(544,7,139),(546,7,140),(559,7,142),(17,8,1),(56,8,3),(96,8,12),(172,8,30),(188,8,34),(196,8,39),(198,8,40),(240,8,48),(270,8,60),(288,8,61),(304,8,62),(318,8,63),(333,8,64),(352,8,69),(390,8,80),(416,8,85),(424,8,87),(426,8,88),(434,8,89),(436,8,90),(438,8,91),(456,8,94),(464,8,97),(479,8,104),(481,8,105),(493,8,115),(498,8,118),(510,8,124),(536,8,134),(540,8,136),(547,8,140),(18,9,1),(57,9,3),(79,9,7),(97,9,12),(114,9,13),(148,9,26),(155,9,27),(164,9,29),(173,9,30),(182,9,32),(191,9,38),(199,9,40),(239,9,48),(271,9,60),(289,9,61),(305,9,62),(319,9,63),(334,9,64),(353,9,69),(362,9,72),(391,9,80),(399,9,81),(465,9,97),(472,9,99),(512,9,124),(567,9,144),(588,9,156),(592,9,159),(19,10,1),(20,11,1),(67,11,4),(70,11,5),(80,11,7),(90,11,11),(98,11,12),(126,11,17),(127,11,18),(133,11,21),(138,11,22),(142,11,23),(165,11,29),(200,11,40),(207,11,41),(208,11,42),(215,11,47),(238,11,48),(252,11,51),(255,11,54),(272,11,60),(363,11,73),(497,11,118),(499,11,119),(503,11,121),(511,11,124),(537,11,135),(551,11,141),(560,11,142),(548,11,143),(577,11,149),(578,11,150),(579,11,153),(599,11,160),(602,11,161),(608,11,163),(404,11,166),(21,12,1),(22,13,1),(23,14,1),(24,15,1),(28,15,2),(58,15,3),(68,15,4),(71,15,5),(72,15,6),(85,15,8),(88,15,9),(99,15,12),(115,15,13),(246,15,49),(257,15,55),(258,15,58),(264,15,59),(500,15,119),(502,15,120),(576,15,149),(584,15,154),(585,15,155),(589,15,156),(593,15,159),(603,15,161),(604,15,162),(413,15,167),(412,15,168),(411,15,169),(410,15,170),(409,15,171),(408,15,172),(25,16,1),(81,16,7),(86,16,8),(100,16,12),(116,16,13),(143,16,25),(149,16,26),(187,16,34),(253,16,53),(256,16,55),(259,16,58),(273,16,60),(359,16,70),(501,16,119),(504,16,122),(513,16,124),(538,16,136),(543,16,138),(552,16,141),(561,16,142),(580,16,153),(583,16,154),(611,16,163),(26,17,1),(59,17,3),(101,17,12),(139,17,22),(150,17,26),(156,17,27),(201,17,40),(211,17,46),(237,17,48),(247,17,49),(254,17,53),(260,17,58),(274,17,60),(290,17,61),(306,17,62),(320,17,63),(354,17,69),(364,17,74),(374,17,77),(379,17,78),(514,17,124),(553,17,141),(581,17,153),(594,17,159),(600,17,160),(607,17,162),(405,17,166),(27,18,1),(60,18,3),(82,18,7),(102,18,12),(117,18,13),(128,18,18),(144,18,25),(157,18,27),(213,18,47),(248,18,49),(261,18,58),(275,18,60),(291,18,61),(307,18,62),(321,18,63),(347,18,68),(355,18,69),(365,18,74),(375,18,77),(380,18,78),(401,18,82),(439,18,91),(449,18,92),(515,18,124),(554,18,141),(549,18,143),(572,18,147),(574,18,148),(595,18,159),(605,18,162),(609,18,163),(612,18,164),(61,19,3),(83,19,7),(103,19,12),(118,19,13),(129,19,18),(145,19,25),(158,19,27),(214,19,47),(249,19,49),(262,19,58),(276,19,60),(292,19,61),(308,19,62),(322,19,63),(348,19,68),(356,19,69),(366,19,74),(376,19,77),(381,19,78),(402,19,82),(440,19,91),(450,19,92),(516,19,124),(555,19,141),(550,19,143),(570,19,146),(573,19,147),(575,19,148),(596,19,159),(606,19,162),(610,19,163),(613,19,164),(84,22,7),(87,22,8),(130,22,18),(571,22,147),(406,22,166),(69,23,4),(104,23,12),(119,23,13),(159,23,27),(166,23,29),(236,23,48),(250,23,49),(251,23,50),(263,23,58),(277,23,60),(293,23,61),(323,23,63),(335,23,64),(357,23,69),(377,23,77),(382,23,78),(392,23,80),(400,23,81),(403,23,82),(422,23,86),(427,23,88),(441,23,91),(451,23,92),(459,23,95),(466,23,97),(473,23,99),(482,23,105),(517,23,124),(542,23,137),(568,23,144),(597,23,159),(601,23,160),(62,24,3),(73,24,6),(105,24,12),(121,24,15),(125,24,16),(174,24,30),(202,24,40),(235,24,48),(278,24,60),(294,24,61),(309,24,62),(324,24,63),(336,24,64),(367,24,74),(474,24,102),(476,24,103),(483,24,106),(487,24,111),(488,24,112),(490,24,113),(491,24,114),(518,24,124),(523,24,125),(525,24,126),(526,24,127),(562,24,142),(63,25,3),(74,25,6),(89,25,9),(106,25,12),(122,25,15),(134,25,21),(140,25,22),(167,25,29),(183,25,32),(195,25,39),(203,25,40),(234,25,48),(279,25,60),(295,25,61),(337,25,64),(368,25,74),(372,25,75),(384,25,79),(475,25,102),(484,25,107),(485,25,108),(486,25,109),(496,25,117),(519,25,124),(524,25,125),(527,25,127),(535,25,131),(557,25,141),(582,25,153),(64,27,3),(107,27,12),(141,27,22),(204,27,40),(212,27,47),(233,27,48),(280,27,60),(296,27,61),(310,27,62),(325,27,63),(338,27,64),(428,27,88),(453,27,93),(520,27,124),(556,27,141),(641,30,27),(642,31,27),(65,32,3),(108,32,12),(120,32,13),(175,32,30),(177,32,31),(184,32,32),(185,32,33),(189,32,37),(205,32,40),(232,32,48),(281,32,60),(297,32,61),(311,32,62),(326,32,63),(339,32,64),(393,32,80),(429,32,88),(431,32,89),(455,32,94),(458,32,95),(477,32,104),(489,32,112),(492,32,115),(494,32,116),(521,32,124),(528,32,128),(529,32,129),(530,32,130),(545,32,140),(598,32,159),(66,33,3),(109,33,12),(176,33,30),(186,33,33),(190,33,38),(194,33,39),(206,33,40),(209,33,43),(231,33,48),(282,33,60),(298,33,61),(312,33,62),(327,33,63),(340,33,64),(358,33,69),(369,33,74),(373,33,76),(378,33,77),(383,33,78),(394,33,80),(430,33,88),(432,33,89),(442,33,91),(452,33,92),(454,33,94),(457,33,95),(467,33,97),(495,33,116),(522,33,124),(558,33,141),(407,33,173);
/*!40000 ALTER TABLE `projectstocompetence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-09 17:31:20
