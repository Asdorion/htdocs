DROP TABLE IF EXISTS `Commercial`;

CREATE TABLE `Commercial` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `nomCommercial` varchar(255) default NULL,
  `prenomCommercial` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `Commercial` (`nomCommercial`,`prenomCommercial`)
VALUES
  ("de Araujo","Kennan"),
  ("Aremu","Iona"),
  ("Igbinoghene","Sasha"),
  ("Krämer","Magee"),
  ("Richter","Whilemina");
