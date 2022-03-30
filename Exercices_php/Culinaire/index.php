<?php
// index.php

require 'Controleur/controleur.php';

try {
    if (isset($_GET['action'])) {
        if ($_GET['action'] == 'recette') {
            if (isset($_GET['id'])) {
            $idRecipe = intval($_GET['id']);
                if ($idRecipe != 0) 
                    oneRecipe($idRecipe);
                else
                    throw new Exception ('Identifiant de recettte non valide');
            }
            else
                throw new Exception ('Identifiant de recette non défini'); 
            }
        else
            throw new Exception ('Action non valide');
        }
    else {
        accueil(); // Action par défaut
        // require 'Vue/vueAccueil.php';
    }
} // Fin de Try
catch(Exception $e) {
    erreur($e->getMessage());
}
?>