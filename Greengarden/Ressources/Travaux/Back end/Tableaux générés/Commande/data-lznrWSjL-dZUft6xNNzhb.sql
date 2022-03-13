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

INSERT INTO `Commande` (`numeroCommande`,`etat`,`tva`,`reduction`,`id_client`,`id_commercial`)
VALUES
  (1475,"Expédiée","11",1,7,1),
  (1476,"Préparation","11",1,1,5),
  (1477,"Annulée","11",1,7,1),
  (1478,"Annulée","11",4,10,2),
  (1479,"Annulée","11",4,8,5),
  (1480,"Préparation","5",4,10,2),
  (1481,"Saisie","11",3,9,3),
  (1482,"Annulée","11",4,2,1),
  (1483,"Annulée","5",4,7,1),
  (1484,"Annulée","5",3,6,4),
  (1485,"Annulée","11",4,8,5),
  (1486,"Annulée","5",4,4,4),
  (1487,"Annulée","11",3,10,2),
  (1488,"Expédiée","5",3,3,1),
  (1489,"Préparation","5",0,8,5),
  (1490,"Annulée","11",2,5,3),
  (1491,"Expédiée","11",1,1,5),
  (1492,"Saisie","11",1,7,1),
  (1493,"Préparation","11",4,4,4),
  (1494,"Annulée","11",3,4,2),
  (1495,"Facturée","11",3,10,2),
  (1496,"Saisie","5",2,1,5),
  (1497,"Saisie","5",3,2,1),
  (1498,"Annulée","5",2,2,1),
  (1499,"Préparation","11",1,10,2);
