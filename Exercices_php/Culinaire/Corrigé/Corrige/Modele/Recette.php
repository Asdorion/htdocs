<?php

require_once 'Modele/Modele.php';

class Recette extends Modele {
    // Renvoie les infos sur 1 recette
    public function getRecipe($idRecipe){
        
        $getRecipeQuery = "SELECT * FROM t_recipe WHERE rec_id =?";    
        $recipe = $this->executerRequete($getRecipeQuery, array($idRecipe));

        if ($recipe->rowCount() == 1){            
            return $recipe->fetch(); // Accès à la première ligne de résultat
        }else{
            throw new Exception("Aucune recette ne correspond à l'identifiant '$idRecipe'");
        }    
    }

    // Renvoie les infos sur 3 dernières recettes
    public function threeLastRecipes(){
        $threeLastRecipesQuery = "SELECT rec_id, rec_resume, rec_miniature FROM t_recipe ORDER BY rec_id DESC LIMIT 3";
        $recipes = $this->executerRequete($threeLastRecipesQuery);    
        return $recipes;    
    }
    
    // Renvoie toutes les recettes
        public function getAllRecipes(){
        $sql = "SELECT * FROM t_recipe";
        $allRecipes = $this->executerRequete($sql);
        $all = $allRecipes->fetchAll();
        
        return $all;
    }
} // fin de classe