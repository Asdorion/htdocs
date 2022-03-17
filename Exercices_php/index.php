<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Un petit formuaire (pour commencer)</h1>
    <p>Merci de renseigner les informations suivantes:</p>
    <form action="formsuite.php" method="post">
        <div>
            <label for="nom">Votre nom</label>
            <input type="text" name="nom" id="nom">
        </div>
        <div>
            <label for="age">Votre âge</label>
            <input type="text" name="age" id="age">
        </div>
        <div>
            <span>Votre situation maritale: </span>
            <label for="marie">Marié</label>
            <input type="radio" name="marital" id="marie">
            <label for="veuf">Veuf(ve)</label>
            <input type="radio" name="marital" id="veuf">
            <label for="celibataire">Célibataire</label>
            <input type="radio" name="marital" id="celibataire">
        </div>
        <div>
            <span>Vos centre d'intérêt: </span>
            <label for="internet">Internet</label>
            <input type="checkbox" name="internet" id="internet">
            <label for="informatique">Micro-informatique</label>
            <input type="checkbox" name="informatique" id="informatique">
            <label for="jeux">Jeux Vidéo</label>
            <input type="checkbox" name="jeux" id="jeux">
        </div>
        <div>
            <input type="reset" value="Recommencer">
            <input type="submit" value="Envoyer">
        </div>
    </form>
</body>
</html>