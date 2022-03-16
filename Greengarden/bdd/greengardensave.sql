-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: greengarden
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `refClient` int(11) NOT NULL,
  `categorieClient` varchar(20) NOT NULL,
  `civilite` varchar(3) NOT NULL,
  `nomClient` varchar(50) NOT NULL,
  `prenomClient` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `adresseLivraison` varchar(100) NOT NULL,
  `cpLivraison` int(11) NOT NULL,
  `villeLivraison` varchar(50) NOT NULL,
  `adresseFacturation` varchar(100) NOT NULL,
  `cpFacturation` int(11) NOT NULL,
  `villeFacturation` varchar(50) NOT NULL,
  `modePaiement` varchar(3) NOT NULL,
  `coefficient` varchar(5) DEFAULT NULL,
  `id_commercial` int(11) NOT NULL,
  PRIMARY KEY (`id_client`),
  UNIQUE KEY `refClient` (`refClient`),
  KEY `id_commercial` (`id_commercial`),
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`id_commercial`) REFERENCES `commercial` (`id_commercial`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,100,'Professionel','Mrs','Marsh','Gillian','et.arcu@protonmail.ca','07 08 35 74 28','72 Nulla Avenue',64827,'Nanterre','72 Nulla Avenue',64827,'Nanterre','Dif','1.30',5),(2,101,'Particulier','Mr.','Patrick','Chester','orci.in.consequat@hotmail.net','03 69 20 39 13','6 Elit, Avenue',33741,'Reims','6 Elit, Avenue',33741,'Reims','Cde','1.50',1),(3,102,'Particulier','Mrs','Navarro','Gabriel','a.facilisis.non@yahoo.ca','03 35 18 94 37','P.O. Box 201, 429 Ut, Av.',78350,'Bastia','243-4326 Sit Avenue',13691,'Châlons-en-Champagne','Cde','1.50',1),(4,103,'Professionel','Mrs','Gross','Erin','vel@aol.couk','03 40 65 52 88','17 Urna. Ave',1846,'Hérouville-Saint-Clair','17 Urna. Ave',1846,'Hérouville-Saint-Clair','Dif','1.30',4),(5,104,'Particulier','Mrs','Gomez','Wendy','nunc.ullamcorper@hotmail.couk','07 47 52 27 31','314-4006 Sem Avenue',22540,'Poitiers','P.O. Box 906, 7053 Cras Av.',11550,'Laon','Cde','1.50',3),(6,105,'Particulier','Mr.','Clarke','Felicia','mauris@hotmail.ca','02 34 60 23 41','Ap #838-9409 Sed St.',86426,'Bègles','Ap #369-7261 Eu, Road',12143,'Compiègne','Cde','1.50',4),(7,106,'Particulier','Mrs','Gentry','Gretchen','mauris@google.org','05 45 92 91 16','733-8837 Facilisis. Rd.',30816,'Saint-Louis','785-248 Cras Av.',25577,'Ajaccio','Cde','1.50',1),(8,107,'Professionel','Mr.','Forbes','Sebastian','feugiat.metus@icloud.com','08 14 79 97 88','28 Sem Rd.',91617,'Montauban','39 Placerat, Rd.',73485,'Épernay','Dif','1.30',5),(9,108,'Professionel','Mrs','Gould','Malcolm','egestas.nunc@protonmail.ca','03 46 46 01 33','92 Ipsum Street',81256,'Saint-Louis','92 Ipsum Street',81256,'Saint-Louis','Dif','1.30',3),(10,109,'Professionel','Mrs','Rasmussen','Elton','phasellus.fermentum@icloud.couk','06 22 87 98 78','9 Sagittis Rd.',47882,'Moulins','9 Sagittis Rd.',47882,'Moulins','Dif','1.30',2);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL AUTO_INCREMENT,
  `numeroCommande` int(11) NOT NULL,
  `total_ht_Produit` decimal(5,2) DEFAULT NULL,
  `tote_ttc_Produit` decimal(5,2) DEFAULT NULL,
  `total_ht_Cde` decimal(5,2) DEFAULT NULL,
  `total_ttc_Cde` decimal(5,2) DEFAULT NULL,
  `etat` varchar(20) NOT NULL,
  `prixVente` decimal(5,2) DEFAULT NULL,
  `tva` decimal(5,2) NOT NULL,
  `reduction` int(11) DEFAULT NULL,
  `id_client` int(11) NOT NULL,
  `id_commercial` int(11) NOT NULL,
  PRIMARY KEY (`id_commande`),
  UNIQUE KEY `numeroCommande` (`numeroCommande`),
  KEY `id_client` (`id_client`),
  KEY `id_commercial` (`id_commercial`),
  CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE CASCADE,
  CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`id_commercial`) REFERENCES `commercial` (`id_commercial`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (1,1475,NULL,NULL,1.00,NULL,'Expédiée',NULL,11.00,1,7,1),(2,1476,NULL,NULL,2.00,NULL,'Préparation',NULL,11.00,1,1,5),(3,1477,NULL,NULL,1.00,NULL,'Expédiée',NULL,11.00,1,7,1),(4,1478,NULL,NULL,2.00,NULL,'Expédiée',NULL,11.00,4,10,2),(5,1479,NULL,NULL,2.00,NULL,'Facturée',NULL,11.00,4,8,5),(6,1480,NULL,NULL,2.00,NULL,'Préparation',NULL,5.00,4,10,2),(7,1481,NULL,NULL,2.00,NULL,'Saisie',NULL,11.00,3,9,3),(8,1482,NULL,NULL,1.00,NULL,'Expédiée',NULL,11.00,4,2,1),(9,1483,NULL,NULL,1.00,NULL,'Annulée',NULL,5.00,4,7,1),(10,1484,NULL,NULL,1.00,NULL,'Annulée',NULL,5.00,3,6,4),(11,1485,NULL,NULL,2.00,NULL,'Annulée',NULL,11.00,4,8,5),(12,1486,NULL,NULL,2.00,NULL,'Annulée',NULL,5.00,4,4,4),(13,1487,NULL,NULL,2.00,NULL,'Annulée',NULL,11.00,3,10,2),(14,1488,NULL,NULL,1.00,NULL,'Expédiée',NULL,5.00,3,3,1),(15,1489,NULL,NULL,2.00,NULL,'Préparation',NULL,5.00,0,8,5),(16,1490,NULL,NULL,1.00,NULL,'Facturée',NULL,11.00,2,5,3),(17,1491,NULL,NULL,2.00,NULL,'Expédiée',NULL,11.00,1,1,5),(18,1492,NULL,NULL,1.00,NULL,'Saisie',NULL,11.00,1,7,1),(19,1493,NULL,NULL,2.00,NULL,'Préparation',NULL,11.00,4,4,4),(20,1494,NULL,NULL,2.00,NULL,'Facturée',NULL,11.00,3,4,2),(21,1495,NULL,NULL,2.00,NULL,'Facturée',NULL,11.00,3,10,2),(22,1496,NULL,NULL,2.00,NULL,'Saisie',NULL,5.00,2,1,5),(23,1497,NULL,NULL,1.00,NULL,'Saisie',NULL,5.00,3,2,1),(24,1498,NULL,NULL,1.00,NULL,'Expédiée',NULL,5.00,2,2,1),(25,1499,NULL,NULL,2.00,NULL,'Préparation',NULL,11.00,1,10,2);
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commercial`
--

DROP TABLE IF EXISTS `commercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commercial` (
  `id_commercial` int(11) NOT NULL AUTO_INCREMENT,
  `nomCommercial` varchar(50) NOT NULL,
  `prenomCommercial` varchar(50) NOT NULL,
  PRIMARY KEY (`id_commercial`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commercial`
--

LOCK TABLES `commercial` WRITE;
/*!40000 ALTER TABLE `commercial` DISABLE KEYS */;
INSERT INTO `commercial` VALUES (1,'de Araujo','Kennan'),(2,'Aremu','Iona'),(3,'Igbinoghene','Sasha'),(4,'Krämer','Magee'),(5,'Richter','Whilemina');
/*!40000 ALTER TABLE `commercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `date_commande_facture`
--

DROP TABLE IF EXISTS `date_commande_facture`;
/*!50001 DROP VIEW IF EXISTS `date_commande_facture`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `date_commande_facture` (
  `numeroFacture` tinyint NOT NULL,
  `dateCommande` tinyint NOT NULL,
  `dateFacture` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `facture`
--

DROP TABLE IF EXISTS `facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facture` (
  `id_facture` int(11) NOT NULL AUTO_INCREMENT,
  `numeroFacture` int(11) NOT NULL,
  `dateFacture` date NOT NULL,
  `penalite` int(11) DEFAULT NULL,
  `id_commande` int(11) NOT NULL,
  PRIMARY KEY (`id_facture`),
  UNIQUE KEY `id_commande` (`id_commande`),
  UNIQUE KEY `numeroFacture` (`numeroFacture`),
  CONSTRAINT `facture_ibfk_1` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facture`
--

LOCK TABLES `facture` WRITE;
/*!40000 ALTER TABLE `facture` DISABLE KEYS */;
INSERT INTO `facture` VALUES (1,3070,'2021-05-02',2,19),(2,3071,'2021-09-28',2,16),(3,3072,'2020-05-04',2,9),(4,3073,'2021-12-03',1,2),(5,3074,'2021-01-11',0,25),(6,3075,'2021-05-29',3,10),(7,3076,'2021-02-09',4,4),(8,3077,'2020-11-25',2,5),(9,3078,'2020-03-16',2,6),(10,3079,'2020-09-30',5,21),(11,3080,'2020-10-19',5,8),(12,3081,'2021-06-02',1,1),(13,3082,'2021-08-30',1,20);
/*!40000 ALTER TABLE `facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournisseur` (
  `id_fournisseur` int(11) NOT NULL AUTO_INCREMENT,
  `nomFournisseur` varchar(50) NOT NULL,
  `adresseFournisseur` varchar(100) NOT NULL,
  `cpFournisseur` int(11) NOT NULL,
  `villeFournisseur` varchar(50) NOT NULL,
  PRIMARY KEY (`id_fournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` VALUES (1,'Amet Foundation','168-5049 In Street',71447,'Saintes'),(2,'Cursus Vestibulum Mauris LLP','Ap #925-6430 In St.',64470,'Creil'),(3,'Dui Augue Limited','Ap #948-5948 Imperdiet, St.',42281,'Bastia'),(4,'Nunc Quisque Company','1556 Sodales Rd.',30736,'Cannes'),(5,'Phasellus Nulla LLC','1490 Elit, Street',68553,'Châlons-en-Champagne'),(6,'Ipsum Cursus Inc.','430-6548 Ultrices Ave',15438,'Vertou'),(7,'Ac Facilisis Associates','Ap #215-3549 Lobortis Street',91703,'Antibes');
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligne_commande`
--

DROP TABLE IF EXISTS `ligne_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligne_commande` (
  `id_commande` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `dateCommande` date DEFAULT NULL,
  `quantite` int(11) NOT NULL,
  PRIMARY KEY (`id_commande`,`id_produit`),
  KEY `id_produit` (`id_produit`),
  CONSTRAINT `ligne_commande_ibfk_1` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`) ON DELETE CASCADE,
  CONSTRAINT `ligne_commande_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligne_commande`
--

LOCK TABLES `ligne_commande` WRITE;
/*!40000 ALTER TABLE `ligne_commande` DISABLE KEYS */;
INSERT INTO `ligne_commande` VALUES (3,12,'2020-10-23',7),(3,14,'2020-10-23',6),(4,7,'2020-10-25',8),(5,26,'2020-10-25',2),(6,4,'2021-12-07',3),(8,3,'2021-12-07',2),(8,9,'2021-12-07',9),(9,11,'2020-01-28',3),(10,7,'2020-01-30',7),(10,12,'2020-01-30',9),(12,6,'2021-05-18',8),(12,14,'2021-05-18',9),(13,6,'2020-01-28',7),(14,3,'2020-03-19',5),(14,4,'2020-03-19',7),(14,25,'2020-03-19',8),(15,21,'2021-08-19',3),(15,23,'2021-08-19',10),(16,2,'2021-08-14',8),(16,7,'2021-08-14',7),(17,14,'2022-01-29',3),(17,15,'2022-01-29',3),(20,13,'2021-08-19',9),(21,7,'2020-09-12',1),(21,16,'2020-09-12',4),(22,5,'2021-09-05',2),(22,19,'2021-09-05',5),(23,1,'2020-02-05',10),(24,5,'2021-10-03',6),(25,6,'2021-02-16',4);
/*!40000 ALTER TABLE `ligne_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livraison`
--

DROP TABLE IF EXISTS `livraison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livraison` (
  `id_livraison` int(11) NOT NULL AUTO_INCREMENT,
  `numeroLivraison` int(11) NOT NULL,
  `dateLivraison` date DEFAULT NULL,
  `statut_livraison` bit(1) DEFAULT NULL,
  `id_commande` int(11) NOT NULL,
  PRIMARY KEY (`id_livraison`),
  UNIQUE KEY `numeroLivraison` (`numeroLivraison`),
  KEY `id_commande` (`id_commande`),
  CONSTRAINT `livraison_ibfk_1` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livraison`
--

LOCK TABLES `livraison` WRITE;
/*!40000 ALTER TABLE `livraison` DISABLE KEYS */;
INSERT INTO `livraison` VALUES (1,2261,'2020-04-24','',7),(2,2262,'2021-01-19','',5),(3,2263,'2020-02-04','',7),(4,2264,'2020-10-30','',2),(5,2265,'2020-01-03','',19),(6,2266,'2021-10-29','',9),(7,2267,'2021-07-12','',23),(8,2268,'2021-09-12','',10),(9,2269,'2021-06-25','',14),(10,2270,'2021-09-28','',22),(11,2271,'2020-07-16','',15),(12,2272,'2021-01-08','',1),(13,2273,'2020-09-25','',10),(14,2274,'2020-07-24','',11),(15,2275,'2022-01-16','',3),(16,2276,'2022-06-01','',17),(17,2277,'2020-09-12','',20),(18,2278,'2020-02-28','',12),(19,2279,'2020-10-06','',19),(20,2280,'2020-08-31','',21),(21,2281,'2021-03-29','',4),(22,2282,'2021-05-27','',8),(23,2283,'2020-06-06','',7),(24,2284,'2020-03-25','\0',14),(25,2285,'2020-04-07','',22),(26,2286,'2022-03-07','\0',17),(27,2287,'2020-09-08','',18),(28,2288,'2021-12-31','',8),(29,2289,'2021-09-30','',11),(30,2290,'2021-07-20','',9),(31,2291,'2020-11-10','',9),(32,2292,'2020-08-12','',25),(33,2293,'2020-10-22','',5),(34,2294,'2020-12-08','',22),(35,2295,'2020-03-23','',6),(36,2296,'2020-04-02','\0',14);
/*!40000 ALTER TABLE `livraison` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL AUTO_INCREMENT,
  `refProduit` int(11) NOT NULL,
  `commandeFournisseur` int(11) NOT NULL,
  `dateCommandeFournisseur` date NOT NULL,
  `prixAchat` decimal(5,2) NOT NULL,
  `quantite_cde_four` int(11) NOT NULL,
  `nomProduit` varchar(50) NOT NULL,
  `categorieProduit` varchar(20) NOT NULL,
  `souscategorieProduit` varchar(20) NOT NULL,
  `descriptionProduit` varchar(1000) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `id_fournisseur` int(11) NOT NULL,
  PRIMARY KEY (`id_produit`),
  UNIQUE KEY `refProduit` (`refProduit`),
  UNIQUE KEY `commandeFournisseur` (`commandeFournisseur`),
  KEY `id_fournisseur` (`id_fournisseur`),
  CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`id_fournisseur`) REFERENCES `fournisseur` (`id_fournisseur`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES (1,7023,363,'2020-06-21',89.00,5,'Dionaea Muscipula','Plantes','Plantes d\'intérieur','Les feuilles-pièges de cette vivace, de la famille des droséracées, agissent comme une trappe.','http://',18,3),(2,7024,364,'2021-05-25',47.00,1,'Azalée d\'intérieur','Plantes','Plantes d\'intérieur','Cet arbuste à port arrondi, de la famille des Ericacées, est proposé en potées fleuries toute l\'année','https://',24,1),(3,7025,365,'2020-08-17',8.00,7,'Cactus','Plantes','Plantes d\'intérieur',' Les cactus se distinguent des autres plantes grasses par la présence d\'aréoles, petites excroissances de la plante à partir desquelles partent en faisceaux des épines ou des glochides (petits aiguillons très fins).','https://',44,4),(4,7026,366,'2021-07-09',42.00,10,'Magna Mariobilis','Plantes','Plantes d\'extérieur','D\'une taille moyenne de 25 cm, les jeunes pousses de Magna Mariobilis peuvent atteindre une hauteur de 2m voir 2,50m si bien nourries. Pour l\'entretient: un arrosage modéré suffit, en revanche un apport en protéines est souvent nescessaire. Nul doute votre Magna Mariobilis suscitera la curiosité des petits comme des grands.','http://',36,2),(5,7027,367,'2020-06-19',108.00,6,'Mini cyclamen','Plantes','Plantes d\'extérieur','Belles couleurs vives ou pastel, unies ou panachées pour les mini-cyclamens, fleurs curieuses avec les pétales retroussés vers l\'arrière, feuillage décoratif.','https://',55,3),(6,7028,368,'2020-12-29',35.00,25,'Pâquerette pomponnette blanche','Plantes','Plantes d\'extérieur','Petites fleurs blanches, formant des pompons compacts qui s\'arrondissent en s\'épanouissant, existent en rose et rouge sous d\'autres références.','https://',13,2),(7,7029,369,'2021-09-05',68.00,20,'Boule de buis, vert Ø 40 cm','Plantes','Arbres et arbustes','Bien compacte, au feuillage réaliste parfaitement bien taillé, au port impeccable et aux coloris naturels : elle ne laissera personne indifférent où qu\'elle soit placée dans la maison, sur la véranda ou sur le balcon.','http://',48,3),(8,7030,370,'2020-05-04',122.00,30,'Euonymus japonicus \' Bravo \'','Plantes','Arbres et arbustes','Le genre Euonymus (Fusain) comprend environ 170 espèces, originaires d\'Amérique du Nord, d\'Europe, d\'Asie, d\'Afrique et d\'Australie. Euonymus japonicus (Fusain du Japon) est une espèce originaire du Japon et de Corée, introduite en Europe en 1804. \' Bravo \' est une variété horticole.','https://',19,4),(9,7031,371,'2021-01-17',8.00,8,'Aucuba japonica \'Crotonifolia\'','Plantes','Arbres et arbustes','Le genre Aucuba comprend 3 espèces originaire de Chine, du Japon et de l\'Himalaya. Aucuba japonica est l\'espèce la plus cultivée, originaire du Japon, de Formose et de Corée. \' Crotonifolia \' est une variété horticole.','http://',7,6),(10,7032,372,'2022-07-02',53.00,17,'Terrarium smart line COR001 C/ CX','Animalerie','Reptiles','Économique, mais aussi résistant qu’un modèle avec aluminium, il offre un habitat de qualité aux reptiles et amphibiens. Ce terrarium comprend l’équipement indispensable pour le bien-être de ses habitants. Un système permettant une circulation optimale de l’air, un accès sécurisé par un code, des grilles amovibles, tout est prévu pour une utilisation aisée de ce terrarium Smart Line COR001.','http://',50,2),(11,7033,373,'2021-12-02',14.00,33,'Décor pour aquarium : 4 faces','Animalerie','Reptiles','Cette décoration d\'aquarium en résine représentant une tour de pierre ornera l\'habitat de votre compagnon à écailles. Vous lui procurerez par la même occasion de véritables cachettes où il pourra se réfugier. Cette tour de pierre en résine d\'inspiration asiatique et à l\'aspect très naturel sera du meilleur effet dans votre aquarium. Dimensions : 17 x 13 cm.','https://',20,5),(12,7034,374,'2020-03-04',83.00,11,'Litière noix de coco terra 20L','Animalerie','Reptiles','Litières écologiques 100% naturelles pour l\'utilisation de substrats dans les terrariums tropicaux, secs et humides. Fabriqués à partir de fibres de coco, ils aident à contrôler la croissance des germes, absorbent et contrôlent le niveau d\'humidité à l\'intérieur du terrarium et aident à éliminer les odeurs.','http://',2,3),(13,7035,375,'2021-05-31',85.00,20,'Bloc à grignoter Crau Délice : 600g','Animalerie','Rongeurs et petits m','Les rongeurs adorent manger du foin tout au long de la journée. Les blocs à grignoter Crau Délice satisferont cette gourmandise. Ils sont fabriqués exclusivement avec du foin de Crau AOP dont la valeur nutritive élevée leur apportera tous les éléments nutritifs nécessaires à une bonne santé. Très appétissants et entièrement naturels, ces blocs à grignoter ne contiennent aucun additif ni conservateur. Faciles à utiliser, ils se posent dans la cage, dans un râtelier ou un support à légumes.','https://',16,1),(14,7036,376,'2020-04-30',44.00,10,'Maison de toilette d\'angle GM Gris pour rongeur','Animalerie','Rongeurs et petits m','Créez un espace litière à votre rongeur avec cette jolie maison de toilette d\'angle grise. Au design moderne et épuré, cette maisonnette deviendra rapidement l\'emplacement privilégié de votre rongeur pour se soulager. Dotée d\'une grille amovible, elle est en plastique et elle est facile à nettoyer. A placer dans un angle, elle se fixe facilement aux barreaux de votre cage et permet un gain de place.','https://',37,5),(15,7037,377,'2021-03-11',130.00,29,'Litière chanvre Paradisio pour rongeur : 100 litre','Animalerie','Rongeurs et petits m','La Litière chanvre Paradisio se présente en sachet de 100 litres. D\'origine 100 % naturel et biodégradable, cette litière est douce, confortable, et exempte de poussière. Elle accueillera tous vos rongeurs (hamsters, cochons d\'Inde, lapins, etc.), y compris ceux dont les voies respiratoires sont sensibles.','https://',58,7),(16,7038,378,'2022-01-26',96.00,5,'Poule Sussex','Animalerie','Animaux de la basse-','La poule Sussex possède un dos large, des cuisses musclées, un plumage bien fourni et une crête simple. Ses coloris varient : le blanc, le doré saumoné, le fauve, le brun, le gris argenté, le noir, le tricolore, le rouge herminé noir et coucou. Le blanc herminé noir et le tricolore sont les couleurs les plus répandues. C\'est une poule rustique, qui ne craint pas les intempéries.','http://',49,3),(17,7039,379,'2021-06-27',8.00,5,'Portier automatique poulailler','Animalerie','Animaux de la basse-','Portier muni d\'une sonde crépusculaire : s\'ouvre automatiquement au lever du soleil et se ferme au crépuscule grâce à unesonde crépusculaire intégrée. Ce portier électronique à piles est conçu pour sécuriser votre poulailler en motorisant la trappe d\'accès des poules. Il protège des prédateurs et nuisibles de toute intrusion dans l\'habitat pendant la phase de sommeil. Le portier pour poulailler ne nécessite aucun branchement électrique grâce à son système de fonctionnement à piles (4 piles type AA-LR6 1.5 V non incluses).','https://',35,4),(18,7040,380,'2020-12-19',88.00,10,'Poulailler Savannah 150 x 66 x 93 cm','Animalerie','Animaux de la basse-','Offrez-vous ce poulailler Savannah dans lequel vos poules se sentiront bien ! 100 % en picea abies certifié FSC, ce poulailler blanc et bois se plaira dans votre extérieur et deviendra un excellent habitat pour vos animaux de la basse cour. Pratique, fonctionnel et esthétique il est doté d\'un dortoir couvert avec une rampe. Dimensions : 150 x 66 x 93 cm.','https://',13,2),(19,7041,381,'2021-11-12',74.00,9,'Tronçoneuse TBv2000','Outillage','Motorisés','De part ses différentes qualités, la tronçoneuse Greengarden Turbo Boost ventury 2000 vous apportera entière satisfaction. Confort d\'utilisation, reglage et entretien faciles, qualité professionnelle, guide et chaine GREENGARDEN. Cylindrée 38 cm³ moteur 2 tps refroidissement à air, vitesse de rotation 3000tr/mn, longueur de guide 35.6 cm, guide et chaine Greengarden. Capacité de carburant 260 ml, ratio carburant huile 40:1, systeme de chaine anti fouet, système anti vibration, graissage de chaine auto, pas de chaine 3/8 avec reglage tension de la chaine par vis latérale','http://',41,3),(20,7042,382,'2020-09-02',68.00,4,'Tondeuse filaire AdvancedRotak 690','Outillage','Motorisés','La tondeuse filaire Advanced Rotak 690 vous garantit un grand confort acoustique, grâce à la technologie ProSilence. Son niveau sonore est de 89 dB, ce qui représente 75% de moins par rapport aux gammes classiques. Son manche repliable facilite le rangement de l\'appareil. Avec une puissance de 1800 W, elle est conçue pour les grandes surfaces, jusqu\'à 800 m². Sa largeur de coupe de 42 cm assure une tonte rapide. Un disjoncteur thermique protège le moteur et évite la surchauffe.','http://',55,5),(21,7043,383,'2020-12-13',126.00,17,'Souffleur sans fil AdvancedAir 36','Outillage','Motorisés','Le Souffleur AdvancedAir 36 est un souffleur sans fil, léger et très facile à manier. Il fonctionne et est livré avec une batterie Litihium-Ion 36 V qui est interchangeable et compatible avec les autres outils Greengarden du même voltage. Il se distingue par puissance : jusqu’à 250 km/h de soufflerie pour un volume de 100-150 m³/h ! Par ailleurs, son embout de précision permet également la collecte aisée des débris. Facile d’utilisation, il peut se tenir à une main sans douleurs ni fatigue, et muni d’une poignée antidérapante; il favorise une position confortable et un bon équilibre. Poids : 2.8kg.','http://',29,3),(22,7044,384,'2021-08-19',118.00,40,'Rateau 10 dents courbes emmanché 140cm','Outillage','A main','Ce râteau à 10 dents bénéficie de dents courbes permettant de briser les mottes après le bêchage, ainsi que d\'affiner et niveler les sols. Il est idéal pour serrer les semis, et trouvera ainsi toute son utilité dans les petits espaces comme le potager.','https://',51,5),(23,7045,385,'2022-02-02',106.00,45,'Lot 3 outils à fleurs','Outillage','A main','Ce lot de 3 outils de jardin vous sera d\'une aide précieuse pour vos travaux de jardinage. Contenant une petite pelle, une griffe et une serfouette avec poignée en bois ergonomique, vous pourrez réaliser vos travaux de jardin tout en profitant d\'un outillage de qualité vous offrant un réél confort d\'utilisation.','http://',25,4),(24,7046,386,'2020-03-12',123.00,50,'Sécateur traditionnel 23cm','Outillage','A main','Ce sécateur à coupe tirante vous propose ses lames en acier trempé pour une coupe nette et précise. Ses poignées en acier embouti vous promettent solidité et légèreté. Avec sa capacité de coupe de 25 mm, cet outil est conçu pour tous les travaux de taille.','http://',54,4),(25,7047,387,'2020-05-27',17.00,33,'Pot de fleur bébé Groot','Outillage','Accessoires','Epatez vos amis avec ce pot de fleur bébé Groot de toute beauté.','https://',38,7),(26,7048,388,'2021-04-04',87.00,16,'Filet de camouflage 4x5m 65 g/m2','Outillage','Accessoires','Filet de camouflage en polyethylène d\'environ 4x5m 65 g/m2 Maillage 10 cm x 10 cm avec liens d\'accrochage, équipé à chaque coin de liens de 100 cm de longueur Traitée imputréscible et anti-UV Utilisation de -40°C à +50C° Livré avec sac de rangement en polyethilene imprimé camouflage.','https://',38,7),(27,7049,389,'2021-01-09',132.00,24,'Etiquette en Bois et Ardoise à planter','Outillage','Accessoires','Ces étiquettes à planter vous permettront de renseigner par un simple marquage à la craie, les variétés de plantation que vous faites pousser dans votre potager. Très astucieuses, ces étiquettes à planter en ardoise et en bois apporteront un cachet à vos compositions et mettront en scène votre potager avec originalité. Dimensions : H.14,4 X l.6,1 cm. Vendues en lot de 5 étiquettes.','https://',20,5);
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `produit_fournisseur`
--

DROP TABLE IF EXISTS `produit_fournisseur`;
/*!50001 DROP VIEW IF EXISTS `produit_fournisseur`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `produit_fournisseur` (
  `id_fournisseur` tinyint NOT NULL,
  `id_produit` tinyint NOT NULL,
  `refProduit` tinyint NOT NULL,
  `commandeFournisseur` tinyint NOT NULL,
  `dateCommandeFournisseur` tinyint NOT NULL,
  `prixAchat` tinyint NOT NULL,
  `quantite_cde_four` tinyint NOT NULL,
  `nomProduit` tinyint NOT NULL,
  `categorieProduit` tinyint NOT NULL,
  `souscategorieProduit` tinyint NOT NULL,
  `descriptionProduit` tinyint NOT NULL,
  `photo` tinyint NOT NULL,
  `stock` tinyint NOT NULL,
  `nomFournisseur` tinyint NOT NULL,
  `adresseFournisseur` tinyint NOT NULL,
  `cpFournisseur` tinyint NOT NULL,
  `villeFournisseur` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'greengarden'
--
/*!50003 DROP PROCEDURE IF EXISTS `delai_moyen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delai_moyen`()
BEGIN
	drop view if exists date_commande_facture;
        create view date_commande_facture as select numeroFacture, dateCommande, dateFacture from ligne_commande join commande on ligne_commande.id_commande=commande.id_commande join facture on commande.id_commande=facture.id_commande where etat='Facturée' group by numeroFacture;
	select avg(datediff(dateFacture, dateCommande)) from date_commande_facture;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `date_commande_facture`
--

/*!50001 DROP TABLE IF EXISTS `date_commande_facture`*/;
/*!50001 DROP VIEW IF EXISTS `date_commande_facture`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `date_commande_facture` AS select `facture`.`numeroFacture` AS `numeroFacture`,`ligne_commande`.`dateCommande` AS `dateCommande`,`facture`.`dateFacture` AS `dateFacture` from ((`ligne_commande` join `commande` on(`ligne_commande`.`id_commande` = `commande`.`id_commande`)) join `facture` on(`commande`.`id_commande` = `facture`.`id_commande`)) where `commande`.`etat` = 'Facturée' group by `facture`.`numeroFacture` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `produit_fournisseur`
--

/*!50001 DROP TABLE IF EXISTS `produit_fournisseur`*/;
/*!50001 DROP VIEW IF EXISTS `produit_fournisseur`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `produit_fournisseur` AS select `produit`.`id_fournisseur` AS `id_fournisseur`,`produit`.`id_produit` AS `id_produit`,`produit`.`refProduit` AS `refProduit`,`produit`.`commandeFournisseur` AS `commandeFournisseur`,`produit`.`dateCommandeFournisseur` AS `dateCommandeFournisseur`,`produit`.`prixAchat` AS `prixAchat`,`produit`.`quantite_cde_four` AS `quantite_cde_four`,`produit`.`nomProduit` AS `nomProduit`,`produit`.`categorieProduit` AS `categorieProduit`,`produit`.`souscategorieProduit` AS `souscategorieProduit`,`produit`.`descriptionProduit` AS `descriptionProduit`,`produit`.`photo` AS `photo`,`produit`.`stock` AS `stock`,`fournisseur`.`nomFournisseur` AS `nomFournisseur`,`fournisseur`.`adresseFournisseur` AS `adresseFournisseur`,`fournisseur`.`cpFournisseur` AS `cpFournisseur`,`fournisseur`.`villeFournisseur` AS `villeFournisseur` from (`produit` join `fournisseur` on(`produit`.`id_fournisseur` = `fournisseur`.`id_fournisseur`)) where `produit`.`id_fournisseur` = `fournisseur`.`id_fournisseur` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-15 18:49:42
