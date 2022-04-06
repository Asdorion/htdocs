<?php

abstract class Modele {

const DBHOST = "localhost";
const DBUSER = "root";
const DBPASS = "";
const DBNAME = "bdd_blog_culinaire";

private $bdd;

protected function executerRequete($sql, $params = null){
    if ($params == null) {
        $resultat = $this->getBdd()->query($sql); // exécution directe
    } else {
        $resultat = $this->getBdd()->prepare($sql); // requête préparée
        $resultat->execute($params);
    }
    return $resultat;
}

private function getBdd() {
     // Création de la connexion
    if ($this->bdd == null) {
        $dsn = 'mysql:host='.self::DBHOST.';dbname='.self::DBNAME;    
        $this->bdd = new PDO($dsn, self::DBUSER, self::DBPASS, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
        $this->bdd->exec("SET NAMES utf8");
        $this->bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    }    
    return $this->bdd;
    }

} // fin de classe Modele