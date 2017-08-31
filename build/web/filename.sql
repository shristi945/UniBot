-- MySQL dump 10.13  Distrib 5.5.27, for Win64 (x86)
--
-- Host: localhost    Database: chatterbot
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `admission_ans`
--

DROP TABLE IF EXISTS `admission_ans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admission_ans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `andmission_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission_ans`
--

LOCK TABLES `admission_ans` WRITE;
/*!40000 ALTER TABLE `admission_ans` DISABLE KEYS */;
/*!40000 ALTER TABLE `admission_ans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admission_ques`
--

DROP TABLE IF EXISTS `admission_ques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admission_ques` (
  `admission_id` int(11) NOT NULL AUTO_INCREMENT,
  `admission_ques` varchar(255) NOT NULL,
  PRIMARY KEY (`admission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission_ques`
--

LOCK TABLES `admission_ques` WRITE;
/*!40000 ALTER TABLE `admission_ques` DISABLE KEYS */;
/*!40000 ALTER TABLE `admission_ques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_ans`
--

DROP TABLE IF EXISTS `dept_ans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept_ans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_ans`
--

LOCK TABLES `dept_ans` WRITE;
/*!40000 ALTER TABLE `dept_ans` DISABLE KEYS */;
INSERT INTO `dept_ans` VALUES (1,1,'THERE ARE 24 DEPARTMENTS IN BANASTHALI.'),(2,1,'TWENTY FOUR DEPARTMENTS ARE THERE IN BANASTHALI'),(3,2,'COMPUTER SCIENCE ,ELECTRONICS,MECHATRONICS ARE THE TECHNICAL DEPARTMENTS OF BANASTHALI.'),(4,2,'CS,ELECTRONICS,MECHATRONICS '),(5,3,'Dr. C.K JHA IS THE HOD OF COMPUTER SCIENCE DEPARTMENT.'),(6,3,'Dr. C.K JHA'),(7,4,'Prof. SARLA PAREEK'),(8,4,'Prof.SARLA PAREEK IS THE HOD OF METHAMETICS DEPARTMENT'),(9,5,'Prof.POOJA SHRIVASTAVA  IS THE HOD OF METHAMETICS DEPARTMENT'),(10,5,'Ms.POOJA SHRIVASTAVA'),(11,9,'THERE ARE 60 FACULTIES IN COMPUTER SCIENCE DEPARTMENT.'),(12,9,'60'),(13,10,'COMPUTER SCIENCE DEPARTMENT OFFERS UNDERGRADUATE AND POSTGRADUATE PROGRAMMES IN COMPUTER SCIENCE , COMPUTER APPLICATIONS AND INFORMATION TECHNOLOGY INCLUDING M.Tech.'),(14,11,'B.Tech(IT,CSE), BCA, B.A(COMPUTER APPLICATION) , B.Sc. COMPUTER SCIENCE, PGDCA ,M.Sc.(COMPUTER SCIENCE), M.Tech(IT, CSE,REMOTE SENSING ,Ph.D. ,MCA'),(15,11,'ALL THE  COMPUTER RELATED GRADUATION AND POSTGRADUATION COURSES .'),(16,12,'Highly qualified and extremely helping  faculty members are there in this department.'),(17,12,'highly qualified faculty members.'),(18,13,'The department has  world class state of the art infrastuctures with the large, airy, modern projection and PA system classrooms, '),(19,13,'labs are fully equipped with latest hardwares and large number of updated softwares.'),(20,13,'department library is very rich having hard copy and electronic access to sufficient copies of text and reference books and journals.'),(21,14,'Ph.no. +91-1438-228647/228648 '),(22,15,'FAX no. +91-1438-228649/228365  , Ph.no. +91-1438-228647/228648 '),(23,16,'The department has an objective to achive synergy among the teaching and research in mathematics and statistics. This department is also named as CMS here.'),(24,17,'BA/B.Sc Statistics ,BA/B.Sc Mathematics, BA Applied Statistics, M.Sc,M.Phil ,Ph.D.'),(25,17,'Undergraduate and Postgraduates courses in Mathematics and Statistics.'),(26,18,'26  faculty members are there in this department and they are highly qualified and extremely helping .'),(27,19,'The computing facalities are available in various labs of the department like SUN lab, CISCO lab ,etc. It has very good infrastructure supported by many software like MAT LAB ,MATHEMATICA,STATISTICA, etc.'),(28,19,'Highly riched and computerised library having a collection of 10,000  textbooks on mathematical science along with high tech labs.'),(29,20,'Ph.no. +91-1438-228647/228648 '),(30,21,'FAX no. +91-1438-228649/228365  , Ph.no. +91-1438-228647/228648 '),(31,22,'It is a Postgraduate department with Master\'s degree and Ph.D programmes in frontier fields of electronics.'),(32,23,'B.Tech(EC,EI,EE),  B.Sc. ELECTRONICS, ,M.Sc(ELECTRONICS), M.Tech VLSI Design,Ph.D.'),(33,24,'19  faculty members are there in this department and they are highly qualified and extremely helping .'),(34,25,'There  are hardware and software labs with VSLI design softwares facilitating embedded designing  and virtual instrumentation.'),(35,26,'Ph.no. +91-1438-228647/228648 '),(36,27,'FAX no. +91-1438-228649/228365  , Ph.no. +91-1438-228647/228648 '),(37,28,'It is a Postgraduate department with Master\'s degree and Ph.D programmes in frontier fields of Physics.'),(38,29,'B.Sc.Physics ,M.Sc Physics ,Ph.D'),(39,30,'11  faculty members are there in this department and they are highly qualified and extremely helping .'),(40,31,'Modern equipped labs for UG and PG students like LASER lab, condensed matter physics lab ,etc.'),(41,31,'The department has its own library and labs fulfilling the needs for literature for teaching and research purpose.'),(42,32,'Ph.no. +91-1438-228647/228648 '),(43,33,'FAX no. +91-1438-228649/228365  , Ph.no. +91-1438-228647/228648 '),(44,34,'Its a new department introduced in Banasthali in the year 2017.  '),(45,34,'INFORMATION NOT AVAILABLE.'),(46,35,'INFORMATION NOT AVAILABLE.'),(47,36,'INFORMATION NOT AVAILABLE.'),(48,37,'INFORMATION NOT AVAILABLE.'),(49,38,'INFORMATION NOT AVAILABLE.'),(50,39,'INFORMATION NOT AVAILABLE.'),(51,40,' This department aimed to train the manpower in emerging areasin Life Science ,Biotechnology.'),(52,41,'M.Sc.Bioinformatics, PG Diploma in Bioinformatics'),(53,42,'02  faculty members are there in this department and they are highly qualified and extremely helping .'),(54,43,'The department has suitable infrastructure supported by modern equipments costing over Rs.10 lacs and has Green House and Animal House. '),(55,43,'There are 11,000 text and reference books in biological sciences in the library.'),(56,44,'Ph.no. 01438-228302, 228341');
/*!40000 ALTER TABLE `dept_ans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_ques`
--

DROP TABLE IF EXISTS `dept_ques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept_ques` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_ques`
--

LOCK TABLES `dept_ques` WRITE;
/*!40000 ALTER TABLE `dept_ques` DISABLE KEYS */;
INSERT INTO `dept_ques` VALUES (1,'HOW MANY DEPARTMENTS ARE THERE IN BANASTHALI'),(2,'TELL ME ABOUT THE TECHNICAL DEPARTMENTS OF BANASTHALI'),(3,'WHO IS THE HOD OF COMPUTER SCIENCE DEPARTMENT BANASTHALI'),(4,'WHO IS THE HOD OF MATHEMATICS OR MATHS DEPARTMENT BANASTHALI'),(5,'WHO IS THE HOD OF ELECTRONICS OR ELECTRONIC DEPARTMENT BANASTHALI'),(6,'WHO IS THE HOD OF MUSIC DEPARTMENT BANASTHALI'),(7,'WHO IS THE HOD OF HOME SCIENCE DEPARTMENT BANASTHALI'),(8,'WHO IS THE HOD OF AVIATION DEPARTMENT OF BANASTHALI'),(9,'NUMBER OF FACULTY IN COMPUTER SCIENCE DEPARTMENT OF BANASTHALI'),(10,'TELL ME ABOUT THE COMPUTER SCIENCE DEPARTMENT OF BANASTHALI'),(11,'WHAT ARE THE COURSES AVAILABLE IN COMPUTER SCIENCE DEPARTMENT OF BANASTHALI'),(12,'TELL BE ABOUT THE FACULTY AND STAFF OF COMPUTER SCIENCE DEPARTMENT OF BANASTHALI'),(13,'TELL ME ABOUT THE INFRASTRUCTURE AND RESOURCES OR LIBRARY OR LABS OR LAB OR INTERNET FACILITY OF COMPUTER SCIENCE DEPARTMENT OF BANASTHALI'),(14,'HOW CAN I CONTACT TO THE COMPUTER SCIENCE DEPARTMENT OF BANASTHALI'),(15,'FAX NUMBER OR NO OR DEPARTMENT CONTACT DETAILS OF COMPUTER SCIENCE DEPARTMENT OF BANASTHALI'),(16,'TELL ME ABOUT THE MATHEMATICS AND STATISTICS OR STATS  DEPARTMENT OF BANASTHALI'),(17,'WHAT ARE THE COURSES AVAILABLE IN MATHEMATICS AND STATISTICS OR STATS   DEPARTMENT OF BANASTHALI'),(18,'TELL BE ABOUT THE FACULTY AND STAFF OF MATHEMATICS AND STATISTICS OR STATS   DEPARTMENT  OF BANASTHALI'),(19,'TELL ME ABOUT THE INFRASTRUCTURE AND RESOURCES OR LIBRARY OR LABS OR LAB OR INTERNET FACILITY OF MATHEMATICS AND STATISTICS OR STATS   DEPARTMENT OF BANASTHALI'),(20,'HOW CAN I CONTACT TO THE MATHEMATICS AND STATISTICS OR STATS DEPARTMENT OF BANASTHALI'),(21,'FAX NUMBER OR NO OR DEPARTMENT CONTACT DETAILS OF MATHEMATICS OR MATHS AND STATISTICS OR STATS DEPARTMENT OF BANASTHALI'),(22,'TELL ME ABOUT THE ELECTRONICS  DEPARTMENT OF BANASTHALI'),(23,'WHAT ARE THE COURSES AVAILABLE IN ELECTRONICS   DEPARTMENT OF BANASTHALI'),(24,'TELL BE ABOUT THE FACULTY AND STAFF OF ELECTRONICS DEPARTMENT OF BANASTHALI'),(25,'TELL ME ABOUT THE INFRASTRUCTURE AND RESOURCES OR LIBRARY OR LABS OR LAB OR INTERNET FACILITY OF ELECTRONICS DEPARTMENT BANASTHALI'),(26,'HOW CAN I CONTACT TO THE ELECTRONICS DEPARTMENT  OF BANASTHALI'),(27,'FAX NUMBER OR NO OR DEPARTMENT CONTACT DETAILS OF ELECTRONICS DEPARTMENT OF BANASTHALI'),(28,'TELL ME ABOUT THE PHYSICS  DEPARTMENT OF BANASTHALI'),(29,'WHAT ARE THE COURSES AVAILABLE IN PHYSICS DEPARTMENT OF BANASTHALI'),(30,'TELL BE ABOUT THE FACULTY AND STAFF OF PHYSICS DEPARTMENT OF BANASTHALI'),(31,'TELL ME ABOUT THE INFRASTRUCTURE AND RESOURCES OR LIBRARY OR LABS OR LAB OR INTERNET FACILITY OF PHYSICS DEPARTMENT BANASTHALI'),(32,'HOW CAN I CONTACT TO THE PHYSICS DEPARTMENT  OF BANASTHALI'),(33,'FAX NUMBER OR NO OR DEPARTMENT CONTACT DETAILS OF PHYSICS DEPARTMENT OF BANASTHALI'),(34,'TELL ME ABOUT THE  MECHATRONICS DEPARTMENT OF BANASTHALI'),(35,'WHAT ARE THE COURSES AVAILABLE IN MECHATRONICS DEPARTMENT OF BANASTHALI'),(36,'TELL BE ABOUT THE FACULTY AND STAFF OF MECHATRONICS DEPARTMENT OF BANASTHALI'),(37,'TELL ME ABOUT THE INFRASTRUCTURE AND RESOURCES OR LIBRARY OR LABS OR LAB OR INTERNET FACILITY OF MECHATRONICS DEPARTMENT BANASTHALI'),(38,'HOW CAN I CONTACT TO THE MECHATRONICS DEPARTMENT  OF BANASTHALI'),(39,'FAX NUMBER OR NO OR DEPARTMENT CONTACT DETAILS OF MECHATRONICS DEPARTMENT OF BANASTHALI'),(40,'TELL ME ABOUT THE  BIO-INFORMATICS OR BIOINFORMATICS DEPARTMENT OF BANASTHALI'),(41,'WHAT ARE THE COURSES AVAILABLE IN BIO-INFORMATICS OR BIOINFORMATICS DEPARTMENT OF BANASTHALI'),(42,'TELL BE ABOUT THE FACULTY AND STAFF OF BIO-INFORMATICS OR BIOINFORMATICS  DEPARTMENT OF BANASTHALI'),(43,'TELL ME ABOUT THE INFRASTRUCTURE AND RESOURCES OR LIBRARY OR LABS OR LAB OR INTERNET FACILITY OF BIO-INFORMATICS OR BIOINFORMATICS DEPARTMENT BANASTHALI'),(44,'HOW CAN I CONTACT TO THE  DEPARTMENT  BIO-INFORMATICS OR BIOINFORMATICS  OF BANASTHALI');
/*!40000 ALTER TABLE `dept_ques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `five_fold_ans`
--

DROP TABLE IF EXISTS `five_fold_ans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `five_fold_ans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `five_fold_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `five_fold_ans`
--

LOCK TABLES `five_fold_ans` WRITE;
/*!40000 ALTER TABLE `five_fold_ans` DISABLE KEYS */;
/*!40000 ALTER TABLE `five_fold_ans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `five_fold_question`
--

DROP TABLE IF EXISTS `five_fold_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `five_fold_question` (
  `five_fold_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`five_fold_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `five_fold_question`
--

LOCK TABLES `five_fold_question` WRITE;
/*!40000 ALTER TABLE `five_fold_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `five_fold_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel_ans`
--

DROP TABLE IF EXISTS `hostel_ans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hostel_ans` (
  `ans_id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`ans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel_ans`
--

LOCK TABLES `hostel_ans` WRITE;
/*!40000 ALTER TABLE `hostel_ans` DISABLE KEYS */;
/*!40000 ALTER TABLE `hostel_ans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel_ques`
--

DROP TABLE IF EXISTS `hostel_ques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hostel_ques` (
  `hostel_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`hostel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel_ques`
--

LOCK TABLES `hostel_ques` WRITE;
/*!40000 ALTER TABLE `hostel_ques` DISABLE KEYS */;
INSERT INTO `hostel_ques` VALUES (1,'HOW MANY HOSTELS ARE THERE IN BANASTHALI?'),(2,'WHAT ARE THE HOSTEL FACILITIES OR FACILITY IN BANASTHALI?'),(3,'TELL ME ABOUT THE HOSTEL FACILITIES OR FACILITY OF BANASTHALI'),(4,'TELL ME ABOUT THE MESS FACILITIES OF HOSTELS'),(5,'WHAT KIND OF FOOD IS AVAILBALE IN THE HOSTEL MESS'),(6,'WHETHER THE FOOD AVAILABLE IS VEGETARIAN OR VEG OR NON VEGETARIAN OR NON VEG'),(7,'WHAT ARE THE CLOSING AND OPENING TIME OF THE HOSTEL'),(8,'WHAT IS THE PROCEDURE OF COUNTING OF THE STUDENTS IN THE HOSTEL'),(9,'TELL ME ABOUT THE SECURITY FOR THE STUDENTS IN THE HOSTEL'),(10,'HOW MANY WARDENS ARE ASSIGNED PER OR TO A HOSTEL'),(11,'HOW MANY ROOMS ARE PRESENT IN A HOSTEL'),(12,'WHAT KIND OF ROOMS ARE AVAILABLE IN THE HOSTEL'),(13,'WHEATHER INDIAN TOILETS OR WESTERN TOILETS ARE AVAILABLE IN THE HOSTEL'),(14,'AC OR AIR CONDITIONING IS AVAILABLE OR NOT'),(15,'TELEPHONE OR NEWSPAPER FACILITY IS AVAILABLE OR NOT'),(16,'PERSONAL COMPUTERS OR PCS ARE AVAILABLE IN THE HOSTELS'),(17,'INTERNET CONNECTIVITY OR WIFI CONNECTIVITY IS AVAILBALE OR NOT'),(18,'WHAT ARE THE MESS TIMINGS'),(19,'IS IT COMPULSORY TO JOIN HOSTEL FOR THE STUDENTS'),(20,'MEDICAL FACILITIES AVAILABLE FOR THE STUDENTS'),(21,'WHAT ARE THE BASIC AMENITIES PROVIDED IN HOSTELS OR HOSTELS'),(22,'THINGS OR STUFF REQUIRED BY A STUDENT IN THE HOSTEL'),(23,'WHAT ARE THE RULES AND REGULATIONS OF THE HOSTEL'),(24,'EXTRA  FANS OR COOLERS ARE ALLOWED OR NOT IN THE HOSTEL'),(25,'NUMBER OR NO OF CUPBOARDS AVAILABE IN A ROOM'),(26,'LAPTOPS ARE ALLOWED IN THE HOSTEL OR NOT');
/*!40000 ALTER TABLE `hostel_ques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_ans`
--

DROP TABLE IF EXISTS `location_ans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_ans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_ans`
--

LOCK TABLES `location_ans` WRITE;
/*!40000 ALTER TABLE `location_ans` DISABLE KEYS */;
/*!40000 ALTER TABLE `location_ans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_ques`
--

DROP TABLE IF EXISTS `location_ques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_ques` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_ques`
--

LOCK TABLES `location_ques` WRITE;
/*!40000 ALTER TABLE `location_ques` DISABLE KEYS */;
/*!40000 ALTER TABLE `location_ques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_table`
--

DROP TABLE IF EXISTS `main_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_table`
--

LOCK TABLES `main_table` WRITE;
/*!40000 ALTER TABLE `main_table` DISABLE KEYS */;
INSERT INTO `main_table` VALUES (1,'dept_ques','DEPARTMENT,DEPT,CLASSES,COURSES,STUDENTS,STUDY,FACILITIES,BANASTHALI,COLLEGE,FACULTY,HOD,DEAN,LAB'),(2,'placement_ques','PLACEMENT,PERCENTAGE,PACKAGE,CRITERIA,COMPANIES,COMPANY,REQUIREMENT,YEAR,COURSE,APTITUDE,TEST,EXAM,EXTRA,BANASTHALI,UNIVERSITY'),(3,'campus_life_ques','HOSPITAL,MEDICAL,FACALITIES,BANASTHALI,UNIVERSITY,RADIO,MARKET,CANTEEN,MARKETS,CANTEENS'),(4,'hostel_ques','HOSTEL,BANASTHALI,ROOMS,ROOM,FACILITY,FACILITIES,REQUIREMENTS,REQUIREMENT,FOOD,MEALS,FOODS,MEAL,WARDEN'),(5,'location_ques','RAILWAYS,STATION,RAILWAY,AIRWAYS,AIRWAY,AIR,AIRPORT,JAIPUR,BANASTHALI,UNIVERSITY,NEWAI,TONK,'),(6,'five_fold_ques','PUNCHMUKHI,SIKSHA,SPORTS,EXTRA,CURRICULUM,ACTIVITY,ACTIVITIES,FORMS,YOGA,NSS,PHYSICAL,INTELLECTUAL');
/*!40000 ALTER TABLE `main_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `placement_ans`
--

DROP TABLE IF EXISTS `placement_ans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `placement_ans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `placement_ans`
--

LOCK TABLES `placement_ans` WRITE;
/*!40000 ALTER TABLE `placement_ans` DISABLE KEYS */;
/*!40000 ALTER TABLE `placement_ans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `placement_ques`
--

DROP TABLE IF EXISTS `placement_ques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `placement_ques` (
  `placement_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`placement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `placement_ques`
--

LOCK TABLES `placement_ques` WRITE;
/*!40000 ALTER TABLE `placement_ques` DISABLE KEYS */;
/*!40000 ALTER TABLE `placement_ques` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-21 22:29:01
