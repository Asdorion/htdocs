<?php

    //CONSTANTES D'ENVIRONEMENT
    define('DBHOST', 'localhost');
    define('DBUSER', 'root');
    define('DBPASS', '');
    define('DBNAME', 'exercice');

    //DSN DE CONNECTION
     $dsn = "mysql:dbname=".DBNAME.";host=".DBHOST;

    //On va se connecter à la base
    try {
        // On instancie PDO
        $db = new PDO($dsn, DBUSER, DBPASS);

        // On s'assure d'envoyer les données en UTF8
        $db->exec('SET NAMES utf8');

        // On définit le mode de "fetch" par défaut (tableau associatif)
        $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

    } catch(PDOException $e) {
        die($e->getMessage());
    }

    // Ici on est connectés à la base
    //On peut récupérer la liste des nom de la table exo_pdo
    $sql = 'SELECT * FROM `exo_pdo`';

    // On exécute directement la requète
    $requete = $db->query($sql);
    
    // On récupère les données (fetch ou fetchAll)
    $exo = $requete->fetchAll();

    // // // Ajouter une ligne
    $sql = "INSERT INTO `exo_pdo`(`ID`,`Nom`,`Prenom`) VALUES (5,'Rocket','Rasta')";

    $requete = $db->query($sql);

    // Supprimer une ligne
    $sql = "DELETE FROM `exo_pdo` WHERE `id` = 5";

    $requete = $db->query($sql);

    // //Modifier une ligne
    $sql = "UPDATE `exo_pdo` SET `Nom` = 'Trump' WHERE `id` = 4";

    $requete = $db->query($sql);

    // Savoir combien de lignes on été supprimées
    echo $requete->rowCount();

    echo "<pre>";
    var_dump($exo);
    echo "</pre>";