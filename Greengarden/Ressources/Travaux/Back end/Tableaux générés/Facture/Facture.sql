DROP TABLE IF EXISTS `Facture`;

CREATE TABLE `Facture` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `numeroFacture` mediumint,
  `dateFacture` varchar(255),
  `penalite` mediumint default NULL,
  `id_commande` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `Facture` (`numeroFacture`,`dateFacture`,`penalite`,`id_commande`)
VALUES
  (3070,"2021/05/02",2,19),
  (3071,"2020/12/28",2,11),
  (3072,"2020/05/04",2,9),
  (3073,"2021/12/03",1,2),
  (3074,"2021/01/11",0,25),
  (3075,"2021/05/29",3,10),
  (3076,"2021/02/09",4,4),
  (3077,"2022/01/25",2,5),
  (3078,"2020/03/16",2,6),
  (3079,"2020/03/11",5,3),
  (3080,"2020/10/19",5,8),
  (3081,"2021/06/02",1,1),
  (3082,"2021/08/03",1,20);
