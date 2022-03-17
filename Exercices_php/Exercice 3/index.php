<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercice 3</title>
</head>
<body>
    <h1>Bienvenue sur notre site Web</h1>
<form action="loginctrl.php" method="post">
    <div>
    <label for="nom">Entrez votre nom</label>
    <input type="text" name="nom" id="nom">
    </div>
    <div>
    <label for="mdp">Entrez votre mot de passe</label>
    <input type="password" name="mdp" id="mdp">
    </div>
    <div>
    <input type="submit" value="Envoyez">
    <input type="reset" value="Recommencez">
    </div>
</form>
</body>
</html>
