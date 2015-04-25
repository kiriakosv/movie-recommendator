-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: main_db
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$15000$Ki3MhibC4Fap$7MeKi+oYcTotFd05h4FStXbAFxvOTDn/WNom4HqqFZ0=','2015-04-22 08:31:48',1,'admin','','','kir.velissariou@gmail.com',1,1,'2015-04-07 15:06:35');
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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-04-07 15:09:32','1','What\'s up?',1,'',7,1),(2,'2015-04-08 14:24:02','1','What\'s up?',2,'Added choice \"a\". Added choice \"b\". Added choice \"c\".',7,1),(3,'2015-04-08 15:50:24','1','Who is your favourite male actor?',2,'Changed question_text. Changed choice_text and votes for choice \"Harrison Ford\". Changed choice_text and votes for choice \"George Clooney\". Changed choice_text and votes for choice \"Brad Pitt\".',7,1),(4,'2015-04-08 15:52:20','2','Who is your favourite female actor?',1,'',7,1),(5,'2015-04-09 16:02:53','1','Star Wars, 2015',1,'',9,1),(6,'2015-04-09 16:30:34','1','Star Wars, 2015',3,'',9,1),(7,'2015-04-09 16:32:25','2','Lol, 2015',1,'',9,1),(8,'2015-04-09 16:33:18','2','Lol, 2015',3,'',9,1),(9,'2015-04-10 14:33:07','3','Star Wars, 2015',1,'',9,1),(10,'2015-04-11 13:16:38','4','Daredevil, 2015',1,'',9,1),(11,'2015-04-11 13:17:13','5','adsfadsf, 2015',1,'',9,1),(12,'2015-04-11 13:26:53','3','Star Wars, 2015',2,'Changed plot.',9,1),(13,'2015-04-11 14:06:02','5','adsfadsf, 2015',3,'',9,1),(14,'2015-04-11 14:06:15','4','Daredevil, 2015',3,'',9,1),(15,'2015-04-11 14:06:35','3','Star Wars, 2015',3,'',9,1),(16,'2015-04-11 14:08:40','6','dfdf, 2015',1,'',9,1),(17,'2015-04-11 14:24:22','6','dfdf, 2015',3,'',9,1),(18,'2015-04-11 14:33:31','7','fdfd, 2015',1,'',9,1),(19,'2015-04-11 18:44:54','7','fdfd, 2015',2,'Changed plot.',9,1),(20,'2015-04-11 18:55:08','7','fdfd, 2015',2,'Changed plot.',9,1),(21,'2015-04-11 18:57:34','7','fdfd, 2015',2,'Changed plot.',9,1),(22,'2015-04-11 19:10:09','7','fdfd, 2015',2,'Changed image.',9,1),(23,'2015-04-12 09:19:45','7','fdfd, 2015',2,'Changed image.',9,1),(24,'2015-04-12 10:08:01','7','fdfd, 2015',2,'Changed image.',9,1),(25,'2015-04-12 10:17:00','7','fdfd, 2015',2,'Changed image.',9,1),(26,'2015-04-12 10:20:54','7','fdfd, 2015',2,'Changed image.',9,1),(27,'2015-04-12 10:23:09','7','fdfd, 2015',2,'Changed image.',9,1),(28,'2015-04-12 10:27:34','7','fdfd, 2015',2,'Changed image.',9,1),(29,'2015-04-12 10:29:08','7','fdfd, 2015',2,'Changed image.',9,1),(30,'2015-04-12 10:36:00','7','fdfd, 2015',2,'Changed image.',9,1),(31,'2015-04-12 10:38:54','7','fdfd, 2015',2,'Changed image.',9,1),(32,'2015-04-12 10:39:57','7','fdfd, 2015',2,'Changed image.',9,1),(33,'2015-04-12 10:42:56','7','fdfd, 2015',2,'Changed image.',9,1),(34,'2015-04-12 10:43:39','7','fdfd, 2015',2,'Changed image.',9,1),(35,'2015-04-12 11:11:03','7','fdfd, 2015',2,'Changed plot.',9,1),(36,'2015-04-12 11:12:07','7','fdfd, 2015',2,'Changed plot.',9,1),(37,'2015-04-12 11:13:05','7','fdfd, 2015',2,'Changed plot.',9,1),(38,'2015-04-12 11:14:13','7','fdfd, 2015',2,'Changed plot.',9,1),(39,'2015-04-12 13:24:55','7','fdfd, 2015',2,'Changed image.',9,1),(40,'2015-04-12 13:27:13','7','fdfd, 2015',2,'Changed image.',9,1),(41,'2015-04-13 09:23:13','1','Comment object',1,'',10,1),(42,'2015-04-13 10:34:09','1','from: vasdfv, movie: fdfd, 2015',3,'',10,1),(43,'2015-04-13 10:38:58','7','Star Wars: Episode IV - A New Hope , 1977',2,'Changed title, pub_date, duration, director, actors and plot.',9,1),(44,'2015-04-13 10:40:58','7','Star Wars: Episode IV - A New Hope , 1977',2,'Changed plot.',9,1),(45,'2015-04-13 10:42:21','2','from: kir, movie: Star Wars: Episode IV - A New Hope , 1977',1,'',10,1),(46,'2015-04-13 10:42:58','3','from: Johnnie Bee, movie: Star Wars: Episode IV - A New Hope , 1977',1,'',10,1),(47,'2015-04-13 13:05:15','3','Who is the most handsome actor',1,'',7,1),(48,'2015-04-13 13:06:02','8','lkasdjfkladsflkadjflkj, 2015',1,'',9,1),(49,'2015-04-13 13:06:50','4','from: Elenitsa92, movie: Star Wars: Episode IV - A New Hope , 1977',1,'',10,1),(50,'2015-04-14 15:30:08','16','from: eeeee, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(51,'2015-04-14 15:30:09','15','from: f, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(52,'2015-04-14 15:30:09','14','from: d, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(53,'2015-04-14 15:30:09','13','from: , movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(54,'2015-04-14 15:30:09','12','from: , movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(55,'2015-04-14 15:30:09','11','from: , movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(56,'2015-04-14 15:30:09','10','from: hlebouras, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(57,'2015-04-14 15:30:09','9','from: , movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(58,'2015-04-14 15:30:09','8','from: , movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(59,'2015-04-14 15:30:09','7','from: , movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(60,'2015-04-14 15:30:09','6','from: , movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(61,'2015-04-14 15:30:09','5','from: kasdfj, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(62,'2015-04-14 15:30:09','4','from: Elenitsa92, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(63,'2015-04-14 15:30:09','3','from: Johnnie Bee, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(64,'2015-04-14 15:30:09','2','from: kir, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(65,'2015-04-15 14:28:45','7','Star Wars: Episode IV - A New Hope , 1977',2,'Changed plot.',9,1),(66,'2015-04-15 14:29:27','22','from: kir, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(67,'2015-04-15 14:29:27','21','from: f, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(68,'2015-04-15 14:29:27','20','from: gffgfgf, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(69,'2015-04-15 14:29:27','19','from: dkfajak, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(70,'2015-04-15 14:29:27','18','from: ressdfg, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(71,'2015-04-15 14:29:27','17','from: kir, movie: Star Wars: Episode IV - A New Hope , 1977',3,'',10,1),(72,'2015-04-15 14:29:42','8','lkasdjfkladsflkadjflkj, 2015',3,'',9,1),(73,'2015-04-15 14:29:43','7','Star Wars: Episode IV - A New Hope , 1977',3,'',9,1),(74,'2015-04-15 14:29:59','3','Who is the most handsome actor',3,'',7,1),(75,'2015-04-15 14:29:59','2','Who is your favourite female actor?',3,'',7,1),(76,'2015-04-15 14:29:59','1','Who is your favourite male actor?',3,'',7,1),(77,'2015-04-15 18:20:04','1','What is your age?',1,'',11,1),(78,'2015-04-15 18:22:24','2','Do you like lengthy movies?',1,'',11,1),(79,'2015-04-15 18:37:43','2','Do you like lengthy movies?',3,'',11,1),(80,'2015-04-15 18:37:44','1','What is your age?',3,'',11,1),(81,'2015-04-15 18:43:12','3','What is your age?',1,'',11,1),(82,'2015-04-15 18:44:03','4','Do you like lengthy movies?',1,'',11,1),(83,'2015-04-16 14:03:34','9','ajfsdkljadslfjlkads jf, 2015',1,'',9,1),(84,'2015-04-16 15:35:35','5','Which of the following movies do you like the most?',1,'',11,1),(85,'2015-04-16 15:37:09','5','Which of the following movies do you like the most?',3,'',11,1),(86,'2015-04-16 15:37:09','4','Do you like lengthy movies?',3,'',11,1),(87,'2015-04-16 15:37:09','3','What is your age?',3,'',11,1),(88,'2015-04-16 15:37:43','9','ajfsdkljadslfjlkads jf, 2015',3,'',9,1),(89,'2015-04-16 15:46:03','10','Nightcrawler, 2014',1,'',9,1),(90,'2015-04-17 14:27:24','6','What is your age?',1,'',11,1),(91,'2015-04-17 14:31:07','7','Do you like lengthy movies?',1,'',11,1),(92,'2015-04-17 14:33:32','8','How would you describe the movie Pulp Fiction?',1,'',11,1),(93,'2015-04-17 14:49:03','8','How would you describe the movie Pulp Fiction?',2,'Changed question_name.',11,1),(94,'2015-04-17 14:51:52','4','asdfasdfdsadsaf',1,'',7,1),(95,'2015-04-17 14:55:42','7','Do you like lengthy movies?',2,'Changed question_name.',11,1),(96,'2015-04-17 15:10:26','7','Do you like lengthy movies?',2,'Changed question_name.',11,1),(97,'2015-04-17 15:10:41','6','What is your age?',2,'Changed question_name.',11,1),(98,'2015-04-17 15:31:58','9','How would you describe the movie Star Wars?',1,'',11,1),(99,'2015-04-17 15:41:30','10','How would you describe the movie Avatar?',1,'',11,1),(100,'2015-04-18 14:54:17','10','Nightcrawler, 2014',2,'Changed duration.',9,1),(101,'2015-04-18 15:00:44','11','Are you comfortable with violence?',1,'',11,1),(102,'2015-04-18 15:04:33','10','Nightcrawler, 2014',2,'Changed violence.',9,1),(103,'2015-04-18 15:23:07','10','Nightcrawler, 2014',2,'Changed violence.',9,1),(104,'2015-04-18 15:26:05','10','Nightcrawler, 2014',2,'Changed duration.',9,1),(105,'2015-04-19 08:45:33','12','Are you comfortable with killings?',1,'',11,1),(106,'2015-04-19 08:54:22','10','Nightcrawler, 2014',2,'Changed killing.',9,1),(107,'2015-04-19 09:04:26','10','Nightcrawler, 2014',2,'Changed violence.',9,1),(108,'2015-04-19 09:06:54','10','Nightcrawler, 2014',2,'No fields changed.',9,1),(109,'2015-04-19 09:07:47','10','Nightcrawler, 2014',2,'Changed violence.',9,1),(110,'2015-04-19 09:08:28','10','Nightcrawler, 2014',2,'Changed violence and killing.',9,1),(111,'2015-04-19 09:21:04','8','How would you describe the movie Pulp Fiction?',2,'Changed question_name.',11,1),(112,'2015-04-19 09:33:50','13','How would you describe the movie Silence of the Lambs?',1,'',11,1),(113,'2015-04-19 09:35:34','14','How would you describe the movie Schindler\'s List?',1,'',11,1),(114,'2015-04-19 09:36:55','15','How would you describe the movie This is Spinal Tap??',1,'',11,1),(115,'2015-04-19 09:38:24','16','How would you describe the movie Terminator 2: Judjement day?',1,'',11,1),(116,'2015-04-19 09:40:32','17','How would you describe the movie The Godfather 2?',1,'',11,1),(117,'2015-04-19 09:42:10','18','How would you describe the movie Psycho?',1,'',11,1),(118,'2015-04-19 09:45:27','19','How would you describe the movie Raging Bull?',1,'',11,1),(119,'2015-04-19 09:47:45','20','How would you describe the movie Monty Python and the Holy Grail?',1,'',11,1),(120,'2015-04-19 09:48:37','21','How would you describe the movie Aliens?',1,'',11,1),(121,'2015-04-19 09:49:56','22','How would you describe the movie City of God?',1,'',11,1),(122,'2015-04-19 09:51:01','23','How would you describe the movie Chinatown?',1,'',11,1),(123,'2015-04-19 09:52:04','24','How you would describe the movie Blade Runner?',1,'',11,1),(124,'2015-04-19 09:53:13','25','How would you describe the movie Citizen Kane?',1,'',11,1),(125,'2015-04-19 09:54:07','26','How would you describe the movie Airplanes?',1,'',11,1),(126,'2015-04-19 09:55:14','27','How would you describe the movie Raiders of the Lost Ark?',1,'',11,1),(127,'2015-04-19 10:13:10','28','How would you describe the movie Goodfellas?',1,'',11,1),(128,'2015-04-19 10:19:37','29','How would you describe the movie Notrh by Northwest?',1,'',11,1),(129,'2015-04-19 10:20:37','30','How would you describe the movie The Matrix?',1,'',11,1),(130,'2015-04-19 10:21:43','31','How would you describe the movie The 7 Samurai?',1,'',11,1),(131,'2015-04-19 10:22:44','32','How would you describe the movie Ghostbusters?',1,'',11,1),(132,'2015-04-19 10:23:51','33','How would you describe the movie Die Hard?',1,'',11,1),(133,'2015-04-19 11:35:42','10','Nightcrawler, 2014',2,'Changed image.',9,1),(134,'2015-04-19 11:38:44','10','Nightcrawler, 2014',2,'Changed image.',9,1),(135,'2015-04-19 11:42:55','10','Nightcrawler, 2014',2,'Changed image.',9,1),(136,'2015-04-19 11:43:38','10','Nightcrawler, 2014',3,'',9,1),(137,'2015-04-19 11:46:36','11','Blackhat, 2015',1,'',9,1),(138,'2015-04-19 11:47:50','11','Blackhat, 2015',2,'Changed image.',9,1),(139,'2015-04-19 11:50:21','12','Spectre, 2015',1,'',9,1),(140,'2015-04-19 11:53:47','13','Black November, 2015',1,'',9,1),(141,'2015-04-19 11:56:11','14','The Frontier, 2015',1,'',9,1),(142,'2015-04-19 11:58:26','15','Prophet\'s Prey, 2015',1,'',9,1),(143,'2015-04-19 12:02:10','16','The Man on Carrion Road, 2015',1,'',9,1),(144,'2015-04-19 12:07:11','17','Americons, 2015',1,'',9,1),(145,'2015-04-19 12:14:14','18','Kidnapping Mr. Heineken, 2015',1,'',9,1),(146,'2015-04-19 12:16:16','19','Mr. Holmes, 2015',1,'',9,1),(147,'2015-04-19 12:18:17','20','The Girl Is In Trouble, 2015',1,'',9,1),(148,'2015-04-19 12:21:33','21','Good Kill, 2015',1,'',9,1),(149,'2015-04-19 12:22:34','21','Good Kill, 2015',2,'Changed image.',9,1),(150,'2015-04-19 12:24:31','22','Lost River, 2015',1,'',9,1),(151,'2015-04-20 09:35:26','23','Kingsman: The Secret Service, 2015',1,'',9,1),(152,'2015-04-20 09:37:35','24','Poltergeist, 2015',1,'',9,1),(153,'2015-04-20 09:39:48','25','Unfiended, 2015',1,'',9,1),(154,'2015-04-20 09:41:22','26','The Gift, 2015',1,'',9,1),(155,'2015-04-20 09:44:10','27','The Loft, 2015',1,'',9,1),(156,'2015-04-20 09:45:58','28','The Boy Next Door, 2015',1,'',9,1),(157,'2015-04-20 09:47:55','29','The Woman in Black 2 Angel of Death, 2015',1,'',9,1),(158,'2015-04-20 09:49:46','30','The Atticus Institute, 2015',1,'',9,1),(159,'2015-04-20 09:55:27','31','Avengers: Age of Ultron, 2015',1,'',9,1),(160,'2015-04-20 09:56:23','31','Avengers: Age of Ultron, 2015',2,'Changed image.',9,1),(161,'2015-04-20 10:03:03','32','Mad Max: Fury Road, 2015',1,'',9,1),(162,'2015-04-20 10:05:10','33','Fantastic Four, 2015',1,'',9,1),(163,'2015-04-20 10:07:16','34','The Maze Runner: The Scorch Trials, 2015',1,'',9,1),(164,'2015-04-20 10:09:17','35','The Hunger Games: Mockingjay Part 2, 2015',1,'',9,1),(165,'2015-04-20 10:11:19','36','Mission: Impossible Rogue Nation, 2015',1,'',9,1),(166,'2015-04-20 10:13:20','37','Pan, 2015',1,'',9,1),(167,'2015-04-20 10:14:01','35','The Hunger Games: Mockingjay Part 2, 2015',2,'Changed genre.',9,1),(168,'2015-04-20 10:14:26','37','Pan, 2015',2,'Changed genre.',9,1),(169,'2015-04-20 10:16:45','38','Black Sea, 2015',1,'',9,1),(170,'2015-04-20 10:18:46','39','Aloha, 2015',1,'',9,1),(171,'2015-04-20 10:20:30','40','Wyrmwood, 2015',1,'',9,1),(172,'2015-04-20 13:59:42','41','Cinderella, 2015',1,'',9,1),(173,'2015-04-20 14:02:20','42','The Longest Ride, 2015',1,'',9,1),(174,'2015-04-20 14:03:56','43','Focus, 2015',1,'',9,1),(175,'2015-04-20 14:05:26','44','Woman In Gold, 2015',1,'',9,1),(176,'2015-04-20 14:07:01','45','Cake, 2015',1,'',9,1),(177,'2015-04-20 14:08:39','46','While We\'re Young, 2015',1,'',9,1),(178,'2015-04-22 08:36:29','47','Wild, 2015',1,'',9,1),(179,'2015-04-22 08:38:17','48','Unbroken, 2015',1,'',9,1),(180,'2015-04-22 08:39:25','49','Gone Girl, 2015',1,'',9,1),(181,'2015-04-22 08:40:48','50','The Imitation Game, 2015',1,'',9,1),(182,'2015-04-22 08:45:27','51','Insurgent (Divergent 2), 2015',1,'',9,1),(183,'2015-04-22 08:47:19','52','Ex Machina, 2015',1,'',9,1),(184,'2015-04-22 08:59:38','53','Chappie, 2015',1,'',9,1),(185,'2015-04-22 09:01:22','54','Guardians of the Galaxy, 2014',1,'',9,1),(186,'2015-04-22 09:02:59','55','Lucy, 2014',1,'',9,1),(187,'2015-04-22 09:04:38','56','Edge of Tomorrow, 2014',1,'',9,1),(188,'2015-04-22 09:06:48','57','Intestellar, 2014',1,'',9,1),(189,'2015-04-22 09:09:16','58','Divergent, 2015',1,'',9,1),(190,'2015-04-22 09:11:06','59','Project Almanac, 2015',1,'',9,1),(191,'2015-04-22 09:12:25','60','Perfect Sensce, 2015',1,'',9,1),(192,'2015-04-25 09:33:50','61','Home, 2015',1,'',9,1),(193,'2015-04-25 09:36:02','62','The Wedding Ringer, 2015',1,'',9,1),(194,'2015-04-25 09:37:46','63','Get Hard, 2015',1,'',9,1),(195,'2015-04-25 09:39:40','64','The DUFF, 2015',1,'',9,1),(196,'2015-04-25 09:41:58','65','Big Hero 6, 2014',1,'',9,1),(197,'2015-04-25 09:43:14','66','Hot Tub Time Machine 2, 2015',1,'',9,1),(198,'2015-04-25 09:44:54','67','Birdman, 2014',1,'',9,1),(199,'2015-04-25 09:48:33','68','Hot Pursuit, 2015',1,'',9,1),(200,'2015-04-25 09:56:11','69','Spy, 2015',1,'',9,1),(201,'2015-04-25 09:57:50','70','Home Sweet Hell, 2015',1,'',9,1),(202,'2015-04-25 10:46:36','21','Good Kill, 2015',2,'Changed rating_count and rating_sum.',9,1),(203,'2015-04-25 10:48:31','21','Good Kill, 2015',2,'Changed rating_sum.',9,1),(204,'2015-04-25 10:49:21','21','Good Kill, 2015',2,'Changed rating_count and rating_sum.',9,1),(205,'2015-04-25 10:52:52','4','Who is your favourite  adventure male actor?',2,'Changed question_text. Changed choice_text for choice \"Jason Statham\". Changed choice_text for choice \"Sylvester Stalone\". Changed choice_text and votes for choice \"Vin Diesel\".',7,1),(206,'2015-04-25 10:55:12','5','Who is your favourite female actor?',1,'',7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-04-07 14:46:44'),(2,'auth','0001_initial','2015-04-07 14:46:45'),(3,'admin','0001_initial','2015-04-07 14:46:46'),(4,'sessions','0001_initial','2015-04-07 14:46:46'),(5,'polls','0001_initial','2015-04-07 15:00:02'),(6,'movielists','0001_initial','2015-04-09 15:54:47'),(7,'movielists','0002_auto_20150409_1931','2015-04-09 16:31:23'),(8,'movielists','0003_auto_20150411_1708','2015-04-11 14:08:16'),(9,'movielists','0004_movie_cluster','2015-04-11 14:32:38'),(10,'movielists','0005_auto_20150412_1217','2015-04-12 09:18:15'),(11,'movielists','0006_auto_20150412_1316','2015-04-12 10:16:45'),(12,'movielists','0007_auto_20150412_1319','2015-04-12 10:19:39'),(13,'movielists','0008_auto_20150412_1320','2015-04-12 10:20:43'),(14,'movielists','0009_auto_20150412_1322','2015-04-12 10:22:59'),(15,'movielists','0010_auto_20150412_1327','2015-04-12 10:27:22'),(16,'movielists','0011_auto_20150412_1328','2015-04-12 10:28:58'),(17,'movielists','0012_auto_20150412_1330','2015-04-12 10:30:38'),(18,'movielists','0013_auto_20150412_1335','2015-04-12 10:35:50'),(19,'movielists','0014_auto_20150412_1337','2015-04-12 10:37:12'),(20,'movielists','0015_auto_20150412_1337','2015-04-12 10:37:58'),(21,'movielists','0016_auto_20150412_1338','2015-04-12 10:38:45'),(22,'movielists','0017_auto_20150412_1342','2015-04-12 10:42:45'),(23,'movielists','0018_comment','2015-04-13 09:16:57'),(24,'movielists','0019_auto_20150413_1221','2015-04-13 09:22:21'),(25,'polls','0002_question_test_field','2015-04-15 13:34:01'),(26,'polls','0003_remove_question_test_field','2015-04-15 13:34:16'),(27,'recommender','0001_initial','2015-04-15 13:38:10'),(28,'recommender','0002_auto_20150415_2118','2015-04-15 18:18:21'),(29,'recommender','0003_recommenderquestion_question_name','2015-04-15 18:40:14'),(30,'movielists','0020_auto_20150416_1658','2015-04-16 13:59:07'),(31,'movielists','0021_auto_20150416_1702','2015-04-16 14:02:10'),(32,'recommender','0004_auto_20150416_1713','2015-04-16 14:13:41'),(33,'recommender','0005_recommenderchoice_name','2015-04-16 14:52:43'),(34,'recommender','0006_remove_recommenderchoice_name','2015-04-16 14:54:05'),(35,'movielists','0022_auto_20150422_1227','2015-04-22 09:27:57');
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
INSERT INTO `django_session` VALUES ('dz84uhbxt1ukru6q5bbgj7tui9hzxkyq','NTI3OWU0MWNkN2EyNjhiMTBhNGRiOGMxNDYzMDVjYzkzZmUxODc0ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyNTFhYTljODk0NzIzMzc5YjJhMDk5OGM0YzEwNWM3OGFkNzdkMDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-05-06 08:31:48'),('j6w42uib9oj1kh5nsnqgx97me0yi5kr8','NTI3OWU0MWNkN2EyNjhiMTBhNGRiOGMxNDYzMDVjYzkzZmUxODc0ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyNTFhYTljODk0NzIzMzc5YjJhMDk5OGM0YzEwNWM3OGFkNzdkMDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-04-21 15:06:56'),('ljp667xy5nxtia0a9veov8w3eqs54q7v','NTI3OWU0MWNkN2EyNjhiMTBhNGRiOGMxNDYzMDVjYzkzZmUxODc0ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyNTFhYTljODk0NzIzMzc5YjJhMDk5OGM0YzEwNWM3OGFkNzdkMDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-04-23 15:55:10');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `rating_count` int(11) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movielists_movie`
--

LOCK TABLES `movielists_movie` WRITE;
/*!40000 ALTER TABLE `movielists_movie` DISABLE KEYS */;
INSERT INTO `movielists_movie` VALUES (11,'CR','Blackhat','2015-01-16 12:45:29',106,'Michael Mann','Chris Hemsworth, Viola Davis, Wei Tang, William Mapother, John Ortiz','A furloughed convict joins forces with American and Chinese partners to track down a high-level, international cybercrime network. ','./FIKragIDCIFuOM_3_d.jpg','N','Y',0,0),(12,'CR','Spectre','2015-11-06 12:48:52',92,'Sam Mendes','Dave Bautista, Christoph Waltz, Daniel Craig, Ralph Fiennes, Monica Bellucci','A cryptic message from Bond’s past sends him on a trail to uncover a sinister organisation. While M battles political forces to keep the secret service alive, Bond peels back the layers of deceit to reveal the terrible truth behind SPECTRE. ','./FI5nheMDp7wE88_5_d.jpg','Y','Y',0,0),(13,'CR','Black November','2015-01-09 12:52:23',108,'Jeta Amata','Ibrahim Aba-Gana, Razaaq Adoti, Akon, Tina Redmond, Fred Amata','A volatile, oil-rich Nigerian community wages war against their corrupt government and a multi-national oil corporation to protect their land from being destroyed by excessive drilling and spills. To seek justice, a rebel organization kidnaps an American oil executive and demands that his corporation end the destruction and pollution. Inspired by true events, Black November is the gripping story of how a community rises up and takes drastic measures to make sure their voices are heard. ','./FIvcyQh9s7x3yw_1_d.jpg','N','Y',0,0),(14,'CR','The Frontier','2015-04-19 11:54:48',88,'Oren Shai','Jocelin Donahue, Kelly Lynch, Jim Beaver, Izabella Miko, Jamie Harris','A desperate young woman, on the run from the law, takes a job at a remote desert motel. She quickly discovers the motel\'s patrons are rendezvousing after a large robbery. With nothing to lose, and all to gain, she hatches a plan to steal their loot. ','./FIwmD4cWZmfTAw_7_d.jpg','N','Y',0,0),(15,'CR','Prophet\'s Prey','2015-04-19 11:57:23',90,'Amy Berg','Sam Brower, Nick Cave, Andrew Chatwin, Lori Chatwin, Ross Whatwin','When Warren Jeffs rose to Prophet of the Fundamentalist Church of Latter Day Saints, he took control of a religion with a history of polygamous and underage marriage. In a short time, Warren managed to expand these practices and the power of his position in unprecedented ways. He bridged the gap between sister wives and ecclesiastically rape, befuddling the moral compass of his entire congregation. The film examines Warren Jeffs\' life and shows how he became a worshipped and adored Prophet. Warren has a devout following numbering in the tens of thousands - many of whom would give their life at any moment with just one word from the Prophet. Despite a trail of abuse and ruined lives, Warren has maintained his grip on power. ','./FI3OM42kkTuQ69_1_d.jpg','N','N',0,0),(16,'CR','The Man on Carrion Road','2015-04-19 12:01:10',125,'Gonzalo Lopez-Gallego','Patrick Wilson, Ian McShane, John Leguizamo, Lynn Collins, James Belushi','The Man on Carrion Road is the visceral story of a botched Mexican cartel deal in the back roads of a border town. The town’s new sheriff (played by Patrick Wilson) must team up with the retired lawman (Played by Ian McShane) he replaced to investigate the source of the deal in order to stop a mysterious cartel butcher and his systematic brutalization of the town’s residents. A gritty and modern thriller, The Man on Carrion Road collides head on with the pathos and hard realities that inhabit life along the border; it’s a story that explores the ambitions, difficulties, and consequences that turn men into monsters and monsters into reality. ','','Y','Y',0,0),(17,'CR','Americons','2015-01-23 13:06:05',85,'Theo Avgerinos','Beau Martin Williams, Matt Funke, MIchael Masini, Trai Byers, Sam McMurray','Tells the story of a broken down collegiate football star who gets a shot at real-estate stardom during the eleventh hour of LA\'s nihilistic sub-prime mortgage boom. ','./FIgsnrwSF0kajj_1_d.jpg','N','N',0,0),(18,'CR','Kidnapping Mr. Heineken','2015-03-06 13:12:57',95,'Daniel Alfredson','Sam Worthington, Anthony Hopkins, Jim Sturgess, Ryan Kwanten, Rob Fuller',' In 1983, a group of childhood friends pulled off the crime of the century: kidnapping one of the richest men in the world, the heir of the Heineken beer empire (Anthony Hopkins). The shocking capture--by gunpoint in broad daylight on the streets of Amsterdam--resulted in the largest ransom ever paid for a kidnapped individual. It was truly the perfect crime…until they got away with it. Based on a true story, Kidnapping Mr. Heineken also stars Anthony Hopkins, Sam Worthington, Jim Sturgess and Ryan Kwanten. ','./FIqiuEG4xi8Btu_1_d.jpg','N','N',0,0),(19,'CR','Mr. Holmes','2015-04-19 12:15:18',103,'Bill Condon','Ian McKellen, Milo Parker, Laura Linney, Hatie Morahan, Patrick Kennedy',' A new twist on the world’s most famous detective. 1947, an aging Sherlock Holmes returns from a journey to Japan, where, in search of a rare plant with powerful restorative qualities, he has witnessed the devastation of nuclear warfare. Now, in his remote seaside farmhouse, Holmes faces the end of his days tending to his bees, with only the company of his housekeeper and her young son, Roger. Grappling with the diminishing powers of his mind, Holmes comes to rely upon the boy as he revisits the circumstances of the unsolved case that forced him into retirement, and searches for answers to the mysteries of life and love – before it\'s too late. ','./FIdk2reya8zzfl_16_d.jpg','Y','N',0,0),(20,'CR','The Girl Is In Trouble','2015-04-03 12:17:12',90,'Julius Onah','Columbus Short, Wilmer Valderrama, Alicja Bachieda, Jesse Spencer, Miriam Colon','A failed Lower East Side DJ struggling to keep his life together becomes entangled in a murder mystery involving a desperate woman, a missing drug dealer, and the scion of a powerful investment firm. ','./FIy2e8FazaKCBA_1_d.jpg','N','Y',0,0),(21,'TH','Good Kill','2015-05-15 12:20:40',104,'Andrew Niccol','Ethan Hawke, January Jones, Zoe Kravitz, Jake Abel, Bruce Greenwood','The film tells the story of a Las Vegas fighter-pilot turned drone-pilot (Ethan Hawke), who fights the Taliban via remote control for half of his day, then goes home to his wife (January Jones) and kids in the suburbs for the other half. But the pilot is starting to question the mission. Is he creating more terrorists than he’s killing? Is he fighting a war without end? One soldier’s tale with epic implications.\r\n\r\nGood Kill is a visually stunning exploration of how a man’s psychological, emotional and moral boundaries are challenged by the realities of 21st century warfare. The film initiates an important dialogue about the current techniques used in modern war, and in the same vein as The Hurt Locker and Full Metal Jacket, illustrates how war is constantly being redefined according to the technologies and methods in play. ','./FIAz5FhzmzRqDJ_4_d.jpg','Y','Y',3,10),(22,'TH','Lost River','2015-04-10 12:23:25',95,'Ryan Gosling','Christina Hendricks, Saoirse Ronan, Eva Mendes, Matt Smith, Ian De Caestecker','Lost River is a dark fairy tale about love, family and the fight for survival in the face of danger. In the virtually abandoned city of Lost River, Billy (Christina Hendricks), a single mother of two, is led into a macabre underworld in her quest to save her childhood home and hold her family together. Her teenage son Bones (Iain De Casestecker) discovers a mystery about the origins of Lost River that triggers his curiosity and sets into motion an unexpected journey that will test his limits and the limits of those he loves.','./FI1p9Nn6SdEF45_8_d.jpg','Y','Y',0,0),(23,'TH','Kingsman: The Secret Service','2015-02-13 10:34:14',129,'Matthew Vaughn','Taron Egerton, Sofia Boutella, Colin Firth, Mark Hamill, Samuel Jackson','The Secret Service tells the story of a super-secret spy organization that recruits an unrefined but promising street kid into the agency\'s ultra-competitive training program just as a global threat emerges from a twisted tech genius. ','./FIfparaCnOoYil_10_d.jpg','Y','Y',0,0),(24,'TH','Poltergeist','2015-05-22 09:36:31',100,'Gil Kenan','Sam Rockwell, Rosemarie DeWitt, Jared Harris, Nicholas Braun, Jane Adams','Legendary filmmaker Sam Raimi (“Spiderman, Evil Dead, The Grudge) and director Gil Kenan (Monster House) contemporize the classic tale about a family whose suburban home is haunted by evil forces. When the terrifying apparitions escalate their attacks and hold the youngest daughter captive, the family must come together to rescue her before she disappears forever. ','./FIhxlpmk8Ooqkk_1_d.jpg','Y','Y',0,0),(25,'TH','Unfiended','2015-04-17 09:38:10',82,'Levan Gabriadze','Heateher Sossaman, Matthew Bohrer, Coutney Halverson, Shelley Henning, Moses Jacob Storm','While video chatting one night, six high school friends receive a Skype message from a classmate who killed herself exactly one year ago. A first they think it\'s a prank, but when the girl starts revealing the friends\' darkest secrets, they realize they are dealing with something out of this world, something that wants them dead. Told entirely from a young girl\'s computer desktop, CYBERNATURAL redefines \'found footage\' for a new generation of teens. ','./FIlaTivQE5Ebor_2_d.jpg','Y','Y',0,0),(26,'TH','The Gift','2015-07-31 09:40:22',90,'Joel Edgerton','Jason Bateman, Rebecca Hall, Joel Edgerton, Beau Knapp, Allison Tolman','Can you really go through life having never wronged anyone? Even if you are unaware of how, or when, and even who you may have wronged....chances are there is someone out there who won’t ever forget it...or you. Simon and Robyn are a young married couple whose life is going just as planned until a chance encounter with an acquaintance from Simon’s high school sends their world into a harrowing tailspin. Simon doesn’t recognize Gordo at first, but after a series of uninvited encounters and mysterious gifts prove troubling, a horrifying secret from the past is uncovered after more than 20 years. As Robyn learns the unsettling truth about what happened between Simon and Gordo, she starts to question: how well do we really know the people closest to us, and are past bygones ever really bygones? ','./FID39ZuqCYu2GL_1_d.jpg','Y','Y',0,0),(27,'TH','The Loft','2015-01-30 10:42:38',108,'Erik Van Looy','Rhona Mitra, James Marsden, Wentworth Miller, Karl Urban, Isabel Lucas','Karl Urban (Star Trek Into Darkness) and James Marsden (2 Guns) star in the tense psychological thriller THE LOFT, the story of five married guys who conspire to secretly share a penthouse loft in the city--a place where they can carry out hidden affairs and indulge in their deepest fantasies. But the fantasy becomes a nightmare when they discover the dead body of an unknown woman in the loft, and they realize one of the group must be involved. Paranoia seizes them as everyone begins to suspect one another. Friendships are tested, loyalties are questioned and marriages crumble as the group is consumed by fear, suspicion and murder in this relentless thriller. ','./FIlmIYb23j3pnu_6_d.jpg','Y','Y',0,0),(28,'TH','The Boy Next Door','2015-01-23 10:44:55',91,'Rob L. Cohen','Jennifer Lopez, Kristin Chenoweth, Ryan Guzman, John Corbett, Travis Schuldt','Shortly after her divorce, a woman falls for a younger man who just moved in across the street, though their torrid affair takes an obsessive, dangerous turn. ','./FIdRfdMLqJfrgl_4_d.jpg','Y','Y',0,0),(29,'TH','The Woman in Black 2 Angel of Death','2015-01-02 10:46:41',90,'Tom Harper','Helen McCrory, Jeremy Irvine, Phoebe Fox, Leanne Best, Oaklee Pendergast','During the London bombings of World War II, school teachers Eve Parkins (Phoebe Fox) and Jean Hogg (Helen McCrory) lead a group of children in evacuation to Crythin Gifford, a remote village outside of the city. When the group takes up residence at the Eel Marsh House, 40 years after Arthur Kipps (Daniel Radcliffe) investigated the first haunting, Eve soon realizes they are not alone. The longer they stay in the house, the more the awful past of the residence unravels itself and the evil spirit that lurks around them threatens the well-being of the children. With the help of a pilot (Jeremy Irvine), Eve does all that she can to protect the children and discover the truth behind the Woman in Black. ','./FI5nHgjjZkkF8a_9_d.jpg','Y','Y',0,0),(30,'TH','The Atticus Institute','2015-01-23 10:48:34',92,'Chris Sparling','Julian Acosta, Anne Betancourt, Carlos E. Campos, Jake Carpenter, Heath Centazzo','Dr. Henry West founded The Atticus Institute in the early 1970s to test individuals expressing supernatural abilities – E.S.P., clairvoyance, psychokinesis, etc. Despite witnessing several noteworthy cases, nothing could have prepared Dr. West and his colleagues for Judith Winstead. She outperformed every subject they had ever studied – soon gaining the attention of the U.S. Department of Defense, who subsequently took control of the research facility. The more experiments they conducted on Judith, the clearer it became that her abilities were the manifestation of evil forces within her, prompting the government to take measures to weaponize this force. But they soon discovered there are powers that exist in this world that simply cannot be controlled. Now the details of the inexplicable events that occurred within The Atticus Institute are being made public after remaining classified for nearly forty years. ','./FINWJ0YEMillRR_1_d.jpg','Y','Y',0,0),(31,'AD','Avengers: Age of Ultron','2015-05-01 09:53:13',130,'Joss Whedon','Aaron Taylor - Johnson, Scarlett Johansson, Robert Downey Jr. ,Elizabeth Olsen, Chris Hemsworth','Marvel Studios presents “Avengers: Age of Ultron,” the epic follow-up to the biggest Super Hero movie of all time. When Tony Stark tries to jumpstart a dormant peacekeeping program, things go awry and Earth’s Mightiest Heroes, including Iron Man, Captain America, Thor, The Incredible Hulk, Black Widow and Hawkeye, are put to the ultimate test as the fate of the planet hangs in the balance. As the villainous Ultron emerges, it is up to The Avengers to stop him from enacting his terrible plans, and soon uneasy alliances and unexpected action pave the way for an epic and unique global adventure.','./FI93cxJOB7Xlcf_7_d.jpg','N','Y',0,0),(32,'AD','Mad Max: Fury Road','2015-05-15 10:01:37',115,'George Miller','Tom Hardy, Charlize Theron, Zoe Kravitz, Nicholas Hult, Rosie Huntington - Whiteley','From director George Miller, originator of the post-apocalyptic genre and mastermind behind the legendary “Mad Max” franchise, comes “Mad Max: Fury Road,” a return to the world of the Road Warrior, Max Rockatansky. Haunted by his turbulent past, Mad Max (Tom Hardy) believes the best way to survive is to wander alone. Nevertheless, he becomes swept up with a group fleeing across the Wasteland in a War Rig driven by an elite Imperator, Furiosa (Charlize Theron). They are escaping a Citadel tyrannized by the Immortan Joe (Hugh Keays-Byrne), from whom something irreplaceable has been taken. Enraged, the Warlord marshals all his gangs and pursues the rebels ruthlessly in the high-octane Road War that follows. ','./FINxHUQTlQcCRW_5_d.jpg','Y','Y',0,0),(33,'AD','Fantastic Four','2015-08-07 10:03:47',115,'Josh Trank','Michael B. Jordan, Miles Teller, Kate Mara, Jamie Bell, Toby Kebbell','The story centers on four young outsiders who teleport to an alternate and dangerous universe, which alters their physical form in shocking ways. Their lives irrevocably upended, the team must learn to harness their daunting new abilities and work together to save Earth from a former friend turned enemy. ','./FIdangGkvJ3Tgh_9_d.jpg','N','Y',0,0),(34,'AD','The Maze Runner: The Scorch Trials','2015-09-18 10:06:20',128,'We Ball','Dylan O\'Brien, Thomas Brodie - Sangster, Kaya Scodelario, Ki Hond Lee, Patricia Clarkson','The main kids have escaped, but now they face an even more treacherous challenge on the open roads of a devastated planet. ','','Y','Y',0,0),(35,'AD','The Hunger Games: Mockingjay Part 2','2015-11-20 11:08:22',140,'Francis Lawrence','Jennifer Lawrence, Josh Hutcherson, Liam Hemsworth, Philip Seymour Hoffman, Juliane Moore','With the nation of Panem in a full scale war, Katniss confronts President Snow (Donald Sutherland) in the final showdown. Teamed with a group of her closest friends – including Gale (Liam Hemsworth), Finnick (Sam Claflin), and Peeta (Josh Hutcherson) – Katniss goes off on a mission with the unit from District 13 as they risk their lives to stage an assassination attempt on President Snow who has become increasingly obsessed with destroying her. The mortal traps, enemies, and moral choices that await Katniss will challenge her more than any arena she faced in The Hunger Games. ','./FIj60RdPoXZXnm_5_d.jpg','Y','Y',0,0),(36,'AD','Mission: Impossible Rogue Nation','2015-07-31 10:10:14',100,'Christopher McQuarrie','Tom Cruise, Jeremy Renner, Simon Pegg, Rebecca Ferguson, Alec Baldwin','Ethan and team take on their most impossible mission yet, eradicating the Syndicate – an International rogue organization as highly skilled as they are, committed to destroying the IMF. ','./FIbH2zeKGfWwej_1_d.jpg','Y','Y',0,0),(37,'AD','Pan','2015-07-24 10:11:54',92,'Joe Wright','Cara Delevigne, Garrett Hedlund, Hugh Jackman, Amanda Seyfried, Rooney Mara','From director Joe Wright comes “Pan,” a live-action feature presenting a wholly original adventure about the beginnings of the beloved characters created by J.M. Barrie.Peter (Levi Miller) is a mischievous 12-year-old boy with an irrepressible rebellious streak, but in the bleak London orphanage where he has lived his whole life those qualities do not exactly fly. Then one incredible night, Peter is whisked away from the orphanage and spirited off to a fantastical world of pirates, warriors and fairies called Neverland. There, he finds amazing adventures and fights life-or-death battles while trying to uncover the secret of his mother, who left him at the orphanage so long ago, and his rightful place in this magical land. Teamed with the warrior Tiger Lily (Rooney Mara) and a new friend named James Hook (Garrett Hedlund), Peter must defeat the ruthless pirate Blackbeard (Hugh Jackman) to save Neverland and discover his true destiny—to become the hero who will forever be known as Peter ','./FIgMVXPFBv0ykl_1_d.jpg','N','N',0,0),(38,'AD','Black Sea','2015-01-23 11:15:46',115,'Kevin Macdonald','Jude Law, Jodie Whittaker, Ben Mendelsohn, Scoot McNairy, Tobias Menzies','A suspenseful adventure thriller directed by Academy Award winner Kevin Macdonald, centering on a rogue submarine captain (two-time Academy Award nominee Jude Law) who pulls together a misfit crew to go after a sunken treasure rumored to be lost in the depths of the Black Sea. As greed and desperation take control onboard their claustrophobic vessel, the increasing uncertainty of the mission causes the men to turn on each other to fight for their own survival. ','./FIfeAD3SLPi6il_6_d.jpg','N','Y',0,0),(39,'AD','Aloha','2015-05-29 10:17:46',92,'Cameron Crowe','Bradley Cooper, Emma Stone, Rachel McAdams, Danny McBride, Alec Baldwin','A defense contractor (Bradley Cooper) who is overseeing a weapons satellite launch from Hawaii teams up with (and falls for) an Air Force pilot (Emma Stone) to scuttle the launch. Mystical island forces and a talking a computer also play a part. ','./FIo7fqsxlbddqv_3_d.jpg','N','N',0,0),(40,'AD','Wyrmwood','2015-02-13 11:19:28',98,'Kiah Roache - Turner','Jay Gallagher, Bianca Bradey, Leon Burchill, Luke McKenzie, Yure Covich','Zombies invade the Australian Outback in this brain-splattered, Mad Max-meets-the-undead thrill ride. When an apocalyptic event turns everyone around him-including his wife and daughter-into marauding zombies, everyman mechanic Barry arms himself to the teeth, soups up his car, and hits the road in order to rescue his sister from a deranged, disco-dancing mad doctor. Bursting with high-octane car chases, crazy-cool homemade weaponry, and enough blood-and-guts gore to satisfy hardcore horror fans, this is one movie that takes the zombie flick to bone-crunchingly berserk new heights. ','./FItnbSrmretPwA_1_d.jpg','Y','Y',0,0),(41,'DR','Cinderella','2015-04-13 13:57:40',112,'Kenneth Branagh','Cate Blanchett, Lily James, Richard Madden, Helena Bonham Carter, Nonso Anozie','The story of “Cinderella” follows the fortunes of young Ella (Lily James) whose merchant father remarries following the death of her mother. Eager to support her loving father, Ella welcomes her new stepmother (Cate Blanchett) and her daughters Anastasia (Holliday Grainger) and Drisella (Sophie McShera) into the family home. But, when Ella’s father unexpectedly passes away, she finds herself at the mercy of a jealous and cruel new family. Finally relegated to nothing more than a servant girl covered in ashes, and spitefully renamed Cinderella, Ella could easily begin to lose hope. Yet, despite the cruelty inflicted upon her, Ella is determined to honor her mother’s dying words and to “have courage and be kind.” She will not give in to despair nor despise those who mistreat her. And then there is the dashing stranger she meets in the woods. Unaware that he is really a prince, not merely an apprentice at the Palace, Ella finally feels she has met a kindred soul. It appears her fortunes m','./FI0Ox155Bnub28_7_d.jpg','N','N',0,0),(42,'DR','The Longest Ride','2015-04-10 14:00:17',139,'George Tillman Jr.','Scott Eastwood, Britt Robertson, Melissa Benoist, Jack Huston, Oona Chaplin','Based on the bestselling novel by master storyteller Nicholas Sparks, The Longest Ride centers on the star-crossed love affair between Luke, a former champion bull rider looking to make a comeback, and Sophia, a college student who is about to embark upon her dream job in New York City’s art world. As conflicting paths and ideals test their relationship, Sophia and Luke make an unexpected and fateful connection with Ira, whose memories of his own decades-long romance with his beloved wife deeply inspire the young couple. Spanning generations and two intertwining love stories, The Longest Ride explores the challenges and infinite rewards of enduring love. ','./FII7KrJFFQeHMM_4_d.jpg','N','N',0,0),(43,'DR','Focus','2015-02-27 15:02:53',104,'Glenn Ficarra','Margot Robbie, Will Smith, Rodrigo Santoro, B.D. Wond, Gereald McRaney','Will Smith stars as Nicky, a seasoned master of misdirection who becomes romantically involved with novice con artist Jess (Margot Robbie). As he’s teaching her the tricks of the trade, she gets too close for comfort and he abruptly breaks it off. Three years later, the former flame—now an accomplished femme fatale—shows up in Buenos Aires in the middle of the high stakes racecar circuit. In the midst of Nicky’s latest, very dangerous scheme, she throws his plans for a loop...and the consummate con man off his game.','./FI0wTdZ5LiZg39_2_d.jpg','N','Y',0,0),(44,'DR','Woman In Gold','2015-04-01 14:04:34',120,'Simon Curtis','Helen Mirren, Ryan Reynolds, Daniel Bruhl, Katie Holmes, Tatiana Maslany','Academy Award winner Helen Mirren stars in the incredible story of Maria Altmann, a Jewish refugee who is forced to flee Vienna during World War II. Decades later, determined to salvage some dignity from her past, Maria has taken on a mission to reclaim a painting the Nazis stole from her family: the famous Lady In Gold, a portrait of her beloved Aunt Adele. Partnering with an inexperienced but determined young lawyer Ryan Reynolds, Maria embarks on an epic journey for justice 60 years in the making. ','./FIviJhOtNxjmyE_1_d.jpg','N','N',0,0),(45,'DR','Cake','2015-04-20 14:05:57',98,'Daniel Barnz','Jennifer Aniston, Anna Kendrick, Britt Robertson, Sam Worthington, Lucy Punch','The acerbic, hilarious Claire Simmons becomes fascinated by the suicide of a woman in her chronic pain support group. ','./FI3vGbJKLG8e6a_5_d.jpg','N','Y',0,0),(46,'DR','While We\'re Young','2015-03-27 15:07:39',94,'Noah Baumbach','Ben Stiller, Adam Driver, Naomi Watts, Amanda Seyfried, Charles Grodin','Noah Baumbach’s exploration of aging, ambition and success stars Stiller and Watts as a middle-aged couple whose career and marriage are overturned when a disarming young couple (Driver and Seyfried) enters their lives. The film also stars Charles Grodin, Maria Dizzia, Adam Horovitz and Ryan Serhant. ','./FIL9XAvXx80oOU_1_d.jpg','N','N',0,0),(47,'DR','Wild','2015-04-22 08:35:41',115,'Jean - Marc Vallee','Reese Witherspoon, Gaby Hoffmann, Laura Dern','After years of reckless behavior, a heroin addiction and the destruction of her marriage, Cheryl Strayed (Reese Witherspoon) makes a rash decision. Haunted by memories of her mother Bobbi (Laura Dern) and with absolutely no experience, she sets out to hike more than a thousand miles on the Pacific Crest Trail all on her own.','','N','Y',0,0),(48,'DR','Unbroken','2015-04-22 08:37:05',137,'Angelina Jolie','Jack O\'Connell, Domhall Gleeson, Jai Courtney','As a boy, Louis \"Louie\" Zamperini is always in trouble, but with the help of his older brother, he turns his life around and channels his energy into running, later qualifying for the 1936 Olympics. When World War II breaks out, Louie enlists in the military. After his plane crashes in the Pacific, he survives an incredible 47 days adrift i n a raft, until his capture by the Japanese navy. Sent to a POW camp, Louie becomes the favorite target of a particularly cruel prison commander.','','N','Y',0,0),(49,'DR','Gone Girl','2015-04-22 08:38:42',149,'David Fincher','Ben Affleck, Rosamund Pike, Neil Patrick Harris','On the occasion of his fifth wedding anniversary, Nick Dunne (Ben Affleck) reports that his beautiful wife, Amy (Rosamund Pike), has gone missing. Under pressure from the police and a growing media frenzy, Nick\'s portrait of a blissful union begins to crumble. Soon his lies, deceits and strange behavior have everyone asking the same dark qu estion: Did Nick Dunne kill his wife?','','Y','Y',0,0),(50,'DR','The Imitation Game','2015-04-22 08:40:02',114,'Morten Tyldum','Benedict Cumberbatch, Keira Knightley, Matthew Goode','During the winter of 1952, British authorities entered the home of mathematician, cryptanalyst and war hero Alan Turing (Benedict Cumberbatch) to investigate a reported burglary. They instead ended up arresting Turing himself on charges of ‘gross indecency’, an accusation that would lead to his devastating conviction for the criminal offens e of homosexuality – little did officials know, they were actually incriminating the pioneer of modern-day computing. Famously leading a motley group of scholars, linguists, chess champions and intelligence officers, he was credited with cracking the so-called unbreakable codes of Germany\'s World War II Enigma machine. ','','N','Y',0,0),(51,'SF','Insurgent (Divergent 2)','2015-04-22 08:44:41',119,'Robert Schwentke','Shilene Woodley, Ansel Elgort, Theo James','The Divergent Series: Insurgent raises the stakes for Tris as she searches for allies and answers in the ruins of a futuristic Chicago. Tris (Woodley) and Four (James) are now fugitives on the run, hunted by Jeanine (Winslet), the leader of the power-hungry Erudite elite. Racing against time, they must find out what Tris\'s family sacrificed  their lives to protect, and why the Erudite leaders will do anything to stop them. Haunted by her past choices but desperate to protect the ones she loves, Tris, with Four at her side, faces one impossible challenge after another as they unlock the truth about the past and ultimately the future of their world. ','./2330.jpg','N','Y',0,0),(52,'SF','Ex Machina','2015-04-13 08:46:18',108,'Alex Garland','Alicia Vikander, Domhnall Gleeson, Oscar Isaac','Caleb Smith (Domhnall Gleeson), a programmer at an internet-search giant, wins a competition to spend a week at the private mountain estate of the company\'s brilliant and reclusive CEO, Nathan Bateman (Oscar Isaac). Upon his arrival, Caleb learns that Nathan has chosen him to be the human component in a Turing Test-charging him with evaluat ing the capabilities, and ultimately the consciousness, of Nathan\'s latest experiment in artificial intelligence. That experiment is Ava (Alicia Vikander), a breathtaking A.I. whose emotional intelligence proves more sophisticated--and more deceptive--than the two men could have imagined.','./2299.jpg','Y','Y',0,0),(53,'SF','Chappie','2015-04-05 08:58:22',120,'Neill Blomkamp','Hugh Jackman, Sigourney Weaver, Sharlto Copley',' Every child comes into the world full of promise, and none more so than Chappie: he is gifted, special, a prodigy. Like any child, Chappie will come under the influence of his surroundings - some good, some bad - and he will rely on his heart and soul to find his way in the world and become his own man. But there\'s one thing that makes Chap pie different from anyone else: he is a robot. The first robot with the ability to think and feel for himself. His life, his story, will change the way the world looks at robots and humans forever.','./2322.jpg','N','Y',0,0),(54,'SF','Guardians of the Galaxy','2014-11-21 10:00:33',121,'James Gunn','Chris Pratt, Vin Diesel, Bradley Cooper','Peter Quill finds himself the object of an unrelenting bounty hunt after stealing a mysterious orb coveted by Ronan, a powerful villain with ambitions that threaten the entire universe. To evade the ever-persistent Ronan, Quill is forced into an uneasy truce with a quartet of disparate misfits-Rocket, a gun-toting raccoon, Groot, a tree-lik e humanoid, the deadly and enigmatic Gamora and the revenge-driven Drax the Destroyer. But when Quill discovers the true power of the orb and the menace it poses to the cosmos, he must do his best to rally his ragtag rivals for a last, desperate stand-with the galaxy\'s fate in the balance.','./2055.jpg','N','N',0,0),(55,'SF','Lucy','2014-11-05 10:02:05',89,'Luc Besson','Scarlett Johansson, Morgan Freeman, Analeigh Tipton','When a boyfriend tricks Lucy (Scarlett Johansson) into delivering a briefcase to a supposed business contact, the once-carefree student is abducted by thugs who intend to turn her into a drug mule. She is surgically implanted with a package containing a powerful chemical, but it leaks into her system, giving her superhuman abilities, includ ing telekinesis and telepathy. With her former captors in pursuit, Lucy seeks out a neurologist (Morgan Freeman), who she hopes will be able to help her.','./2061.jpg','Y','Y',0,0),(56,'SF','Edge of Tomorrow','2014-08-15 09:03:56',113,'Doug Liman','Tom Cruise, Emily Blunt, Bill Paxton','In a near future, a hive-like alien race called Mimics have hit the Earth in an unrelenting assault, shredding great cities to rubble and leaving millions of human casualties in their wake. No army in the world can match the speed, brutality or seeming prescience of the weaponized Mimic fighters or their telepathic commanders. But now the w orld\'s armies have joined forces for a last stand offensive against the alien horde, with no second chances. Lt. Col. Bill Cage is an officer who has never seen a day of combat when he is unceremoniously demoted and then dropped - untrained and ill-equipped - into what amounts to little more than a suicide mission. Cage is killed within minutes, managing to take an Alpha down with him. But, impossibly, he awakens back at the beginning of the same hellish day, and is forced to fight and die again...and again. Direct physical contact with the alien has thrown him into a time loop - dooming him to live out the same brutal combat over and over. But with','./2015.jpg','N','Y',0,0),(57,'SF','Intestellar','2014-12-18 10:05:24',169,'Christopher Nolan','Matthew McConaughey, Anne Hathaway, Jessica Chastain','In Earth\'s future, a global crop blight and second Dust Bowl are slowly rendering the planet uninhabitable. Professor Brand (Michael Caine), a brilliant NASA physicist, is working on plans to save mankind by transporting Earth\'s population to a new home via a wormhole. But first, Brand must send former NASA pilot Cooper (Matthew McConaughey ) and a team of researchers through the wormhole and across the galaxy to find out which of three planets could be mankind\'s new home. ','./2297.jpg','Y','Y',0,0),(58,'SF','Divergent','2015-04-22 09:08:08',139,'Neil Burger','Shailene Woodley, Theo James, Kate Winslet','Tris Prior (Shailene Woodley) lives in a futuristic world in which society is divided into five factions. As each person enters adulthood, he or she must choose a faction and commit to it for life. Tris chooses Dauntless -- those who pursue bravery above all else. However, her initiation leads to the discovery that she is a Divergent and wi ll never be able to fit into just one faction. Warned that she must conceal her status, Tris uncovers a looming war which threatens everyone she loves.','./1945.jpg','N','Y',0,0),(59,'SF','Project Almanac','2015-04-13 09:09:53',106,'Dean Israelite','Sir Maejor, Sofia Black - D\'Elia, Sam Lerner','David Raskin (Jonny Weston) is a high-school science nerd who dreams of going to MIT. When he and his friends (Sam Lerner, Allen Evangelista) find his late father\'s plans for a \"temporal displacement device,\" David can\'t wait to start tinkering. When they finally get the device to work, the teenagers jump at the opportunity to manipulate ti me in their favor -- but their joy is short-lived when they begin to discover the consequences of their actions.','','N','N',0,0),(60,'SF','Perfect Sensce','2015-04-22 09:11:45',92,'David Mackenzie','Ewan McGregor, Eva Green, Connie Nielsen','Eva Green plays Susan, an expert in epidemics who, after having her heart broken, sees a patient who has lost the ability to smell anything after an unexpected crying jag. Turns out there is a small percentage of people who are experiencing emotional upheavals and then losing one or more of their senses. As she begins to research this condi tion, she comes to understand that the malady threatens the entire world.','','N','Y',0,0),(61,'CM','Home','2015-03-27 10:32:46',94,'Tim Johnson','Jim Parsons, Rihanna, Steve Martin','Oh, an alien on the run from his own people, lands on Earth and makes friends with the adventurous Tip, who is on a quest of her own.','./MV5BMTU0MzU4ODI3Ml5BMl5BanBnXkFtZTgwMzQzODk5NDE._V1_SX214_AL_.jpg','N','N',0,0),(62,'CM','The Wedding Ringer','2015-01-16 10:34:55',101,'Jeremy Garelick','Kevin Hart, Josh Gad, Kaley Cuoco','Two weeks shy of his wedding, a socially awkward guy enters into a charade by hiring the owner of a company that provides best men for grooms in need.','./MV5BMTk3MjQyNTUxNl5BMl5BanBnXkFtZTgwNjM3Mjk1MzE._V1_SX214_AL_.jpg','N','N',0,0),(63,'CM','Get Hard','2015-03-27 10:36:46',100,'Jay Martel','Will Ferrell, Kevin Hart, Alison Brie','When millionaire James King is jailed for fraud and bound for San Quentin, he turns to Darnell Lewis to prep him to go behind bars.','./MV5BMTc3OTc1NjM0M15BMl5BanBnXkFtZTgwNjAyMzE1MzE._V1_SX214_AL_.jpg','N','N',0,0),(64,'CM','The DUFF','2015-02-20 10:38:47',101,'Ari Sandel','Mae Whitman, Bella Thorne, Robiie Amell','A high school senior instigates a social pecking order revolution after finding out that she has been labeled the DUFF - Designated Ugly Fat Friend - by her prettier, more popular counterparts.','./MV5BMTc3OTg3MDUwN15BMl5BanBnXkFtZTgwMTAwMTkxNDE._V1_SX214_AL_.jpg','N','N',0,0),(65,'CM','Big Hero 6','2014-11-07 10:41:16',102,'DonHall','Ryan Potter, Scott Adsit, Jamie Chung','The special bond that develops between plus-sized inflatable robot Baymax, and prodigy Hiro Hamada, who team up with a group of friends to form a band of high-tech heroes.','./MV5BMjI4MTIzODU2NV5BMl5BanBnXkFtZTgwMjE0NDAwMjE._V1_SY317_CR00214317_AL_.jpg','N','N',0,0),(66,'CM','Hot Tub Time Machine 2','2015-02-20 10:42:31',93,'Steve Pink','Rob Corddry, Craig Robinson, Clark Duke','When Lou finds himself in trouble, Nick and Jacob fire up the hot tub time machine in an attempt to get back to the past. But they inadvertently land in the future with Adam Jr. Now they have to alter the future in order to save the past - which is really the present.','./MV5BMTU3NzQzMzE0NV5BMl5BanBnXkFtZTgwMDM4MTI0NDE._V1_SX214_AL_.jpg','N','N',0,0),(67,'CM','Birdman','2014-11-14 10:43:56',119,'Alejandro Gonzalez Inarritu','Michael Keaton , Zach Galifianakis, Edward Norton','A washed-up actor, who once played an iconic superhero, battles his ego and attempts to recover his family, his career and himself in the days leading up to the opening of his Broadway play.','./MV5BMTk3MjQyNTUxNl5BMl5BanBnXkFtZTgwNjM3Mjk1MzE._V1_SX214_AL__TucCEly.jpg','N','Y',0,0),(68,'CM','Hot Pursuit','2015-05-08 09:48:16',100,'Anne Fletcher','Sofia Vergara, Reese Witherspoon, Jodi Lyn Brockton','An inept police officer must protect the widow of a drug dealer from criminals and dirty policemen.','./MV5BMjAzMjQyNTU1N15BMl5BanBnXkFtZTgwMDk4NTQ0NDE._V1_SX214_AL_.jpg','N','N',0,0),(69,'CM','Spy','2015-06-05 09:55:23',120,'Paul Feig','Jason Statham, Rosy Byrne, Morena Baccarin','A desk-bound CIA analyst volunteers to go undercover to infiltrate the world of a deadly arms dealer, and prevent diabolical global disaster.','./MV5BNjI5OTQ0MDQxM15BMl5BanBnXkFtZTgwMzcwNjMyNTE._V1_SX214_AL_.jpg','N','N',0,0),(70,'CM','Home Sweet Hell','2015-04-25 09:56:54',98,'Anthony Burns','Jordana Brewster, Katherine Heigl, Patrick Wilson','Don Champagne seems to have it all but when his wife, Mona, learns of Don\'s affair with a pretty new salesgirl, Mona will stop at nothing to maintain their storybook life.','./MV5BODkxMDIyODMyN15BMl5BanBnXkFtZTgwMDc5MjkxNDE._V1_SY317_CR00214317_AL_.jpg','N','N',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_choice`
--

LOCK TABLES `polls_choice` WRITE;
/*!40000 ALTER TABLE `polls_choice` DISABLE KEYS */;
INSERT INTO `polls_choice` VALUES (10,'Jason Statham',0,4),(11,'Sylvester Stalone',0,4),(12,'Vin Diesel',0,4),(13,'Julia Roberts',0,5),(14,'Nicole Kidman',0,5),(15,'Angelina Jolie',0,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_question`
--

LOCK TABLES `polls_question` WRITE;
/*!40000 ALTER TABLE `polls_question` DISABLE KEYS */;
INSERT INTO `polls_question` VALUES (4,'Who is your favourite  adventure male actor?','2015-04-17 14:51:48'),(5,'Who is your favourite female actor?','2015-04-25 10:55:11');
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

-- Dump completed on 2015-04-25 13:56:04
