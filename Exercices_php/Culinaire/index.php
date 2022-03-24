<?php
// index.php

//Accès aux données
require_once "modele.php";

$recipes = threeLastRecipes();
$comments = threeLastComments();

//Affichage
require_once "vueAccueil.php";

