<?php

    //CONSTANTES D'ENVIRONEMENT
    define('DBHOST', 'localhost');
    define('DBUSER', 'root');
    define('DBPASS', '');
    define('DBNAME', 'dico');

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

    $sql = 'SELECT idcit from `citation`';
    $requete = $db->query($sql);
    $nbcit = $requete->rowCount();
    $citjour = random_int(1, $nbcit);
    $citSqlQuery = 'SELECT texte FROM `citation` WHERE idcit='.$citjour;
    $citQuery = $db->query($citSqlQuery);
    $res = $citQuery->fetch();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        header { 
            height: 100px;
            background-color: aliceblue;
        }

        p {
            font-size: 2em;
            text-align: center;
            margin: 0px;
            padding-top: 10px;
        }

        td {
            border: 0.5px solid black;
            padding: 0.5%;
            min-width: 120px;
        }
    </style>
</head>
<header>
<p><?php echo $res["texte"] ?></p>
</header>
<body>
    
</body>
</html>