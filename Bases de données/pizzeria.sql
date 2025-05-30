-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: pizzeria
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commandes` (
  `num_com` int(11) NOT NULL AUTO_INCREMENT,
  `date_com` datetime DEFAULT NULL,
  `num_cnsm` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_com`),
  KEY `numero_consommateur` (`num_cnsm`),
  CONSTRAINT `numero_consommateur` FOREIGN KEY (`num_cnsm`) REFERENCES `consommateur` (`num_cnsm`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes`
--

LOCK TABLES `commandes` WRITE;
/*!40000 ALTER TABLE `commandes` DISABLE KEYS */;
INSERT INTO `commandes` VALUES (1,'2025-05-01 12:00:00',1),(2,'2025-05-01 12:10:00',2),(3,'2025-05-01 12:20:00',3),(4,'2025-05-01 12:30:00',4),(5,'2025-05-01 12:40:00',5),(6,'2025-05-01 12:50:00',6),(7,'2025-05-01 13:00:00',7),(8,'2025-05-01 13:10:00',8),(9,'2025-05-01 13:20:00',9),(10,'2025-05-01 13:30:00',10);
/*!40000 ALTER TABLE `commandes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consommateur`
--

DROP TABLE IF EXISTS `consommateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consommateur` (
  `num_cnsm` int(11) NOT NULL,
  `nom_cnsm` varchar(200) DEFAULT NULL,
  `prenom_cnsm` varchar(200) DEFAULT NULL,
  `addresse_cnsm` varchar(500) DEFAULT NULL,
  `email_cnsm` varchar(250) DEFAULT NULL,
  `password_cnsm` varchar(50) DEFAULT NULL,
  `tel_cnsm` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`num_cnsm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consommateur`
--

LOCK TABLES `consommateur` WRITE;
/*!40000 ALTER TABLE `consommateur` DISABLE KEYS */;
INSERT INTO `consommateur` VALUES (1,'Dupont','Jean','12 rue de Paris','jean.dupont@example.com','pass123','0612345678'),(2,'Martin','Claire','34 avenue des Champs','claire.martin@example.com','pass234','0623456789'),(3,'Bernard','Luc','56 boulevard Haussmann','luc.bernard@example.com','pass345','0634567890'),(4,'Petit','Julie','78 rue Lafayette','julie.petit@example.com','pass456','0645678901'),(5,'Robert','Pierre','90 rue Oberkampf','pierre.robert@example.com','pass567','0656789012'),(6,'Richard','Camille','21 rue Mouffetard','camille.richard@example.com','pass678','0667890123'),(7,'Durand','Alice','43 avenue Victor Hugo','alice.durand@example.com','pass789','0678901234'),(8,'Lefevre','Thomas','65 rue de Rivoli','thomas.lefevre@example.com','pass890','0689012345'),(9,'Moreau','Sophie','87 rue de Vaugirard','sophie.moreau@example.com','pass901','0690123456'),(10,'Simon','Hugo','109 rue de S├¿vres','hugo.simon@example.com','pass012','0601234567');
/*!40000 ALTER TABLE `consommateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournisseur` (
  `num_frn` int(11) NOT NULL AUTO_INCREMENT,
  `nom_frn` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`num_frn`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` VALUES (1,'Italaliment'),(2,'Fromages du Sud'),(3,'Boissons Express'),(4,'Gusto Italiano'),(5,'BioVita'),(6,'Fournipizza'),(7,'Produits Frais SARL'),(8,'Epices&Co'),(9,'Boissons du Rh├┤ne'),(10,'Saveurs de Rome');
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `num_ing` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ing` varchar(200) DEFAULT NULL,
  `type_ing` varchar(200) DEFAULT NULL,
  `num_frn` int(11) DEFAULT NULL,
  `qt_ing` float DEFAULT NULL,
  PRIMARY KEY (`num_ing`),
  KEY `num_frn` (`num_frn`),
  CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`num_frn`) REFERENCES `fournisseur` (`num_frn`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'Mozzarella','Fromage',2,50),(2,'Tomates','L├®gume',1,100),(3,'Pepperoni','Charcuterie',4,30),(4,'Champignons','L├®gume',1,40),(5,'Jambon','Charcuterie',4,35),(6,'Basilic','Herbe',8,20),(7,'Cr├¿me','Laitier',5,25),(8,'Sucre','Sec',6,40),(9,'Caf├®','Boisson chaude',3,30),(10,'Farine','Sec',6,200);
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientsproduits`
--

DROP TABLE IF EXISTS `ingredientsproduits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredientsproduits` (
  `num_prd` int(11) NOT NULL DEFAULT '0',
  `num_ing` int(11) NOT NULL DEFAULT '0',
  `quantite` float DEFAULT NULL,
  PRIMARY KEY (`num_prd`,`num_ing`),
  KEY `numero_ingredient` (`num_ing`),
  CONSTRAINT `numero_produit` FOREIGN KEY (`num_prd`) REFERENCES `produits` (`num_prd`),
  CONSTRAINT `numero_ingredient` FOREIGN KEY (`num_ing`) REFERENCES `ingredients` (`num_ing`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientsproduits`
--

LOCK TABLES `ingredientsproduits` WRITE;
/*!40000 ALTER TABLE `ingredientsproduits` DISABLE KEYS */;
INSERT INTO `ingredientsproduits` VALUES (1,1,0.15),(1,2,0.2),(1,6,0.05),(2,1,0.15),(2,2,0.2),(2,3,0.1),(3,1,0.15),(3,4,0.1),(3,5,0.1),(4,2,0.15);
/*!40000 ALTER TABLE `ingredientsproduits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produits` (
  `num_prd` int(11) NOT NULL AUTO_INCREMENT,
  `nom_prd` varchar(200) DEFAULT NULL,
  `type_prd` varchar(200) DEFAULT NULL,
  `prix_prd` float NOT NULL,
  `url_prd` varchar(250) DEFAULT NULL,
  `desc_prd` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`num_prd`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` VALUES (1,'Margherita','Pizza',8.5,'url1.jpg','Tomate, mozzarella, basilic'),(2,'Pepperoni','Pizza',10,'url2.jpg','Sauce tomate, pepperoni, fromage'),(3,'Reine','Pizza',9.5,'url3.jpg','Jambon, champignons, mozzarella'),(4,'V├®g├®tarienne','Pizza',9,'url4.jpg','L├®gumes frais, sauce tomate, fromage'),(5,'4 Fromages','Pizza',10.5,'url5.jpg','Mozzarella, gorgonzola, ch├¿vre, parmesan'),(6,'Calzone','Pizza',11,'url6.jpg','Pizza repli├®e, garniture au choix'),(7,'Tiramisu','Dessert',4,'url7.jpg','Dessert italien classique'),(8,'Panna Cotta','Dessert',3.5,'url8.jpg','Cr├¿me cuite vanill├®e, coulis fruits rouges'),(9,'Coca-Cola','Boisson',2,'url9.jpg','Boisson gazeuse'),(10,'Eau Min├®rale','Boisson',1.5,'url10.jpg','Eau plate naturelle');
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventes`
--

DROP TABLE IF EXISTS `ventes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventes` (
  `num_vnt` int(11) NOT NULL,
  `date_vnt` datetime DEFAULT NULL,
  `qnt_vnt` float DEFAULT NULL,
  `montant` float DEFAULT NULL,
  `num_prd` int(11) DEFAULT NULL,
  `num_com` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_vnt`),
  KEY `numero_produit_vnt` (`num_prd`),
  KEY `numero_commande` (`num_com`),
  CONSTRAINT `numero_produit_vnt` FOREIGN KEY (`num_prd`) REFERENCES `produits` (`num_prd`),
  CONSTRAINT `numero_commande` FOREIGN KEY (`num_com`) REFERENCES `commandes` (`num_com`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventes`
--

LOCK TABLES `ventes` WRITE;
/*!40000 ALTER TABLE `ventes` DISABLE KEYS */;
INSERT INTO `ventes` VALUES (1,'2025-05-01 12:01:00',2,17,1,1),(2,'2025-05-01 12:11:00',1,10,2,2),(3,'2025-05-01 12:21:00',3,27,3,3),(4,'2025-05-01 12:31:00',1,9,4,4),(5,'2025-05-01 12:41:00',2,21,5,5),(6,'2025-05-01 12:51:00',1,11,6,6),(7,'2025-05-01 13:01:00',2,8,7,7),(8,'2025-05-01 13:11:00',1,3.5,8,8),(9,'2025-05-01 13:21:00',3,6,9,9),(10,'2025-05-01 13:31:00',2,3,10,10);
/*!40000 ALTER TABLE `ventes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-25 15:55:12
