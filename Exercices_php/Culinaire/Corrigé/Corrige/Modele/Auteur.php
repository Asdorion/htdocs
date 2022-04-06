<?php

require_once 'Modele/Modele.php';

class Auteur extends Modele {
    public function getAuteur() {
        $getAuteurQuery = "SELECT * FROM `t_auteur`";
        $auteur = $this->getAuteur($getAuteurQuery);

        return $auteur->fetchAll();
    }
}

?>