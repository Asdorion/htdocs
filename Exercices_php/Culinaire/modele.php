<?php

// Constantes d'environnement
define("DBHOST", "localhost");
define("DBUSER", "root");
define("DBPASS", "");
define("DBNAME", "bdd_blog_culinaire");

// Connection à la base de données
function getBdd ()
{
    $dsn = 'mysql:host='.DBHOST.';dbname='.DBNAME;

    try {
        $db = new PDO($dsn, DBUSER, DBPASS);
        $db->exec("SET NAMES utf8");
        $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        die("Erreur ! : " . $e->getMessage()) ;
    }

    return $db;
}

// Les trois dernières recettes
function threeLastRecipes()
{
    $db = getBdd();
    $threeLastRecipesQuery = "SELECT rec_resume, rec_miniature FROM t_recipe ORDER BY rec_id DESC LIMIT 3";
    $threeLastQuery = $db->query($threeLastRecipesQuery);
    $recipes = $threeLastQuery->fetchAll();

    return $recipes;
}

// Les trois derniers commentaires
function threeLastComments()
{
    $db = getBdd();
    $threeLastCommentsQuery = "SELECT com_auteur, com_contenu, rec_nom FROM t_comment LEFT JOIN t_recipe ON rec_id = id_rec ORDER BY com_id DESC LIMIT 3";
    $threeLastComQuery = $db->query($threeLastCommentsQuery);
    $count = $threeLastComQuery->rowCount();
    $comments = $threeLastComQuery->fetchAll();

    return $comments;
}









?>