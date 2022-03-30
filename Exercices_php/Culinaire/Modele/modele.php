<?php

abstract class Modele {
    // Objet PDO d'accès à la base de données
    private $db;
    // Executer une requête SQL éventuellement paramétrée
    protected function executerRequete($sql, $params = null) {
        if ($params == null) {
            $resultat = $this->getBdd()->query($sql);  // Exécution direct
        }
        else {
            $resultat = $this->getBdd->prepare($sql);  // Requète préparée
            $resultat = execute($params);
        }
        return $resultat;
    }

    // Renvoie un objet de connexion à la Base de données en initialisant la connexion au besoin
    private function getBdd() {
        if ($this->db == null) {
            $this->db = new PDO('mysql:host=localhost;dbname=bdd_blog_culinaire;charset=utf8', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
        }
        return $this->db;
    }
}
?>

