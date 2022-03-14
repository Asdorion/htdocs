DROP TABLE IF EXISTS `Client`;

CREATE TABLE `Client` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `refClient` mediumint,
  `categorieClient` varchar(3) default NULL,
  `civilite` varchar(3) default NULL,
  `nomClient` varchar(50) default NULL,
  `prenomClient` varchar(50) default NULL,
  `mail` varchar(50) default NULL,
  `tel` varchar(10) default NULL,
  `addressLivraison` varchar(100) default NULL,
  `cpLivraison` INT default NULL,
  `villeLivraison` varchar(50),
  `addressFacturation` varchar(100) default NULL,
  `cpFacturation` int default NULL,
  `villeFacturation` varchar(50),
  `coefficient` decimal (2,2) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `Client` (`refClient`,`categorieClient`,`civilite`,`nomClient`,`prenomClient`,`mail`,`tel`,`adresseLivraison`,`cpLivraison`,`villeLivraison`,`adresseFacturation`,`cpFacturation`,`villeFacturation`,`coefficient`,`id_commercial`)
VALUES
  (100,"Professionel","Mrs.","Marsh","Gillian","et.arcu@protonmail.ca","07 08 35 74 28","72 Nulla Avenue","64827","Nanterre","72 Nulla Avenue","64827","Nanterre","1.48", "5"),
  (101,"Particulier","Mr.","Patrick","Chester","orci.in.consequat@hotmail.net","03 69 20 39 13","6 Elit, Avenue","33741","Reims","6 Elit, Avenue","33741","Reims","1.44", "1"),
  (102,"Particulier","Mrs.","Navarro","Gabriel","a.facilisis.non@yahoo.ca","03 35 18 94 37","P.O. Box 201, 429 Ut, Av.","78350","Bastia","243-4326 Sit Avenue","13691","Châlons-en-Champagne","1.51", "1"),
  (103,"Professionel","Mrs.","Gross","Erin","vel@aol.couk","03 40 65 52 88","17 Urna. Ave","01846","Hérouville-Saint-Clair","17 Urna. Ave","01846","Hérouville-Saint-Clair","1.32", "4"),
  (104,"Particulier","Mrs.","Gomez","Wendy","nunc.ullamcorper@hotmail.couk","07 47 52 27 31","314-4006 Sem Avenue","22540","Poitiers","P.O. Box 906, 7053 Cras Av.","11550","Laon","1.31","3"),
  (105,"Particulier","Mr.","Clarke","Felicia","mauris@hotmail.ca","02 34 60 23 41","Ap #838-9409 Sed St.","86426","Bègles","Ap #369-7261 Eu, Road","12143","Compiègne","1.35","4"),
  (106,"Particulier","Mrs.","Gentry","Gretchen","mauris@google.org","05 45 92 91 16","733-8837 Facilisis. Rd.","30816","Saint-Louis","785-248 Cras Av.","25577","Ajaccio","1.40","1"),
  (107,"Professionel","Mr.","Forbes","Sebastian","feugiat.metus@icloud.com","08 14 79 97 88","28 Sem Rd.","91617","Montauban","39 Placerat, Rd.","73485","Épernay","1.44","5"),
  (108,"Professionel","Mrs.","Gould","Malcolm","egestas.nunc@protonmail.ca","03 46 46 01 33","92 Ipsum Street","81256","Saint-Louis","92 Ipsum Street","81256","Saint-Louis","1.50","3"),
  (109,"Professionel","Mrs.","Rasmussen","Elton","phasellus.fermentum@icloud.couk","06 22 87 98 78","9 Sagittis Rd.","47882","Moulins","9 Sagittis Rd.","47882","Moulins","1.32", "2");
