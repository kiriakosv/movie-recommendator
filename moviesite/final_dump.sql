-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: main_db
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add question',7,'add_question'),(20,'Can change question',7,'change_question'),(21,'Can delete question',7,'delete_question'),(22,'Can add choice',8,'add_choice'),(23,'Can change choice',8,'change_choice'),(24,'Can delete choice',8,'delete_choice'),(25,'Can add movie',9,'add_movie'),(26,'Can change movie',9,'change_movie'),(27,'Can delete movie',9,'delete_movie'),(28,'Can add comment',10,'add_comment'),(29,'Can change comment',10,'change_comment'),(30,'Can delete comment',10,'delete_comment'),(31,'Can add recommender question',11,'add_recommenderquestion'),(32,'Can change recommender question',11,'change_recommenderquestion'),(33,'Can delete recommender question',11,'delete_recommenderquestion'),(34,'Can add recommender choice',12,'add_recommenderchoice'),(35,'Can change recommender choice',12,'change_recommenderchoice'),(36,'Can delete recommender choice',12,'delete_recommenderchoice');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$15000$Ki3MhibC4Fap$7MeKi+oYcTotFd05h4FStXbAFxvOTDn/WNom4HqqFZ0=','2015-04-09 15:55:10',1,'admin','','','kir.velissariou@gmail.com',1,1,'2015-04-07 15:06:35');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-04-07 15:09:32','1','What\'s up?',1,'',7,1),(2,'2015-04-08 14:24:02','1','What\'s up?',2,'Added choice \"a\". Added choice \"b\". Added choice \"c\".',7,1),(3,'2015-04-08 15:50:24','1','Who is your favourite male actor?',2,'Changed question_text. Changed choice_text and votes for choice \"Harrison Ford\". Changed choice_text and votes for choice \"George Clooney\". Changed choice_text and votes for choice \"Brad Pitt\".',7,1),(4,'2015-04-08 15:52:20','2','Who is your favourite female actor?',1,'',7,1),(5,'2015-04-09 16:02:53','1','Star Wars, 2015',1,'',9,1),(6,'2015-04-09 16:30:34','1','Star Wars, 2015',3,'',9,1),(7,'2015-04-09 16:32:25','2','Lol, 2015',1,'',9,1),(8,'2015-04-09 16:33:18','2','Lol, 2015',3,'',9,1),(9,'2015-04-10 14:33:07','3','Star Wars, 2015',1,'',9,1),(10,'2015-04-11 13:16:38','4','Daredevil, 2015',1,'',9,1),(11,'2015-04-11 13:17:13','5','adsfadsf, 2015',1,'',9,1),(12,'2015-04-11 13:26:53','3','Star Wars, 2015',2,'Changed plot.',9,1),(13,'2015-04-11 14:06:02','5','adsfadsf, 2015',3,'',9,1),(14,'2015-04-11 14:06:15','4','Daredevil, 2015',3,'',9,1),(15,'2015-04-11 14:06:35','3','Star Wars, 2015',3,'',9,1),(16,'2015-04-11 14:08:40','6','dfdf, 2015',1,'',9,1),(17,'2015-04-11 14:24:22','6','dfdf, 2015',3,'',9,1),(18,'2015-04-11 14:33:31','7','fdfd, 2015',1,'',9,1),(19,'2015-04-11 18:44:54','7','fdfd, 2015',2,'Changed plot.',9,1),(20,'2015-04-11 18:55:08','7','fdfd, 2015',2,'Changed plot.',9,1),(21,'2015-04-11 18:57:34','7','fdfd, 2015',2,'Changed plot.',9,1),(22,'2015-04-11 19:10:09','7','fdfd, 2015',2,'Changed image.',9,1),(23,'2015-04-12 09:19:45','7','fdfd, 2015',2,'Changed image.',9,1),(24,'2015-04-12 10:08:01','7','fdfd, 2015',2,'Changed image.',9,1),(25,'2015-04-12 10:17:00','7','fdfd, 2015',2,'Changed image.',9,1),(26,'2015-04-12 10:20:54','7','fdfd, 2015',2,'Changed image.',9,1),(27,'2015-04-12 10:23:09','7','fdfd, 2015',2,'Changed image.',9,1),(28,'2015-04-12 10:27:34','7','fdfd, 2015',2,'Changed image.',9,1),(29,'2015-04-12 10:29:08','7','fdfd, 2015',2,'Changed image.',9,1),(30,'2015-04-12 10:36:00','7','fdfd, 2015',2,'Changed image.',9,1),(31,'2015-04-12 10:38:54','7','fdfd, 2015',2,'Changed image.',9,1),(32,'2015-04-12 10:39:57','7','fdfd, 2015',2,'Changed image.',9,1),(33,'2015-04-12 10:42:56','7','fdfd, 2015',2,'Changed image.',9,1),(34,'2015-04-12 10:43:39','7','fdfd, 2015',2,'Changed image.',9,1),(35,'2015-04-12 11:11:03','7','fdfd, 2015',2,'Changed plot.',9,1),(36,'2015-04-12 11:12:07','7','fdfd, 2015',2,'Changed plot.',9,1),(37,'2015-04-12 11:13:05','7','fdfd, 2015',2,'Changed plot.',9,1),(38,'2015-04-12 11:14:13','7','fdfd, 2015',2,'Changed plot.',9,1),(39,'2015-04-12 13:24:55','7','fdfd, 2015',2,'Changed image.',9,1),(40,'2015-04-12 13:27:13','7','fdfd, 2015',2,'Changed image.',9,1),(41,'2015-04-13 09:23:13','1','Comment object',1,'',10,1),(42,'2015-04-13 10:34:09','1','from: vasdfv, movie: fdfd, 2015',3,'',10,1),(43,'2015-04-13 10:38:58','7','Star Wars: Episode IV - A New Hope , 1977',2,'Changed title, pub_date, duration, director, actors and plot.',9,1),(44,'2015-04-13 10:40:58','7','Star Wars: Episode IV - A New Hope , 1977',2,'Changed plot.',9,1),(45,'2015-04-13 10:42:21','2','from: kir, movie: Star Wars: Episode IV - A New Hope , 1977',1,'',10,1),(46,'2015-04-13 10:42:58','3','from: Johnnie Bee, movie: Star Wars: Episode IV - A New Hope , 1977',1,'',10,1),(47,'2015-04-13 13:05:15','3','Who is the most handsome actor',1,'',7,1),(48,'2015-04-13 13:06:02','8','lkasdjfkladsflkadjflkj, 2015',1,'',9,1),(49,'2015-04-13 13:06:50','4','from: Elenitsa92, movie: Star Wars: Episode IV - A New Hope , 1977',1,'',10,1),(50,'2015-04-14 15:30:08','16','from: eeeee, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(51,'2015-04-14 15:30:09','15','from: f, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(52,'2015-04-14 15:30:09','14','from: d, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(53,'2015-04-14 15:30:09','13','from: , movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(54,'2015-04-14 15:30:09','12','from: , movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(55,'2015-04-14 15:30:09','11','from: , movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(56,'2015-04-14 15:30:09','10','from: hlebouras, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(57,'2015-04-14 15:30:09','9','from: , movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(58,'2015-04-14 15:30:09','8','from: , movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(59,'2015-04-14 15:30:09','7','from: , movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(60,'2015-04-14 15:30:09','6','from: , movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(61,'2015-04-14 15:30:09','5','from: kasdfj, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(62,'2015-04-14 15:30:09','4','from: Elenitsa92, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(63,'2015-04-14 15:30:09','3','from: Johnnie Bee, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(64,'2015-04-14 15:30:09','2','from: kir, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(65,'2015-04-15 14:28:45','7','Star Wars: Episode IV - A New Hope , 1977',2,'Changed plot.',9,1),(66,'2015-04-15 14:29:27','22','from: kir, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(67,'2015-04-15 14:29:27','21','from: f, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(68,'2015-04-15 14:29:27','20','from: gffgfgf, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(69,'2015-04-15 14:29:27','19','from: dkfajak, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(70,'2015-04-15 14:29:27','18','from: ressdfg, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(71,'2015-04-15 14:29:27','17','from: kir, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(72,'2015-04-15 14:29:42','8','lkasdjfkladsflkadjflkj, 2015',3,'',9,1),(73,'2015-04-15 14:29:43','7','Star Wars: Episode IV - A New Hope , 1977',3,'',9,1),(74,'2015-04-15 14:29:59','3','Who is the most handsome actor',3,'',7,1),(75,'2015-04-15 14:29:59','2','Who is your favourite female actor?',3,'',7,1),(76,'2015-04-15 14:29:59','1','Who is your favourite male actor?',3,'',7,1),(77,'2015-04-15 18:20:04','1','What is your age?',1,'',11,1),(78,'2015-04-15 18:22:24','2','Do you like lengthy movies?',1,'',11,1),(79,'2015-04-15 18:37:43','2','Do you like lengthy movies?',3,'',11,1),(80,'2015-04-15 18:37:44','1','What is your age?',3,'',11,1),(81,'2015-04-15 18:43:12','3','What is your age?',1,'',11,1),(82,'2015-04-15 18:44:03','4','Do you like lengthy movies?',1,'',11,1),(83,'2015-04-16 14:03:34','9','ajfsdkljadslfjlkads jf, 2015',1,'',9,1),(84,'2015-04-16 15:35:35','5','Which of the following movies do you like the most?',1,'',11,1),(85,'2015-04-16 15:37:09','5','Which of the following movies do you like the most?',3,'',11,1),(86,'2015-04-16 15:37:09','4','Do you like lengthy movies?',3,'',11,1),(87,'2015-04-16 15:37:09','3','What is your age?',3,'',11,1),(88,'2015-04-16 15:37:43','9','ajfsdkljadslfjlkads jf, 2015',3,'',9,1),(89,'2015-04-16 15:46:03','10','Nightcrawler, 2014',1,'',9,1),(90,'2015-04-17 14:27:24','6','What is your age?',1,'',11,1),(91,'2015-04-17 14:31:07','7','Do you like lengthy movies?',1,'',11,1),(92,'2015-04-17 14:33:32','8','How would you describe the movie Pulp Fiction?',1,'',11,1),(93,'2015-04-17 14:49:03','8','How would you describe the movie Pulp Fiction?',2,'Changed question_name.',11,1),(94,'2015-04-17 14:51:52','4','asdfasdfdsadsaf',1,'',7,1),(95,'2015-04-17 14:55:42','7','Do you like lengthy movies?',2,'Changed question_name.',11,1),(96,'2015-04-17 15:10:26','7','Do you like lengthy movies?',2,'Changed question_name.',11,1),(97,'2015-04-17 15:10:41','6','What is your age?',2,'Changed question_name.',11,1),(98,'2015-04-17 15:31:58','9','How would you describe the movie Star Wars?',1,'',11,1),(99,'2015-04-17 15:41:30','10','How would you describe the movie Avatar?',1,'',11,1),(100,'2015-04-18 14:54:17','10','Nightcrawler, 2014',2,'Changed duration.',9,1),(101,'2015-04-18 15:00:44','11','Are you comfortable with violence?',1,'',11,1),(102,'2015-04-18 15:04:33','10','Nightcrawler, 2014',2,'Changed violence.',9,1),(103,'2015-04-18 15:23:07','10','Nightcrawler, 2014',2,'Changed violence.',9,1),(104,'2015-04-18 15:26:05','10','Nightcrawler, 2014',2,'Changed duration.',9,1),(105,'2015-04-19 08:45:33','12','Are you comfortable with killings?',1,'',11,1),(106,'2015-04-19 08:54:22','10','Nightcrawler, 2014',2,'Changed killing.',9,1),(107,'2015-04-19 09:04:26','10','Nightcrawler, 2014',2,'Changed violence.',9,1),(108,'2015-04-19 09:06:54','10','Nightcrawler, 2014',2,'No fields changed.',9,1),(109,'2015-04-19 09:07:47','10','Nightcrawler, 2014',2,'Changed violence.',9,1),(110,'2015-04-19 09:08:28','10','Nightcrawler, 2014',2,'Changed violence and killing.',9,1),(111,'2015-04-19 09:21:04','8','How would you describe the movie Pulp Fiction?',2,'Changed question_name.',11,1),(112,'2015-04-19 09:33:50','13','How would you describe the movie Silence of the Lambs?',1,'',11,1),(113,'2015-04-19 09:35:34','14','How would you describe the movie Schindler\'s List?',1,'',11,1),(114,'2015-04-19 09:36:55','15','How would you describe the movie This is Spinal Tap??',1,'',11,1),(115,'2015-04-19 09:38:24','16','How would you describe the movie Terminator 2: Judjement day?',1,'',11,1),(116,'2015-04-19 09:40:32','17','How would you describe the movie The Godfather 2?',1,'',11,1),(117,'2015-04-19 09:42:10','18','How would you describe the movie Psycho?',1,'',11,1),(118,'2015-04-19 09:45:27','19','How would you describe the movie Raging Bull?',1,'',11,1),(119,'2015-04-19 09:47:45','20','How would you describe the movie Monty Python and the Holy Grail?',1,'',11,1),(120,'2015-04-19 09:48:37','21','How would you describe the movie Aliens?',1,'',11,1),(121,'2015-04-19 09:49:56','22','How would you describe the movie City of God?',1,'',11,1),(122,'2015-04-19 09:51:01','23','How would you describe the movie Chinatown?',1,'',11,1),(123,'2015-04-19 09:52:04','24','How you would describe the movie Blade Runner?',1,'',11,1),(124,'2015-04-19 09:53:13','25','How would you describe the movie Citizen Kane?',1,'',11,1),(125,'2015-04-19 09:54:07','26','How would you describe the movie Airplanes?',1,'',11,1),(126,'2015-04-19 09:55:14','27','How would you describe the movie Raiders of the Lost Ark?',1,'',11,1),(127,'2015-04-19 10:13:10','28','How would you describe the movie Goodfellas?',1,'',11,1),(128,'2015-04-19 10:19:37','29','How would you describe the movie Notrh by Northwest?',1,'',11,1),(129,'2015-04-19 10:20:37','30','How would you describe the movie The Matrix?',1,'',11,1),(130,'2015-04-19 10:21:43','31','How would you describe the movie The 7 Samurai?',1,'',11,1),(131,'2015-04-19 10:22:44','32','How would you describe the movie Ghostbusters?',1,'',11,1),(132,'2015-04-19 10:23:51','33','How would you describe the movie Die Hard?',1,'',11,1),(133,'2015-04-19 11:35:42','10','Nightcrawler, 2014',2,'Changed image.',9,1),(134,'2015-04-19 11:38:44','10','Nightcrawler, 2014',2,'Changed image.',9,1),(135,'2015-04-19 11:42:55','10','Nightcrawler, 2014',2,'Changed image.',9,1),(136,'2015-04-19 11:43:38','10','Nightcrawler, 2014',3,'',9,1),(137,'2015-04-19 11:46:36','11','Blackhat, 2015',1,'',9,1),(138,'2015-04-19 11:47:50','11','Blackhat, 2015',2,'Changed image.',9,1),(139,'2015-04-19 11:50:21','12','Spectre, 2015',1,'',9,1),(140,'2015-04-19 11:53:47','13','Black November, 2015',1,'',9,1),(141,'2015-04-19 11:56:11','14','The Frontier, 2015',1,'',9,1),(142,'2015-04-19 11:58:26','15','Prophet\'s Prey, 2015',1,'',9,1),(143,'2015-04-19 12:02:10','16','The Man on Carrion Road, 2015',1,'',9,1),(144,'2015-04-19 12:07:11','17','Americons, 2015',1,'',9,1),(145,'2015-04-19 12:14:14','18','Kidnapping Mr. Heineken, 2015',1,'',9,1),(146,'2015-04-19 12:16:16','19','Mr. Holmes, 2015',1,'',9,1),(147,'2015-04-19 12:18:17','20','The Girl Is In Trouble, 2015',1,'',9,1),(148,'2015-04-19 12:21:33','21','Good Kill, 2015',1,'',9,1),(149,'2015-04-19 12:22:34','21','Good Kill, 2015',2,'Changed image.',9,1),(150,'2015-04-19 12:24:31','22','Lost River, 2015',1,'',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'question','polls','question'),(8,'choice','polls','choice'),(9,'movie','movielists','movie'),(10,'comment','movielists','comment'),(11,'recommender question','recommender','recommenderquestion'),(12,'recommender choice','recommender','recommenderchoice');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-04-07 14:46:44'),(2,'auth','0001_initial','2015-04-07 14:46:45'),(3,'admin','0001_initial','2015-04-07 14:46:46'),(4,'sessions','0001_initial','2015-04-07 14:46:46'),(5,'polls','0001_initial','2015-04-07 15:00:02'),(6,'movielists','0001_initial','2015-04-09 15:54:47'),(7,'movielists','0002_auto_20150409_1931','2015-04-09 16:31:23'),(8,'movielists','0003_auto_20150411_1708','2015-04-11 14:08:16'),(9,'movielists','0004_movie_cluster','2015-04-11 14:32:38'),(10,'movielists','0005_auto_20150412_1217','2015-04-12 09:18:15'),(11,'movielists','0006_auto_20150412_1316','2015-04-12 10:16:45'),(12,'movielists','0007_auto_20150412_1319','2015-04-12 10:19:39'),(13,'movielists','0008_auto_20150412_1320','2015-04-12 10:20:43'),(14,'movielists','0009_auto_20150412_1322','2015-04-12 10:22:59'),(15,'movielists','0010_auto_20150412_1327','2015-04-12 10:27:22'),(16,'movielists','0011_auto_20150412_1328','2015-04-12 10:28:58'),(17,'movielists','0012_auto_20150412_1330','2015-04-12 10:30:38'),(18,'movielists','0013_auto_20150412_1335','2015-04-12 10:35:50'),(19,'movielists','0014_auto_20150412_1337','2015-04-12 10:37:12'),(20,'movielists','0015_auto_20150412_1337','2015-04-12 10:37:58'),(21,'movielists','0016_auto_20150412_1338','2015-04-12 10:38:45'),(22,'movielists','0017_auto_20150412_1342','2015-04-12 10:42:45'),(23,'movielists','0018_comment','2015-04-13 09:16:57'),(24,'movielists','0019_auto_20150413_1221','2015-04-13 09:22:21'),(25,'polls','0002_question_test_field','2015-04-15 13:34:01'),(26,'polls','0003_remove_question_test_field','2015-04-15 13:34:16'),(27,'recommender','0001_initial','2015-04-15 13:38:10'),(28,'recommender','0002_auto_20150415_2118','2015-04-15 18:18:21'),(29,'recommender','0003_recommenderquestion_question_name','2015-04-15 18:40:14'),(30,'movielists','0020_auto_20150416_1658','2015-04-16 13:59:07'),(31,'movielists','0021_auto_20150416_1702','2015-04-16 14:02:10'),(32,'recommender','0004_auto_20150416_1713','2015-04-16 14:13:41'),(33,'recommender','0005_recommenderchoice_name','2015-04-16 14:52:43'),(34,'recommender','0006_remove_recommenderchoice_name','2015-04-16 14:54:05');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('j6w42uib9oj1kh5nsnqgx97me0yi5kr8','NTI3OWU0MWNkN2EyNjhiMTBhNGRiOGMxNDYzMDVjYzkzZmUxODc0ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyNTFhYTljODk0NzIzMzc5YjJhMDk5OGM0YzEwNWM3OGFkNzdkMDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-04-21 15:06:56'),('ljp667xy5nxtia0a9veov8w3eqs54q7v','NTI3OWU0MWNkN2EyNjhiMTBhNGRiOGMxNDYzMDVjYzkzZmUxODc0ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyNTFhYTljODk0NzIzMzc5YjJhMDk5OGM0YzEwNWM3OGFkNzdkMDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-04-23 15:55:10');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movielists_comment`
--

DROP TABLE IF EXISTS `movielists_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movielists_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` longtext,
  `comment_pub_date` datetime NOT NULL,
  `movie_id` int(11) NOT NULL,
  `person` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `movielists_comment_d1b173c8` (`movie_id`),
  CONSTRAINT `movielists_comment_movie_id_1e9604c4_fk_movielists_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movielists_movie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movielists_comment`
--

LOCK TABLES `movielists_comment` WRITE;
/*!40000 ALTER TABLE `movielists_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `movielists_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movielists_movie`
--

DROP TABLE IF EXISTS `movielists_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movielists_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(2) NOT NULL,
  `title` varchar(50) NOT NULL,
  `pub_date` datetime NOT NULL,
  `duration` int(11),
  `director` varchar(50) NOT NULL,
  `actors` longtext NOT NULL,
  `plot` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `killing` varchar(1) NOT NULL,
  `violence` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movielists_movie`
--

LOCK TABLES `movielists_movie` WRITE;
/*!40000 ALTER TABLE `movielists_movie` DISABLE KEYS */;
INSERT INTO `movielists_movie` VALUES (11,'CR','Blackhat','2015-01-16 12:45:29',106,'Michael Mann','Chris Hemsworth, Viola Davis, Wei Tang, William Mapother, John Ortiz','A furloughed convict joins forces with American and Chinese partners to track down a high-level, international cybercrime network. ','./FIKragIDCIFuOM_3_d.jpg','N','Y'),(12,'CR','Spectre','2015-11-06 12:48:52',92,'Sam Mendes','Dave Bautista, Christoph Waltz, Daniel Craig, Ralph Fiennes, Monica Bellucci','A cryptic message from Bond’s past sends him on a trail to uncover a sinister organisation. While M battles political forces to keep the secret service alive, Bond peels back the layers of deceit to reveal the terrible truth behind SPECTRE. ','./FI5nheMDp7wE88_5_d.jpg','Y','Y'),(13,'CR','Black November','2015-01-09 12:52:23',108,'Jeta Amata','Ibrahim Aba-Gana, Razaaq Adoti, Akon, Tina Redmond, Fred Amata','A volatile, oil-rich Nigerian community wages war against their corrupt government and a multi-national oil corporation to protect their land from being destroyed by excessive drilling and spills. To seek justice, a rebel organization kidnaps an American oil executive and demands that his corporation end the destruction and pollution. Inspired by true events, Black November is the gripping story of how a community rises up and takes drastic measures to make sure their voices are heard. ','./FIvcyQh9s7x3yw_1_d.jpg','N','Y'),(14,'CR','The Frontier','2015-04-19 11:54:48',88,'Oren Shai','Jocelin Donahue, Kelly Lynch, Jim Beaver, Izabella Miko, Jamie Harris','A desperate young woman, on the run from the law, takes a job at a remote desert motel. She quickly discovers the motel\'s patrons are rendezvousing after a large robbery. With nothing to lose, and all to gain, she hatches a plan to steal their loot. ','./FIwmD4cWZmfTAw_7_d.jpg','N','Y'),(15,'CR','Prophet\'s Prey','2015-04-19 11:57:23',90,'Amy Berg','Sam Brower, Nick Cave, Andrew Chatwin, Lori Chatwin, Ross Whatwin','When Warren Jeffs rose to Prophet of the Fundamentalist Church of Latter Day Saints, he took control of a religion with a history of polygamous and underage marriage. In a short time, Warren managed to expand these practices and the power of his position in unprecedented ways. He bridged the gap between sister wives and ecclesiastically rape, befuddling the moral compass of his entire congregation. The film examines Warren Jeffs\' life and shows how he became a worshipped and adored Prophet. Warren has a devout following numbering in the tens of thousands - many of whom would give their life at any moment with just one word from the Prophet. Despite a trail of abuse and ruined lives, Warren has maintained his grip on power. ','./FI3OM42kkTuQ69_1_d.jpg','N','N'),(16,'CR','The Man on Carrion Road','2015-04-19 12:01:10',125,'Gonzalo Lopez-Gallego','Patrick Wilson, Ian McShane, John Leguizamo, Lynn Collins, James Belushi','The Man on Carrion Road is the visceral story of a botched Mexican cartel deal in the back roads of a border town. The town’s new sheriff (played by Patrick Wilson) must team up with the retired lawman (Played by Ian McShane) he replaced to investigate the source of the deal in order to stop a mysterious cartel butcher and his systematic brutalization of the town’s residents. A gritty and modern thriller, The Man on Carrion Road collides head on with the pathos and hard realities that inhabit life along the border; it’s a story that explores the ambitions, difficulties, and consequences that turn men into monsters and monsters into reality. ','','Y','Y'),(17,'CR','Americons','2015-01-23 13:06:05',85,'Theo Avgerinos','Beau Martin Williams, Matt Funke, MIchael Masini, Trai Byers, Sam McMurray','Tells the story of a broken down collegiate football star who gets a shot at real-estate stardom during the eleventh hour of LA\'s nihilistic sub-prime mortgage boom. ','./FIgsnrwSF0kajj_1_d.jpg','N','N'),(18,'CR','Kidnapping Mr. Heineken','2015-03-06 13:12:57',95,'Daniel Alfredson','Sam Worthington, Anthony Hopkins, Jim Sturgess, Ryan Kwanten, Rob Fuller',' In 1983, a group of childhood friends pulled off the crime of the century: kidnapping one of the richest men in the world, the heir of the Heineken beer empire (Anthony Hopkins). The shocking capture--by gunpoint in broad daylight on the streets of Amsterdam--resulted in the largest ransom ever paid for a kidnapped individual. It was truly the perfect crime…until they got away with it. Based on a true story, Kidnapping Mr. Heineken also stars Anthony Hopkins, Sam Worthington, Jim Sturgess and Ryan Kwanten. ','./FIqiuEG4xi8Btu_1_d.jpg','N','N'),(19,'CR','Mr. Holmes','2015-04-19 12:15:18',103,'Bill Condon','Ian McKellen, Milo Parker, Laura Linney, Hatie Morahan, Patrick Kennedy',' A new twist on the world’s most famous detective. 1947, an aging Sherlock Holmes returns from a journey to Japan, where, in search of a rare plant with powerful restorative qualities, he has witnessed the devastation of nuclear warfare. Now, in his remote seaside farmhouse, Holmes faces the end of his days tending to his bees, with only the company of his housekeeper and her young son, Roger. Grappling with the diminishing powers of his mind, Holmes comes to rely upon the boy as he revisits the circumstances of the unsolved case that forced him into retirement, and searches for answers to the mysteries of life and love – before it\'s too late. ','./FIdk2reya8zzfl_16_d.jpg','Y','N'),(20,'CR','The Girl Is In Trouble','2015-04-03 12:17:12',90,'Julius Onah','Columbus Short, Wilmer Valderrama, Alicja Bachieda, Jesse Spencer, Miriam Colon','A failed Lower East Side DJ struggling to keep his life together becomes entangled in a murder mystery involving a desperate woman, a missing drug dealer, and the scion of a powerful investment firm. ','./FIy2e8FazaKCBA_1_d.jpg','N','Y'),(21,'TH','Good Kill','2015-05-15 12:20:40',104,'Andrew Niccol','Ethan Hawke, January Jones, Zoe Kravitz, Jake Abel, Bruce Greenwood','The film tells the story of a Las Vegas fighter-pilot turned drone-pilot (Ethan Hawke), who fights the Taliban via remote control for half of his day, then goes home to his wife (January Jones) and kids in the suburbs for the other half. But the pilot is starting to question the mission. Is he creating more terrorists than he’s killing? Is he fighting a war without end? One soldier’s tale with epic implications.\r\n\r\nGood Kill is a visually stunning exploration of how a man’s psychological, emotional and moral boundaries are challenged by the realities of 21st century warfare. The film initiates an important dialogue about the current techniques used in modern war, and in the same vein as The Hurt Locker and Full Metal Jacket, illustrates how war is constantly being redefined according to the technologies and methods in play. ','./FIAz5FhzmzRqDJ_4_d.jpg','Y','Y'),(22,'TH','Lost River','2015-04-10 12:23:25',95,'Ryan Gosling','Christina Hendricks, Saoirse Ronan, Eva Mendes, Matt Smith, Ian De Caestecker','Lost River is a dark fairy tale about love, family and the fight for survival in the face of danger. In the virtually abandoned city of Lost River, Billy (Christina Hendricks), a single mother of two, is led into a macabre underworld in her quest to save her childhood home and hold her family together. Her teenage son Bones (Iain De Casestecker) discovers a mystery about the origins of Lost River that triggers his curiosity and sets into motion an unexpected journey that will test his limits and the limits of those he loves.','./FI1p9Nn6SdEF45_8_d.jpg','Y','Y');
/*!40000 ALTER TABLE `movielists_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_choice`
--

DROP TABLE IF EXISTS `polls_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_7aa0f6ee` (`question_id`),
  CONSTRAINT `polls_choice_question_id_40fbbd72_fk_polls_question_id` FOREIGN KEY (`question_id`) REFERENCES `polls_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_choice`
--

LOCK TABLES `polls_choice` WRITE;
/*!40000 ALTER TABLE `polls_choice` DISABLE KEYS */;
INSERT INTO `polls_choice` VALUES (10,'dsafads',0,4),(11,'dsafadsf',0,4),(12,'adsfadsf',0,4);
/*!40000 ALTER TABLE `polls_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_question`
--

DROP TABLE IF EXISTS `polls_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(200) NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_question`
--

LOCK TABLES `polls_question` WRITE;
/*!40000 ALTER TABLE `polls_question` DISABLE KEYS */;
INSERT INTO `polls_question` VALUES (4,'asdfasdfdsadsaf','2015-04-17 14:51:48');
/*!40000 ALTER TABLE `polls_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommender_recommenderchoice`
--

DROP TABLE IF EXISTS `recommender_recommenderchoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommender_recommenderchoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) NOT NULL,
  `value` varchar(3) DEFAULT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recommender_recommenderchoice_7aa0f6ee` (`question_id`),
  CONSTRAINT `recom_question_id_1011ea23_fk_recommender_recommenderquestion_id` FOREIGN KEY (`question_id`) REFERENCES `recommender_recommenderquestion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommender_recommenderchoice`
--

LOCK TABLES `recommender_recommenderchoice` WRITE;
/*!40000 ALTER TABLE `recommender_recommenderchoice` DISABLE KEYS */;
INSERT INTO `recommender_recommenderchoice` VALUES (17,'5 - 14','VY',6),(18,'15 - 18','Y',6),(19,'18+','A',6),(20,'Yes','Y',7),(21,'No','N',7),(22,'I haven\'t seen it','0',8),(23,'Great','3',8),(24,'Very Good','2',8),(25,'Average','1',8),(26,'Not Good','-1',8),(27,'I haven\'t seen it','0',9),(28,'Great','3',9),(29,'Very Good','2',9),(30,'Average','1',9),(31,'Not Good','-1',9),(32,'I haven\'t seen it','0',10),(33,'Great','3',10),(34,'Very Good','2',10),(35,'Average','1',10),(36,'Not Good','-1',10),(37,'Yes','Y',11),(38,'No','N',11),(39,'Yes','Y',12),(40,'No','N',12),(41,'I haven\'t seen it','0',13),(42,'Great','3',13),(43,'Very Good','2',13),(44,'Average','1',13),(45,'Not Good','-1',13),(46,'I haven\'t seen it','0',14),(47,'Great','3',14),(48,'Very Good','2',14),(49,'Average','1',14),(50,'Not Good','-1',14),(51,'I haven\'t seen it','0',15),(52,'Great','3',15),(53,'Very Good','2',15),(54,'Average','1',15),(55,'Not Good','-1',15),(56,'I haven\'t seen it','0',16),(57,'Great','3',16),(58,'Very Good','2',16),(59,'Average','1',16),(60,'Not Good','-1',16),(61,'I haven\'t seen it','0',17),(62,'Great','3',17),(63,'Very Good','2',17),(64,'Average','1',17),(65,'Not Good','-1',17),(66,'I haven\'t seen it','0',18),(67,'Great','3',18),(68,'Very Good','2',18),(69,'Average','1',18),(70,'Not Good','-1',18),(71,'I haven\'t seen it','0',19),(72,'Great','3',19),(73,'Very Good','2',19),(74,'Average','1',19),(75,'Not Good','-1',19),(76,'I haven\'t seen it','0',20),(77,'Great','3',20),(78,'Very Good','2',20),(79,'Average','1',20),(80,'Not Good','-1',20),(81,'I haven\'t seen it','0',21),(82,'Great','3',21),(83,'Very Good','2',21),(84,'Average','1',21),(85,'Not Good','-1',21),(86,'I haven\'t seen it','0',22),(87,'Great','3',22),(88,'Very Good','2',22),(89,'Average','1',22),(90,'Not Good','-1',22),(91,'I haven\'t seen it','0',23),(92,'Great','3',23),(93,'Very Good','2',23),(94,'Average','1',23),(95,'Not Good','-1',23),(96,'I haven\'t seen it','0',24),(97,'Great','3',24),(98,'Very Good','2',24),(99,'Average','1',24),(100,'Not Good','-1',24),(101,'I haven\'t seen it','0',25),(102,'Great','3',25),(103,'Very Good','2',25),(104,'Average','1',25),(105,'Not Good','-1',25),(106,'I haven\'t seen it','0',26),(107,'Great','3',26),(108,'Very Good','2',26),(109,'Average','1',26),(110,'Not Good','-1',26),(111,'I haven\'t seen it','0',27),(112,'Great','3',27),(113,'Very Good','2',27),(114,'Average','1',27),(115,'Not Good','-1',27),(116,'I haven\'t seen it','0',28),(117,'Great','3',28),(118,'Very Good','2',28),(119,'Average','1',28),(120,'Not Good','-1',28),(121,'I haven\'t seen it','0',29),(122,'Great','3',29),(123,'Very Good','2',29),(124,'Average','1',29),(125,'Not Good','-1',29),(126,'I haven\'t seen it','0',30),(127,'Great','3',30),(128,'Very Good','2',30),(129,'Average','1',30),(130,'Not Good','-1',30),(131,'I haven\'t seen it','0',31),(132,'Great','3',31),(133,'Very Good','2',31),(134,'Average','1',31),(135,'Not Good','-1',31),(136,'I haven\'t seen it','0',32),(137,'Great','3',32),(138,'Very Good','2',32),(139,'Average','1',32),(140,'Not Good','-1',32),(141,'I haven\'t seen it','0',33),(142,'Great','3',33),(143,'Very Good','2',33),(144,'Average','1',33),(145,'Not Good','-1',33);
/*!40000 ALTER TABLE `recommender_recommenderchoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommender_recommenderquestion`
--

DROP TABLE IF EXISTS `recommender_recommenderquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommender_recommenderquestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(200) NOT NULL,
  `question_name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommender_recommenderquestion`
--

LOCK TABLES `recommender_recommenderquestion` WRITE;
/*!40000 ALTER TABLE `recommender_recommenderquestion` DISABLE KEYS */;
INSERT INTO `recommender_recommenderquestion` VALUES (6,'What is your age?','AG1'),(7,'Do you like lengthy movies?','LE1'),(8,'How would you describe the movie Pulp Fiction?','CR1'),(9,'How would you describe the movie Star Wars?','SF1'),(10,'How would you describe the movie Avatar?','SF2'),(11,'Are you comfortable with violence?','VI1'),(12,'Are you comfortable with killings?','KI1'),(13,'How would you describe the movie Silence of the Lambs?','TH1'),(14,'How would you describe the movie Schindler\'s List?','DR1'),(15,'How would you describe the movie This is Spinal Tap??','CM1'),(16,'How would you describe the movie Terminator 2: Judjement day?','AD1'),(17,'How would you describe the movie The Godfather 2?','CR2'),(18,'How would you describe the movie Psycho?','TH2'),(19,'How would you describe the movie Raging Bull?','DR2'),(20,'How would you describe the movie Monty Python and the Holy Grail?','CM2'),(21,'How would you describe the movie Aliens?','AD2'),(22,'How would you describe the movie City of God?','CR3'),(23,'How would you describe the movie Chinatown?','TH3'),(24,'How you would describe the movie Blade Runner?','SF3'),(25,'How would you describe the movie Citizen Kane?','DR3'),(26,'How would you describe the movie Airplanes?','CM3'),(27,'How would you describe the movie Raiders of the Lost Ark?','AD3'),(28,'How would you describe the movie Goodfellas?','CR4'),(29,'How would you describe the movie Notrh by Northwest?','TH4'),(30,'How would you describe the movie The Matrix?','SF4'),(31,'How would you describe the movie The 7 Samurai?','DR4'),(32,'How would you describe the movie Ghostbusters?','CM4'),(33,'How would you describe the movie Die Hard?','AD4');
/*!40000 ALTER TABLE `recommender_recommenderquestion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-19 15:28:29
