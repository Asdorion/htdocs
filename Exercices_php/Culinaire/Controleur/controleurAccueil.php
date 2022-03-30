<?php
// controleurAccueil.php

require_once 'Modele/recette.php';
require_once 'Modele/commentaires.php';
require_once 'Vue/vue.php';

class ControleurAccueil {
    private $recette;
    private $commentaires;

    public function __construct() {
        $this->recette = new Recette();
        $this->commentaires = new Commentaires();
    }
    // Affiche les 3 dernières recettes et les 3 dernirs commentaiers du blog
    public function accueil() {
        $recipes = $this->recette->threeLastRecipes();
        $comments = $this->commentaires->threeLastComments();
    }
}