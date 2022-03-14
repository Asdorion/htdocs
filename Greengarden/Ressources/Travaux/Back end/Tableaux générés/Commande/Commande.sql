DROP TABLE IF EXISTS `Commande`;

CREATE TABLE `Commande` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `numeroCommande` mediumint,
  `etat` TEXT default NULL,
  `tva` varchar(255) default NULL,
  `reduction` mediumint default NULL,
  `id_client` mediumint default NULL,
  `id_commercial` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `Commande` (`numeroCommande`,`total_ht_Cde`,`etat`,`tva`,`reduction`,`id_client`,`id_commercial`)
VALUES
  (1475,1,"Expédiée","11",1,7,1),
  (1476,2,"Préparation","11",1,1,5),
  (1477,1,"Expédiée","11",1,7,1),
  (1478,2,"Expédiée","11",4,10,2),
  (1479,2,"Facturée","11",4,8,5),
  (1480,2,"Préparation","5",4,10,2),
  (1481,2,"Saisie","11",3,9,3),
  (1482,1,"Expédiée","11",4,2,1),
  (1483,1,"Annulée","5",4,7,1),
  (1484,1,"Annulée","5",3,6,4),
  (1485,2,"Annulée","11",4,8,5),
  (1486,2,"Annulée","5",4,4,4),
  (1487,2,"Annulée","11",3,10,2),
  (1488,1,"Expédiée","5",3,3,1),
  (1489,2,"Préparation","5",0,8,5),
  (1490,1,"Facturée","11",2,5,3),
  (1491,2,"Expédiée","11",1,1,5),
  (1492,1,"Saisie","11",1,7,1),
  (1493,2,"Préparation","11",4,4,4),
  (1494,2,"Facturée","11",3,4,2),
  (1495,2,"Facturée","11",3,10,2),
  (1496,2,"Saisie","5",2,1,5),
  (1497,1,"Saisie","5",3,2,1),
  (1498,1,"Expédiée","5",2,2,1),
  (1499,2,"Préparation","11",1,10,2);
