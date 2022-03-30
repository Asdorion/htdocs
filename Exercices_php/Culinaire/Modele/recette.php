<?php

//Recette.php

require_once 'Modele/modele.php';

class Recette extends Modele {
    // Renvoie la liste des recettes du blog
    public function getRecipes() {
        $sql = "SELECT * FROM `t_recipe`";
        $recipes = $this->executerRequete($sql);
        return $recipes; 
    }
    // Renvoie les informations sur une recette
    public function getRecipe($idRecipe) {
        $sql = ("SELECT * FROM `t_recipe` WHERE rec_id= ?");
        $recipe = $this->executerRequete($sql, array($idRecipe));
        if ($recipe->rowCount() == 1)
            return $recipe->fetch();
        else
            throw new Exception ("Aucune recette ne correspond à l'identifiant $idRecipe");
    }

    // Renvoie les 3 dernières recettes
    public function threeLastRecipes() {
        $sql = "SELECT rec_resume, rec_miniature, rec_id FROM t_recipe ORDER BY rec_id DESC LIMIT 3";
        $recipes = $this->executerRequete($sql);
        return $recipes;
    }

}
?>