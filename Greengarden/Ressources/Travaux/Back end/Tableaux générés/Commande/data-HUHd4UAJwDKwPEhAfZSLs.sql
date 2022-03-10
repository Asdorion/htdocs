DROP TABLE IF EXISTS `Commande`;

CREATE TABLE `Commande` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `numeroCommande` mediumint,
  `etat` TEXT default NULL,
  `tva` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `Commande` (`numeroCommande`,`etat`,`tva`)
VALUES
  (1475,"Expédiée","5"),
  (1476,"Expédiée","11"),
  (1477,"Annulée","5"),
  (1478,"Expédiée","11"),
  (1479,"Saisie","5"),
  (1480,"Annulée","11"),
  (1481,"Préparation","11"),
  (1482,"Préparation","11"),
  (1483,"Facturée","5"),
  (1484,"Préparation","5"),
  (1485,"Préparation","11"),
  (1486,"Préparation","5"),
  (1487,"Expédiée","5"),
  (1488,"Préparation","11"),
  (1489,"Préparation","5"),
  (1490,"Expédiée","5"),
  (1491,"Expédiée","5"),
  (1492,"Expédiée","11"),
  (1493,"Préparation","11"),
  (1494,"Préparation","11"),
  (1495,"Préparation","11"),
  (1496,"Préparation","5"),
  (1497,"Expédiée","5"),
  (1498,"Expédiée","11"),
  (1499,"Saisie","5");
