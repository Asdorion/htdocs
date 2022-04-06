<?php
require_once 'Controleur/ControleurAccueil.php';
require_once 'Controleur/ControleurRecette.php';
require_once 'Vue/Vue.php';

class Routeur {
    private $ctrlAccueil;
    private $ctrlRecette;
    
    public function __construct() {
        $this->ctrlAccueil = new ControleurAccueil();
        $this->ctrlRecette = new ControleurRecette();
    }
    // Traite une requête entrante
    public function routerRequete() {
        try {
            if (isset($_GET['action'])) {
                if ($_GET['action'] == 'recette') {
                    if (isset($_GET['id'])) {
                        $idRecipe = intval($_GET['id']);
                        if ($idRecipe != 0) {
                            $this->ctrlRecette->oneRecipe($idRecipe);
                        }
                        else
                            throw new Exception("Identifiant de recette non valide");
                    }
                    else
                    throw new Exception("Identifiant de recette non défini");
                } elseif($_GET['action'] == 'recettes'){
                    $this->ctrlRecette->allRecipes();
                }
                else
                throw new Exception("Action non valide");
            }
            else { // aucune action définie : affichage de l'accueil
            $this->ctrlAccueil->accueil();
            }
        }
        catch (Exception $e) {
            $this->erreur($e->getMessage());
        }
    }
    // Affiche une erreur
    private function erreur($msgErreur) {
        $vue = new Vue("Erreur");
        $vue->generer(array('msgErreur' => $msgErreur));
    }
}