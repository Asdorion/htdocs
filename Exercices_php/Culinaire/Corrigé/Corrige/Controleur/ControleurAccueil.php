<?php
require_once 'Modele/Recette.php';
require_once 'Modele/Commentaire.php';
require_once 'Vue/Vue.php';

class ControleurAccueil {
    private $recette;
    private $commentaire;
    
    public function __construct() {
        $this->recette = new Recette();
        $this->commentaire = new Commentaire();
    }
    // Affiche les 3 dernières recettes et les 3 derniers commentaires du blog
    public function accueil() {
        $recipes = $this->recette->threeLastRecipes();
        $comments = $this->commentaire->threeLastComments();
        $vue = new Vue("Accueil");
        $vue->generer(array('recipes' => $recipes, 'comments' => $comments));
    }
}