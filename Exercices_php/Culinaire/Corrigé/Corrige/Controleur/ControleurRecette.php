<?php
require_once 'Modele/Recette.php';
require_once 'Modele/Commentaire.php';
require_once 'Vue/Vue.php';

class ControleurRecette {
    private $recette;
    private $commentaire;

    public function __construct() {
        $this->recette = new Recette();
        $this->commentaire = new Commentaire();
    }
    // Affiche les détails sur une recette + commentaires
    public function oneRecipe($idRecipe) {
        $recette = $this->recette->getRecipe($idRecipe);
        $commentaires = $this->commentaire->getComments($idRecipe);
        $vue = new Vue("Recette");
        $vue->generer(array('recette' => $recette, 'comments' => $commentaires));
    }
    
    public function allRecipes(){
        $allRecipes  = $this->recette->getAllRecipes();
        $vue = new Vue("Recettes");
        $vue->generer(array('recipes' => $allRecipes));
    }
}
