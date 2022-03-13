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
  (7023,363,"2020/06/21",89,"Dionaea Muscipula","Plantes","Plantes d'intérieur","Les feuilles-pièges de cette vivace, de la famille des droséracées, agissent comme une trappe.","http://",18,3),
  (7024,364,"2021/05/25",47,"Azalée d'intérieur","Plantes","Plantes d'intérieur","Cet arbuste à port arrondi, de la famille des Ericacées, est proposé en potées fleuries toute l'année","https://",24,1),
  (7025,365,"2020/08/17",8,"Cactus","Plantes","Plantes d'intérieur"," Les cactus se distinguent des autres plantes grasses par la présence d'aréoles, petites excroissances de la plante à partir desquelles partent en faisceaux des épines ou des glochides (petits aiguillons très fins).","https://",44,4),
  (7026,366,"2021/07/09",42,"Magna Mariobilis","Plantes","Plantes d'extérieur","D'une taille moyenne de 25 cm, les jeunes pousses de Magna Mariobilis peuvent atteindre une hauteur de 2m voir 2,50m si bien nourries. Pour l'entretient: un arrosage modéré suffit, en revanche un apport en protéines est souvent nescessaire. Nul doute votre Magna Mariobilis suscitera la curiosité des petits comme des grands.","http://",36,2),
  (7027,367,"2020/06/19",108,"Mini cyclamen","Plantes","Plantes d'extérieur","Belles couleurs vives ou pastel, unies ou panachées pour les mini-cyclamens, fleurs curieuses avec les pétales retroussés vers l'arrière, feuillage décoratif.","https://",55,3),
  (7028,368,"2020/12/29",35,"Pâquerette pomponnette blanche","Plantes","Plantes d'extérieur","Petites fleurs blanches, formant des pompons compacts qui s'arrondissent en s'épanouissant, existent en rose et rouge sous d'autres références.","https://",13,2),
  (7029,369,"2021/09/05",68,"Boule de buis, vert Ø 40 cm","Plantes","Arbres et arbustes","Bien compacte, au feuillage réaliste parfaitement bien taillé, au port impeccable et aux coloris naturels : elle ne laissera personne indifférent où qu'elle soit placée dans la maison, sur la véranda ou sur le balcon.","http://",48,3),
  (7030,370,"2020/05/04",122,"Euonymus japonicus ' Bravo '","Plantes","Arbres et arbustes","Le genre Euonymus (Fusain) comprend environ 170 espèces, originaires d'Amérique du Nord, d'Europe, d'Asie, d'Afrique et d'Australie. Euonymus japonicus (Fusain du Japon) est une espèce originaire du Japon et de Corée, introduite en Europe en 1804. ' Bravo ' est une variété horticole.","https://",19,4),
  (7031,371,"2021/01/17",8,"Aucuba japonica 'Crotonifolia'","Plantes","Arbres et arbustes","Le genre Aucuba comprend 3 espèces originaire de Chine, du Japon et de l'Himalaya. Aucuba japonica est l'espèce la plus cultivée, originaire du Japon, de Formose et de Corée. ' Crotonifolia ' est une variété horticole.","http://",7,6),
  (7032,372,"2022/07/02",53,"Terrarium smart line COR001 C/ CX","Animalerie","Reptiles","Économique, mais aussi résistant qu’un modèle avec aluminium, il offre un habitat de qualité aux reptiles et amphibiens. Ce terrarium comprend l’équipement indispensable pour le bien-être de ses habitants. Un système permettant une circulation optimale de l’air, un accès sécurisé par un code, des grilles amovibles, tout est prévu pour une utilisation aisée de ce terrarium Smart Line COR001.","http://",50,2),
  (7033,373,"2021/12/02",14,"Décor pour aquarium : 4 faces","Animalerie","Reptiles","Cette décoration d'aquarium en résine représentant une tour de pierre ornera l'habitat de votre compagnon à écailles. Vous lui procurerez par la même occasion de véritables cachettes où il pourra se réfugier. Cette tour de pierre en résine d'inspiration asiatique et à l'aspect très naturel sera du meilleur effet dans votre aquarium. Dimensions : 17 x 13 cm.","https://",20,5),
  (7034,374,"2020/03/04",83,"Litière noix de coco terra 20L","Animalerie","Reptiles","Litières écologiques 100% naturelles pour l'utilisation de substrats dans les terrariums tropicaux, secs et humides. Fabriqués à partir de fibres de coco, ils aident à contrôler la croissance des germes, absorbent et contrôlent le niveau d'humidité à l'intérieur du terrarium et aident à éliminer les odeurs.","http://",2,3),
  (7035,375,"2021/05/31",85,"Bloc à grignoter Crau Délice : 600g","Animalerie","Rongeurs et petits mamifères","Les rongeurs adorent manger du foin tout au long de la journée. Les blocs à grignoter Crau Délice satisferont cette gourmandise. Ils sont fabriqués exclusivement avec du foin de Crau AOP dont la valeur nutritive élevée leur apportera tous les éléments nutritifs nécessaires à une bonne santé. Très appétissants et entièrement naturels, ces blocs à grignoter ne contiennent aucun additif ni conservateur. Faciles à utiliser, ils se posent dans la cage, dans un râtelier ou un support à légumes.","https://",16,1),
  (7036,376,"2020/04/30",44,"Maison de toilette d'angle GM Gris pour rongeur","Animalerie","Rongeurs et petits mamifères","Créez un espace litière à votre rongeur avec cette jolie maison de toilette d'angle grise. Au design moderne et épuré, cette maisonnette deviendra rapidement l'emplacement privilégié de votre rongeur pour se soulager. Dotée d'une grille amovible, elle est en plastique et elle est facile à nettoyer. A placer dans un angle, elle se fixe facilement aux barreaux de votre cage et permet un gain de place.","https://",37,5),
  (7037,377,"2021/03/11",130,"Litière chanvre Paradisio pour rongeur : 100 litres","Animalerie","Rongeurs et petits mamifères","La Litière chanvre Paradisio se présente en sachet de 100 litres. D'origine 100 % naturel et biodégradable, cette litière est douce, confortable, et exempte de poussière. Elle accueillera tous vos rongeurs (hamsters, cochons d'Inde, lapins, etc.), y compris ceux dont les voies respiratoires sont sensibles.","https://",58,7),
  (7038,378,"2022/01/26",96,"Poule Sussex","Animalerie","Animaux de la basse-court","La poule Sussex possède un dos large, des cuisses musclées, un plumage bien fourni et une crête simple. Ses coloris varient : le blanc, le doré saumoné, le fauve, le brun, le gris argenté, le noir, le tricolore, le rouge herminé noir et coucou. Le blanc herminé noir et le tricolore sont les couleurs les plus répandues. C'est une poule rustique, qui ne craint pas les intempéries.","http://",49,3),
  (7039,379,"2021/06/27",8,"Portier automatique poulailler","Animalerie","Animaux de la basse-court","Portier muni d'une sonde crépusculaire : s'ouvre automatiquement au lever du soleil et se ferme au crépuscule grâce à unesonde crépusculaire intégrée. Ce portier électronique à piles est conçu pour sécuriser votre poulailler en motorisant la trappe d'accès des poules. Il protège des prédateurs et nuisibles de toute intrusion dans l'habitat pendant la phase de sommeil. Le portier pour poulailler ne nécessite aucun branchement électrique grâce à son système de fonctionnement à piles (4 piles type AA-LR6 1.5 V non incluses).","https://",35,4),
  (7040,380,"2020/12/19",88,"Poulailler Savannah 150 x 66 x 93 cm","Animalerie","Animaux de la basse-court","Offrez-vous ce poulailler Savannah dans lequel vos poules se sentiront bien ! 100 % en picea abies certifié FSC, ce poulailler blanc et bois se plaira dans votre extérieur et deviendra un excellent habitat pour vos animaux de la basse cour. Pratique, fonctionnel et esthétique il est doté d'un dortoir couvert avec une rampe. Dimensions : 150 x 66 x 93 cm.","https://",13,2),
  (7041,381,"2021/11/12",74,"Tronçoneuse TBv2000","Outillage","Motorisés","De part ses différentes qualités, la tronçoneuse Greengarden Turbo Boost ventury 2000 vous apportera entière satisfaction. Confort d'utilisation, reglage et entretien faciles, qualité professionnelle, guide et chaine GREENGARDEN. Cylindrée 38 cm³ moteur 2 tps refroidissement à air, vitesse de rotation 3000tr/mn, longueur de guide 35.6 cm, guide et chaine Greengarden. Capacité de carburant 260 ml, ratio carburant huile 40:1, systeme de chaine anti fouet, système anti vibration, graissage de chaine auto, pas de chaine 3/8 avec reglage tension de la chaine par vis latérale","http://",41,3),
  (7042,382,"2020/09/02",68,"Tondeuse filaire AdvancedRotak 690","Outillage","Motorisés","La tondeuse filaire Advanced Rotak 690 vous garantit un grand confort acoustique, grâce à la technologie ProSilence. Son niveau sonore est de 89 dB, ce qui représente 75% de moins par rapport aux gammes classiques. Son manche repliable facilite le rangement de l'appareil. Avec une puissance de 1800 W, elle est conçue pour les grandes surfaces, jusqu'à 800 m². Sa largeur de coupe de 42 cm assure une tonte rapide. Un disjoncteur thermique protège le moteur et évite la surchauffe.","http://",55,5),
  (7043,383,"2020/12/13",126,"Souffleur sans fil AdvancedAir 36","Outillage","Motorisés","Le Souffleur AdvancedAir 36 est un souffleur sans fil, léger et très facile à manier. Il fonctionne et est livré avec une batterie Litihium-Ion 36 V qui est interchangeable et compatible avec les autres outils Greengarden du même voltage. Il se distingue par puissance : jusqu’à 250 km/h de soufflerie pour un volume de 100-150 m³/h ! Par ailleurs, son embout de précision permet également la collecte aisée des débris. Facile d’utilisation, il peut se tenir à une main sans douleurs ni fatigue, et muni d’une poignée antidérapante; il favorise une position confortable et un bon équilibre. Poids : 2.8kg.","http://",29,3),
  (7044,384,"2021/08/19",118,"Rateau 10 dents courbes emmanché 140cm","Outillage","A main","Ce râteau à 10 dents bénéficie de dents courbes permettant de briser les mottes après le bêchage, ainsi que d'affiner et niveler les sols. Il est idéal pour serrer les semis, et trouvera ainsi toute son utilité dans les petits espaces comme le potager.","https://",51,5),
  (7045,385,"2022/02/02",106,"Lot 3 outils à fleurs","Outillage","A main","Ce lot de 3 outils de jardin vous sera d'une aide précieuse pour vos travaux de jardinage. Contenant une petite pelle, une griffe et une serfouette avec poignée en bois ergonomique, vous pourrez réaliser vos travaux de jardin tout en profitant d'un outillage de qualité vous offrant un réél confort d'utilisation.","http://",25,4),
  (7046,386,"2020/03/12",123,"Sécateur traditionnel 23cm","Outillage","A main","Ce sécateur à coupe tirante vous propose ses lames en acier trempé pour une coupe nette et précise. Ses poignées en acier embouti vous promettent solidité et légèreté. Avec sa capacité de coupe de 25 mm, cet outil est conçu pour tous les travaux de taille.","http://",54,4),
  (7047,387,"2020/05/27",17,"Pot de fleur bébé Groot","Outillage","Accessoires","Epatez vos amis avec ce pot de fleur bébé Groot de toute beauté.","https://",38,7),
  (7048,388,"2021/04/04",87,"Filet de camouflage 4x5m 65 g/m2","Outillage","Accessoires","Filet de camouflage en polyethylène d'environ 4x5m 65 g/m2 Maillage 10 cm x 10 cm avec liens d'accrochage, équipé à chaque coin de liens de 100 cm de longueur Traitée imputréscible et anti-UV Utilisation de -40°C à +50C° Livré avec sac de rangement en polyethilene imprimé camouflage.","https://",38,7),
  (7049,389,"2021/01/09",132,"Etiquette en Bois et Ardoise à planter","Outillage","Accessoires","Ces étiquettes à planter vous permettront de renseigner par un simple marquage à la craie, les variétés de plantation que vous faites pousser dans votre potager. Très astucieuses, ces étiquettes à planter en ardoise et en bois apporteront un cachet à vos compositions et mettront en scène votre potager avec originalité. Dimensions : H.14,4 X l.6,1 cm. Vendues en lot de 5 étiquettes.","https://",20,5);
