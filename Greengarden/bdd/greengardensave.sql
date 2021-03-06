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
INSERT INTO `client` VALUES (1,100,'Professionel','Mrs','Marsh','Gillian','et.arcu@protonmail.ca','07 08 35 74 28','72 Nulla Avenue',64827,'Nanterre','72 Nulla Avenue',64827,'Nanterre','Dif','1.30',5),(2,101,'Particulier','Mr.','Patrick','Chester','orci.in.consequat@hotmail.net','03 69 20 39 13','6 Elit, Avenue',33741,'Reims','6 Elit, Avenue',33741,'Reims','Cde','1.50',1),(3,102,'Particulier','Mrs','Navarro','Gabriel','a.facilisis.non@yahoo.ca','03 35 18 94 37','P.O. Box 201, 429 Ut, Av.',78350,'Bastia','243-4326 Sit Avenue',13691,'Ch??lons-en-Champagne','Cde','1.50',1),(4,103,'Professionel','Mrs','Gross','Erin','vel@aol.couk','03 40 65 52 88','17 Urna. Ave',1846,'H??rouville-Saint-Clair','17 Urna. Ave',1846,'H??rouville-Saint-Clair','Dif','1.30',4),(5,104,'Particulier','Mrs','Gomez','Wendy','nunc.ullamcorper@hotmail.couk','07 47 52 27 31','314-4006 Sem Avenue',22540,'Poitiers','P.O. Box 906, 7053 Cras Av.',11550,'Laon','Cde','1.50',3),(6,105,'Particulier','Mr.','Clarke','Felicia','mauris@hotmail.ca','02 34 60 23 41','Ap #838-9409 Sed St.',86426,'B??gles','Ap #369-7261 Eu, Road',12143,'Compi??gne','Cde','1.50',4),(7,106,'Particulier','Mrs','Gentry','Gretchen','mauris@google.org','05 45 92 91 16','733-8837 Facilisis. Rd.',30816,'Saint-Louis','785-248 Cras Av.',25577,'Ajaccio','Cde','1.50',1),(8,107,'Professionel','Mr.','Forbes','Sebastian','feugiat.metus@icloud.com','08 14 79 97 88','28 Sem Rd.',91617,'Montauban','39 Placerat, Rd.',73485,'??pernay','Dif','1.30',5),(9,108,'Professionel','Mrs','Gould','Malcolm','egestas.nunc@protonmail.ca','03 46 46 01 33','92 Ipsum Street',81256,'Saint-Louis','92 Ipsum Street',81256,'Saint-Louis','Dif','1.30',3),(10,109,'Professionel','Mrs','Rasmussen','Elton','phasellus.fermentum@icloud.couk','06 22 87 98 78','9 Sagittis Rd.',47882,'Moulins','9 Sagittis Rd.',47882,'Moulins','Dif','1.30',2);
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
INSERT INTO `commande` VALUES (1,1475,NULL,NULL,1.00,NULL,'Exp??di??e',NULL,11.00,1,7,1),(2,1476,NULL,NULL,2.00,NULL,'Pr??paration',NULL,11.00,1,1,5),(3,1477,NULL,NULL,1.00,NULL,'Exp??di??e',NULL,11.00,1,7,1),(4,1478,NULL,NULL,2.00,NULL,'Exp??di??e',NULL,11.00,4,10,2),(5,1479,NULL,NULL,2.00,NULL,'Factur??e',NULL,11.00,4,8,5),(6,1480,NULL,NULL,2.00,NULL,'Pr??paration',NULL,5.00,4,10,2),(7,1481,NULL,NULL,2.00,NULL,'Saisie',NULL,11.00,3,9,3),(8,1482,NULL,NULL,1.00,NULL,'Exp??di??e',NULL,11.00,4,2,1),(9,1483,NULL,NULL,1.00,NULL,'Annul??e',NULL,5.00,4,7,1),(10,1484,NULL,NULL,1.00,NULL,'Annul??e',NULL,5.00,3,6,4),(11,1485,NULL,NULL,2.00,NULL,'Annul??e',NULL,11.00,4,8,5),(12,1486,NULL,NULL,2.00,NULL,'Annul??e',NULL,5.00,4,4,4),(13,1487,NULL,NULL,2.00,NULL,'Annul??e',NULL,11.00,3,10,2),(14,1488,NULL,NULL,1.00,NULL,'Exp??di??e',NULL,5.00,3,3,1),(15,1489,NULL,NULL,2.00,NULL,'Pr??paration',NULL,5.00,0,8,5),(16,1490,NULL,NULL,1.00,NULL,'Factur??e',NULL,11.00,2,5,3),(17,1491,NULL,NULL,2.00,NULL,'Exp??di??e',NULL,11.00,1,1,5),(18,1492,NULL,NULL,1.00,NULL,'Saisie',NULL,11.00,1,7,1),(19,1493,NULL,NULL,2.00,NULL,'Pr??paration',NULL,11.00,4,4,4),(20,1494,NULL,NULL,2.00,NULL,'Factur??e',NULL,11.00,3,4,2),(21,1495,NULL,NULL,2.00,NULL,'Factur??e',NULL,11.00,3,10,2),(22,1496,NULL,NULL,2.00,NULL,'Saisie',NULL,5.00,2,1,5),(23,1497,NULL,NULL,1.00,NULL,'Saisie',NULL,5.00,3,2,1),(24,1498,NULL,NULL,1.00,NULL,'Exp??di??e',NULL,5.00,2,2,1),(25,1499,NULL,NULL,2.00,NULL,'Pr??paration',NULL,11.00,1,10,2);
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
INSERT INTO `commercial` VALUES (1,'de Araujo','Kennan'),(2,'Aremu','Iona'),(3,'Igbinoghene','Sasha'),(4,'Kr??mer','Magee'),(5,'Richter','Whilemina');
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
INSERT INTO `fournisseur` VALUES (1,'Amet Foundation','168-5049 In Street',71447,'Saintes'),(2,'Cursus Vestibulum Mauris LLP','Ap #925-6430 In St.',64470,'Creil'),(3,'Dui Augue Limited','Ap #948-5948 Imperdiet, St.',42281,'Bastia'),(4,'Nunc Quisque Company','1556 Sodales Rd.',30736,'Cannes'),(5,'Phasellus Nulla LLC','1490 Elit, Street',68553,'Ch??lons-en-Champagne'),(6,'Ipsum Cursus Inc.','430-6548 Ultrices Ave',15438,'Vertou'),(7,'Ac Facilisis Associates','Ap #215-3549 Lobortis Street',91703,'Antibes');
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
INSERT INTO `produit` VALUES (1,7023,363,'2020-06-21',89.00,5,'Dionaea Muscipula','Plantes','Plantes d\'int??rieur','Les feuilles-pi??ges de cette vivace, de la famille des dros??rac??es, agissent comme une trappe.','http://',18,3),(2,7024,364,'2021-05-25',47.00,1,'Azal??e d\'int??rieur','Plantes','Plantes d\'int??rieur','Cet arbuste ?? port arrondi, de la famille des Ericac??es, est propos?? en pot??es fleuries toute l\'ann??e','https://',24,1),(3,7025,365,'2020-08-17',8.00,7,'Cactus','Plantes','Plantes d\'int??rieur',' Les cactus se distinguent des autres plantes grasses par la pr??sence d\'ar??oles, petites excroissances de la plante ?? partir desquelles partent en faisceaux des ??pines ou des glochides (petits aiguillons tr??s fins).','https://',44,4),(4,7026,366,'2021-07-09',42.00,10,'Magna Mariobilis','Plantes','Plantes d\'ext??rieur','D\'une taille moyenne de 25 cm, les jeunes pousses de Magna Mariobilis peuvent atteindre une hauteur de 2m voir 2,50m si bien nourries. Pour l\'entretient: un arrosage mod??r?? suffit, en revanche un apport en prot??ines est souvent nescessaire. Nul doute votre Magna Mariobilis suscitera la curiosit?? des petits comme des grands.','http://',36,2),(5,7027,367,'2020-06-19',108.00,6,'Mini cyclamen','Plantes','Plantes d\'ext??rieur','Belles couleurs vives ou pastel, unies ou panach??es pour les mini-cyclamens, fleurs curieuses avec les p??tales retrouss??s vers l\'arri??re, feuillage d??coratif.','https://',55,3),(6,7028,368,'2020-12-29',35.00,25,'P??querette pomponnette blanche','Plantes','Plantes d\'ext??rieur','Petites fleurs blanches, formant des pompons compacts qui s\'arrondissent en s\'??panouissant, existent en rose et rouge sous d\'autres r??f??rences.','https://',13,2),(7,7029,369,'2021-09-05',68.00,20,'Boule de buis, vert ?? 40 cm','Plantes','Arbres et arbustes','Bien compacte, au feuillage r??aliste parfaitement bien taill??, au port impeccable et aux coloris naturels : elle ne laissera personne indiff??rent o?? qu\'elle soit plac??e dans la maison, sur la v??randa ou sur le balcon.','http://',48,3),(8,7030,370,'2020-05-04',122.00,30,'Euonymus japonicus \' Bravo \'','Plantes','Arbres et arbustes','Le genre Euonymus (Fusain) comprend environ 170 esp??ces, originaires d\'Am??rique du Nord, d\'Europe, d\'Asie, d\'Afrique et d\'Australie. Euonymus japonicus (Fusain du Japon) est une esp??ce originaire du Japon et de Cor??e, introduite en Europe en 1804. \' Bravo \' est une vari??t?? horticole.','https://',19,4),(9,7031,371,'2021-01-17',8.00,8,'Aucuba japonica \'Crotonifolia\'','Plantes','Arbres et arbustes','Le genre Aucuba comprend 3 esp??ces originaire de Chine, du Japon et de l\'Himalaya. Aucuba japonica est l\'esp??ce la plus cultiv??e, originaire du Japon, de Formose et de Cor??e. \' Crotonifolia \' est une vari??t?? horticole.','http://',7,6),(10,7032,372,'2022-07-02',53.00,17,'Terrarium smart line COR001 C/ CX','Animalerie','Reptiles','??conomique, mais aussi r??sistant qu???un mod??le avec aluminium, il offre un habitat de qualit?? aux reptiles et amphibiens. Ce terrarium comprend l?????quipement indispensable pour le bien-??tre de ses habitants. Un syst??me permettant une circulation optimale de l???air, un acc??s s??curis?? par un code, des grilles amovibles, tout est pr??vu pour une utilisation ais??e de ce terrarium Smart Line COR001.','http://',50,2),(11,7033,373,'2021-12-02',14.00,33,'D??cor pour aquarium : 4 faces','Animalerie','Reptiles','Cette d??coration d\'aquarium en r??sine repr??sentant une tour de pierre ornera l\'habitat de votre compagnon ?? ??cailles. Vous lui procurerez par la m??me occasion de v??ritables cachettes o?? il pourra se r??fugier. Cette tour de pierre en r??sine d\'inspiration asiatique et ?? l\'aspect tr??s naturel sera du meilleur effet dans votre aquarium. Dimensions : 17 x 13 cm.','https://',20,5),(12,7034,374,'2020-03-04',83.00,11,'Liti??re noix de coco terra 20L','Animalerie','Reptiles','Liti??res ??cologiques 100% naturelles pour l\'utilisation de substrats dans les terrariums tropicaux, secs et humides. Fabriqu??s ?? partir de fibres de coco, ils aident ?? contr??ler la croissance des germes, absorbent et contr??lent le niveau d\'humidit?? ?? l\'int??rieur du terrarium et aident ?? ??liminer les odeurs.','http://',2,3),(13,7035,375,'2021-05-31',85.00,20,'Bloc ?? grignoter Crau D??lice : 600g','Animalerie','Rongeurs et petits m','Les rongeurs adorent manger du foin tout au long de la journ??e. Les blocs ?? grignoter Crau D??lice satisferont cette gourmandise. Ils sont fabriqu??s exclusivement avec du foin de Crau AOP dont la valeur nutritive ??lev??e leur apportera tous les ??l??ments nutritifs n??cessaires ?? une bonne sant??. Tr??s app??tissants et enti??rement naturels, ces blocs ?? grignoter ne contiennent aucun additif ni conservateur. Faciles ?? utiliser, ils se posent dans la cage, dans un r??telier ou un support ?? l??gumes.','https://',16,1),(14,7036,376,'2020-04-30',44.00,10,'Maison de toilette d\'angle GM Gris pour rongeur','Animalerie','Rongeurs et petits m','Cr??ez un espace liti??re ?? votre rongeur avec cette jolie maison de toilette d\'angle grise. Au design moderne et ??pur??, cette maisonnette deviendra rapidement l\'emplacement privil??gi?? de votre rongeur pour se soulager. Dot??e d\'une grille amovible, elle est en plastique et elle est facile ?? nettoyer. A placer dans un angle, elle se fixe facilement aux barreaux de votre cage et permet un gain de place.','https://',37,5),(15,7037,377,'2021-03-11',130.00,29,'Liti??re chanvre Paradisio pour rongeur : 100 litre','Animalerie','Rongeurs et petits m','La Liti??re chanvre Paradisio se pr??sente en sachet de 100 litres. D\'origine 100 % naturel et biod??gradable, cette liti??re est douce, confortable, et exempte de poussi??re. Elle accueillera tous vos rongeurs (hamsters, cochons d\'Inde, lapins, etc.), y compris ceux dont les voies respiratoires sont sensibles.','https://',58,7),(16,7038,378,'2022-01-26',96.00,5,'Poule Sussex','Animalerie','Animaux de la basse-','La poule Sussex poss??de un dos large, des cuisses muscl??es, un plumage bien fourni et une cr??te simple. Ses coloris varient : le blanc, le dor?? saumon??, le fauve, le brun, le gris argent??, le noir, le tricolore, le rouge hermin?? noir et coucou. Le blanc hermin?? noir et le tricolore sont les couleurs les plus r??pandues. C\'est une poule rustique, qui ne craint pas les intemp??ries.','http://',49,3),(17,7039,379,'2021-06-27',8.00,5,'Portier automatique poulailler','Animalerie','Animaux de la basse-','Portier muni d\'une sonde cr??pusculaire : s\'ouvre automatiquement au lever du soleil et se ferme au cr??puscule gr??ce ?? unesonde cr??pusculaire int??gr??e. Ce portier ??lectronique ?? piles est con??u pour s??curiser votre poulailler en motorisant la trappe d\'acc??s des poules. Il prot??ge des pr??dateurs et nuisibles de toute intrusion dans l\'habitat pendant la phase de sommeil. Le portier pour poulailler ne n??cessite aucun branchement ??lectrique gr??ce ?? son syst??me de fonctionnement ?? piles (4 piles type AA-LR6 1.5 V non incluses).','https://',35,4),(18,7040,380,'2020-12-19',88.00,10,'Poulailler Savannah 150 x 66 x 93 cm','Animalerie','Animaux de la basse-','Offrez-vous ce poulailler Savannah dans lequel vos poules se sentiront bien ! 100 % en picea abies certifi?? FSC, ce poulailler blanc et bois se plaira dans votre ext??rieur et deviendra un excellent habitat pour vos animaux de la basse cour. Pratique, fonctionnel et esth??tique il est dot?? d\'un dortoir couvert avec une rampe. Dimensions : 150 x 66 x 93 cm.','https://',13,2),(19,7041,381,'2021-11-12',74.00,9,'Tron??oneuse TBv2000','Outillage','Motoris??s','De part ses diff??rentes qualit??s, la tron??oneuse Greengarden Turbo Boost ventury 2000 vous apportera enti??re satisfaction. Confort d\'utilisation, reglage et entretien faciles, qualit?? professionnelle, guide et chaine GREENGARDEN. Cylindr??e 38 cm?? moteur 2 tps refroidissement ?? air, vitesse de rotation 3000tr/mn, longueur de guide 35.6 cm, guide et chaine Greengarden. Capacit?? de carburant 260 ml, ratio carburant huile 40:1, systeme de chaine anti fouet, syst??me anti vibration, graissage de chaine auto, pas de chaine 3/8 avec reglage tension de la chaine par vis lat??rale','http://',41,3),(20,7042,382,'2020-09-02',68.00,4,'Tondeuse filaire AdvancedRotak 690','Outillage','Motoris??s','La tondeuse filaire Advanced Rotak 690 vous garantit un grand confort acoustique, gr??ce ?? la technologie ProSilence. Son niveau sonore est de 89 dB, ce qui repr??sente 75% de moins par rapport aux gammes classiques. Son manche repliable facilite le rangement de l\'appareil. Avec une puissance de 1800 W, elle est con??ue pour les grandes surfaces, jusqu\'?? 800 m??. Sa largeur de coupe de 42 cm assure une tonte rapide. Un disjoncteur thermique prot??ge le moteur et ??vite la surchauffe.','http://',55,5),(21,7043,383,'2020-12-13',126.00,17,'Souffleur sans fil AdvancedAir 36','Outillage','Motoris??s','Le Souffleur AdvancedAir 36 est un souffleur sans fil, l??ger et tr??s facile ?? manier. Il fonctionne et est livr?? avec une batterie Litihium-Ion 36 V qui est interchangeable et compatible avec les autres outils Greengarden du m??me voltage. Il se distingue par puissance : jusqu????? 250 km/h de soufflerie pour un volume de 100-150 m??/h ! Par ailleurs, son embout de pr??cision permet ??galement la collecte ais??e des d??bris. Facile d???utilisation, il peut se tenir ?? une main sans douleurs ni fatigue, et muni d???une poign??e antid??rapante; il favorise une position confortable et un bon ??quilibre. Poids : 2.8kg.','http://',29,3),(22,7044,384,'2021-08-19',118.00,40,'Rateau 10 dents courbes emmanch?? 140cm','Outillage','A main','Ce r??teau ?? 10 dents b??n??ficie de dents courbes permettant de briser les mottes apr??s le b??chage, ainsi que d\'affiner et niveler les sols. Il est id??al pour serrer les semis, et trouvera ainsi toute son utilit?? dans les petits espaces comme le potager.','https://',51,5),(23,7045,385,'2022-02-02',106.00,45,'Lot 3 outils ?? fleurs','Outillage','A main','Ce lot de 3 outils de jardin vous sera d\'une aide pr??cieuse pour vos travaux de jardinage. Contenant une petite pelle, une griffe et une serfouette avec poign??e en bois ergonomique, vous pourrez r??aliser vos travaux de jardin tout en profitant d\'un outillage de qualit?? vous offrant un r????l confort d\'utilisation.','http://',25,4),(24,7046,386,'2020-03-12',123.00,50,'S??cateur traditionnel 23cm','Outillage','A main','Ce s??cateur ?? coupe tirante vous propose ses lames en acier tremp?? pour une coupe nette et pr??cise. Ses poign??es en acier embouti vous promettent solidit?? et l??g??ret??. Avec sa capacit?? de coupe de 25 mm, cet outil est con??u pour tous les travaux de taille.','http://',54,4),(25,7047,387,'2020-05-27',17.00,33,'Pot de fleur b??b?? Groot','Outillage','Accessoires','Epatez vos amis avec ce pot de fleur b??b?? Groot de toute beaut??.','https://',38,7),(26,7048,388,'2021-04-04',87.00,16,'Filet de camouflage 4x5m 65 g/m2','Outillage','Accessoires','Filet de camouflage en polyethyl??ne d\'environ 4x5m 65 g/m2 Maillage 10 cm x 10 cm avec liens d\'accrochage, ??quip?? ?? chaque coin de liens de 100 cm de longueur Trait??e imputr??scible et anti-UV Utilisation de -40??C ?? +50C?? Livr?? avec sac de rangement en polyethilene imprim?? camouflage.','https://',38,7),(27,7049,389,'2021-01-09',132.00,24,'Etiquette en Bois et Ardoise ?? planter','Outillage','Accessoires','Ces ??tiquettes ?? planter vous permettront de renseigner par un simple marquage ?? la craie, les vari??t??s de plantation que vous faites pousser dans votre potager. Tr??s astucieuses, ces ??tiquettes ?? planter en ardoise et en bois apporteront un cachet ?? vos compositions et mettront en sc??ne votre potager avec originalit??. Dimensions : H.14,4 X l.6,1 cm. Vendues en lot de 5 ??tiquettes.','https://',20,5);
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
        create view date_commande_facture as select numeroFacture, dateCommande, dateFacture from ligne_commande join commande on ligne_commande.id_commande=commande.id_commande join facture on commande.id_commande=facture.id_commande where etat='Factur??e' group by numeroFacture;
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
/*!50001 VIEW `date_commande_facture` AS select `facture`.`numeroFacture` AS `numeroFacture`,`ligne_commande`.`dateCommande` AS `dateCommande`,`facture`.`dateFacture` AS `dateFacture` from ((`ligne_commande` join `commande` on(`ligne_commande`.`id_commande` = `commande`.`id_commande`)) join `facture` on(`commande`.`id_commande` = `facture`.`id_commande`)) where `commande`.`etat` = 'Factur??e' group by `facture`.`numeroFacture` */;
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
