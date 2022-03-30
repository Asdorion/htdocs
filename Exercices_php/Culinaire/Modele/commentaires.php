<?php

// Commentaires.php

require_once 'Modele/modele.php';

class Commentaires extends Modele {
    // Renvoie les 3 dernièrs commentaires
    public function threeLastComments() {
        $sql = "SELECT com_auteur, com_contenu, rec_nom FROM t_comment LEFT JOIN t_recipe ON rec_id = id_rec ORDER BY com_id DESC LIMIT 3";
        $comments = $this->executerRequete($sql);
        return $comments;
    }    

    // Renvoie la liste des commentaires associés à une recette
    public function getComments($idRecipe) {
        $sql = ("SELECT com_auteur, com_contenu FROM `t_comment` WHERE id_rec= :id");
        $comments = $this->executerRequete($sql, array($idRecipe));
        return $comments;
    }
}

?>