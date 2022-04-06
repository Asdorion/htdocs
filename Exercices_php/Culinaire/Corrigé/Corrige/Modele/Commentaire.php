<?php

require_once 'Modele/Modele.php';

class Commentaire extends Modele {
    public function getComments($idRecipe){
        $getCommentsQuery = "SELECT * FROM t_comment WHERE id_rec =?";
        $comments = $this->executerRequete($getCommentsQuery, array($idRecipe));

        return $comments;
    }  
    
    
    public function threeLastComments(){   
        $threeLastCommentsQuery = "SELECT com_auteur, com_contenu, rec_nom FROM t_comment LEFT JOIN t_recipe ON rec_id = id_rec ORDER BY com_id DESC LIMIT 3";
        $comments = $this->executerRequete($threeLastCommentsQuery);
    
        return $comments;
    }
}