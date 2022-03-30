<?php
// Controleur.php

require_once "Modele/recette.php";
require_once './Vue/vue.php';
require_once "Modele/commentaires.php";

// Affiche la liste des 3 dernières recttes du blog
function accueil() {
    $recettes = new Recette();
    $recipes = $recettes->threeLastRecipes();
    $commentaires = new Commentaires();
    $comments = $commentaires->threeLastComments();
    $vueAccueil = new Vue('Accueil');
    $vueAccueil->generer(array('recipes'=> $recipes, 'comments' => $comments));
}

// Afficher les détails d'une recette
// function oneRecipe($idRecipe) {
//     $recipes = getRecipe($idRecipe);
//     $comments = getComments($idRecipe);
//     require 'Vue/vueRecette.php';
// }

// Affiche une erreur
function erreur($msgErreur) {
    require 'Vue/vueErreur.php';
}
?>