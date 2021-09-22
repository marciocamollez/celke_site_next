-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: site_next
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_about` varchar(255) NOT NULL,
  `desc_about` text NOT NULL,
  `image_about` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abouts`
--

LOCK TABLES `abouts` WRITE;
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
INSERT INTO `abouts` VALUES (1,'Teste','Texto teste','premium_v5.jpg','2021-09-21 14:37:37','2021-09-21 14:37:37');
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents_contacts`
--

DROP TABLE IF EXISTS `contents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contents_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_contact` varchar(255) NOT NULL,
  `desc_contact` text NOT NULL,
  `icon_company` varchar(255) NOT NULL,
  `title_company` varchar(255) NOT NULL,
  `desc_company` varchar(255) NOT NULL,
  `icon_address` varchar(255) NOT NULL,
  `title_address` varchar(255) NOT NULL,
  `desc_address` varchar(255) NOT NULL,
  `icon_email` varchar(255) NOT NULL,
  `title_email` varchar(255) NOT NULL,
  `desc_email` varchar(255) NOT NULL,
  `title_form` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents_contacts`
--

LOCK TABLES `contents_contacts` WRITE;
/*!40000 ALTER TABLE `contents_contacts` DISABLE KEYS */;
INSERT INTO `contents_contacts` VALUES (1,'Titulo','Descricao','fas fa-user','Empresa','Celke','fas fa-map-marker-alt','Endereço','Rua X','fas fa-envelope','E-mail','cesar@celke.com.br','Mensagem de Contato','2021-09-21 16:30:56','2021-09-21 16:30:56');
/*!40000 ALTER TABLE `contents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homes`
--

DROP TABLE IF EXISTS `homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_top_one` varchar(255) NOT NULL,
  `title_top_two` varchar(255) NOT NULL,
  `title_top_three` varchar(255) NOT NULL,
  `btn_text_top` varchar(255) NOT NULL,
  `btn_link_top` varchar(255) NOT NULL,
  `image_top` varchar(255) DEFAULT NULL,
  `ser_title` varchar(255) NOT NULL,
  `ser_icon_one` varchar(255) NOT NULL,
  `ser_title_one` varchar(255) NOT NULL,
  `ser_desc_one` varchar(255) NOT NULL,
  `ser_icon_two` varchar(255) NOT NULL,
  `ser_title_two` varchar(255) NOT NULL,
  `ser_desc_two` varchar(255) NOT NULL,
  `ser_icon_three` varchar(255) NOT NULL,
  `ser_title_three` varchar(255) NOT NULL,
  `ser_desc_three` varchar(255) NOT NULL,
  `title_ser_prem` varchar(255) NOT NULL,
  `subtitle_ser_prem` varchar(255) NOT NULL,
  `desc_ser_prem` text NOT NULL,
  `btn_text_ser_prem` varchar(255) NOT NULL,
  `btn_link_ser_prem` varchar(255) NOT NULL,
  `image_ser_prem` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homes`
--

LOCK TABLES `homes` WRITE;
/*!40000 ALTER TABLE `homes` DISABLE KEYS */;
INSERT INTO `homes` VALUES (1,'Temos a solução','que a sua empresa precisa','Podemos ajudar a sua empresa!','Entrar em Contato','http://localhost:3000/contato','banner_top_v5.jpg','Serviços','fas fa-wifi','Wifi veloz','Sed iaculis massa quis mauris sollicitudin sollicitudin. Magna et fermentum imperdiet.','fas fa-rocket','Espaço inspirador','Sed iaculis massa quis mauris sollicitudin sollicitudin. Magna et fermentum imperdiet.','fas fa-handshake','Reuniões','Sed iaculis massa quis mauris sollicitudin sollicitudin. Magna et fermentum imperdiet.','Serviço Premium','Desenvolvido para você atingir seus melhores índices de produtividade, criatividade e bem-estar.','Sed laoreet cursus commodo. Quisque pharetra nisl vitae diam egestas lacinia. Integer at arcu ac turpis blandit ullamcorper at vitae diam. Donec quam est, aliquam non nisl non, feugiat suscipit eros. Pellentesque condimentum est quam, auctor faucibus velit euismod eget. Nam a diam sed metus molestie tincidunt. Quisque et aliquet risus. Sed et sem quis massa sagittis feugiat at sed risus. Sed semper tortor elit.','Contato','http://localhost:3000/contato','premium_v5.jpg','2021-09-20 17:42:10','2021-09-20 17:42:10');
/*!40000 ALTER TABLE `homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_contacts`
--

DROP TABLE IF EXISTS `msgs_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `msgs_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_contacts`
--

LOCK TABLES `msgs_contacts` WRITE;
/*!40000 ALTER TABLE `msgs_contacts` DISABLE KEYS */;
INSERT INTO `msgs_contacts` VALUES (1,'Marcio Camollez Junior','marciocamollez@hotmail.com','Teste','aaaassasa','2021-09-21 17:08:10','2021-09-21 17:08:10'),(2,'MARCIO C JUNIOR','a@aa.com','assas','sdasdas','2021-09-21 17:14:20','2021-09-21 17:14:20');
/*!40000 ALTER TABLE `msgs_contacts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-22 10:32:31
