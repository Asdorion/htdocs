DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `dateCommande` varchar(255),
  `quantite` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`dateCommande`,`quantite`)
VALUES
  ("01/10/2022",9),
  ("02/26/2020",8),
  ("09/25/2021",8),
  ("09/03/2020",8),
  ("02/07/2022",6),
  ("07/29/2020",9),
  ("12/13/2021",7),
  ("06/29/2020",2),
  ("02/17/2022",1),
  ("05/23/2021",2),
  ("05/01/2021",9),
  ("08/11/2021",3),
  ("06/10/2021",8),
  ("02/16/2022",9),
  ("03/19/2020",6),
  ("02/16/2021",2),
  ("03/31/2020",8),
  ("04/11/2021",9),
  ("04/26/2021",3),
  ("05/10/2020",2),
  ("05/02/2020",1),
  ("03/04/2021",6),
  ("09/24/2021",9),
  ("01/29/2021",3),
  ("02/15/2020",10),
  ("04/12/2020",1),
  ("10/30/2021",5),
  ("02/25/2021",5),
  ("10/14/2020",1),
  ("11/23/2021",8),
  ("02/25/2020",3),
  ("02/23/2021",5),
  ("02/22/2021",7),
  ("12/12/2020",9),
  ("07/25/2021",1),
  ("12/08/2020",4),
  ("02/23/2020",6),
  ("07/16/2021",3),
  ("12/19/2020",7),
  ("11/27/2021",6),
  ("02/14/2022",10),
  ("06/21/2020",3),
  ("05/16/2020",5),
  ("04/03/2020",9),
  ("10/06/2020",2),
  ("07/30/2021",2),
  ("01/14/2021",2),
  ("03/27/2020",6),
  ("07/16/2020",10),
  ("08/10/2020",7);
