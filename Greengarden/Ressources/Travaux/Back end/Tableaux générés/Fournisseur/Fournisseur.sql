DROP TABLE IF EXISTS `Fournisseur`;

CREATE TABLE `Fournisseur` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `nomFournisseur` varchar(255),
  `adresseFournisseur` varchar(255) default NULL,
  `cpFournisseur` varchar(10) default NULL,
  `villeFournisseur` varchar(255),
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `Fournisseur` (`nomFournisseur`,`adresseFournisseur`,`cpFournisseur`,`villeFournisseur`)
VALUES
  ("Amet Foundation","168-5049 In Street","71447","Saintes"),
  ("Cursus Vestibulum Mauris LLP","Ap #925-6430 In St.","64470","Creil"),
  ("Dui Augue Limited","Ap #948-5948 Imperdiet, St.","42281","Bastia"),
  ("Nunc Quisque Company","1556 Sodales Rd.","30736","Cannes"),
  ("Phasellus Nulla LLC","1490 Elit, Street","68553","Châlons-en-Champagne"),
  ("Ipsum Cursus Inc.","430-6548 Ultrices Ave","15438","Vertou"),
  ("Ac Facilisis Associates","Ap #215-3549 Lobortis Street","91703","Antibes");
