DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `refProduit` mediumint,
  `commandeFournisseur` mediumint,
  `dateCommaandeFournisseur` varchar(255),
  `prixAchat` mediumint default NULL,
  `nomProduit` TEXT default NULL,
  `categorieProduit` TEXT default NULL,
  `souscategorieProduit` TEXT default NULL,
  `descriptiont` TEXT default NULL,
  `photo` varchar(255),
  `stock` mediumint default NULL,
  `id_fournisseur` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `Produit` (`refProduit`,`commandeFournisseur`,`dateCommandeFournisseur`,`prixAchat`,`nomProduit`,`categorieProduit`,`souscategorieProduit`,`descriptionProduit`,`photo`,`stock`,`id_fournisseur`)
VALUES
  (7023,363,"2020/21/06",89,"nomProduit","categorieProduit","souscategorieProduit","luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc.","http://",18,3),
  (7024,364,"2021/25/05",47,"nomProduit","","souscategorieProduit","neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis","https://",24,1),
  (7025,365,"2020/17/08",8,"nomProduit","","","Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec","https://",44,4),
  (7026,366,"2021/07/09",42,"nomProduit","categorieProduit","souscategorieProduit","a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit,","http://",36,2),
  (7027,367,"2020/19/06",108,"nomProduit","","","consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a","https://",55,3),
  (7028,368,"2020/29/12",35,"","","","dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec","https://",13,2),
  (7029,369,"2021/09/05",68,"nomProduit","categorieProduit","souscategorieProduit","iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu.","http://",48,3),
  (7030,370,"2020/05/04",122,"","categorieProduit","souscategorieProduit","pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a,","https://",19,4),
  (7031,371,"2021/17/01",8,"","categorieProduit","","Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis,","http://",7,6),
  (7032,372,"2022/07/02",53,"","categorieProduit","","neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy","http://",50,2),
  (7033,373,"2021/12/02",14,"","categorieProduit","souscategorieProduit","fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur","https://",20,5),
  (7034,374,"2020/03/04",83,"nomProduit","categorieProduit","","at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum","http://",2,3),
  (7035,375,"2021/31/05",85,"nomProduit","categorieProduit","souscategorieProduit","facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio","https://",16,1),
  (7036,376,"2020/30/04",44,"nomProduit","categorieProduit","souscategorieProduit","Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit,","https://",37,5),
  (7037,377,"2021/03/11",130,"","categorieProduit","souscategorieProduit","consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus","https://",58,7),
  (7038,378,"2022/26/01",96,"nomProduit","","","ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer","http://",49,3),
  (7039,379,"2021/27/06",8,"","","","lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla","https://",35,4),
  (7040,380,"2020/29/12",88,"","","souscategorieProduit","blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum","https://",13,2),
  (7041,381,"2021/11/12",74,"","categorieProduit","souscategorieProduit","risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis","http://",41,3),
  (7042,382,"2020/09/02",68,"","","souscategorieProduit","vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean","http://",55,5),
  (7043,383,"2020/13/12",126,"nomProduit","categorieProduit","souscategorieProduit","velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem","http://",29,3),
  (7044,384,"2021/19/08",118,"nomProduit","categorieProduit","","Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula.","https://",51,5),
  (7045,385,"2022/02/02",106,"","","souscategorieProduit","commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui.","http://",25,4),
  (7046,386,"2020/03/12",123,"nomProduit","","souscategorieProduit","In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit,","http://",54,4),
  (7047,387,"2020/27/05",17,"nomProduit","categorieProduit","souscategorieProduit","eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna.","http://",26,3),
  (7048,388,"2021/04/04",87,"nomProduit","","","malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent","https://",38,7),
  (7049,389,"2021/01/09",132,"nomProduit","categorieProduit","souscategorieProduit","placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat","https://",20,5);
