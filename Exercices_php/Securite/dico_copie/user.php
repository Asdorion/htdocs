<?php


require_once './inc/header.inc.php';
require_once 'connexion.php';
$db = getConnect();
?>

<form class="col-6 mx-auto" method="POST" action="">
    <div class="mb-3 mt-3">
        <label for="identifiant" class="form-label">Login :</label>
        <input type="text" id="identifiant" name="identifiant">
    </div>
    <div class="mb-3">
        <label for="mdp" class="form-label">Password :</label>
        <input type="password" id="mdp" name="mdp">
    </div>
    <div class="mb-3">
        <input type="submit" name="subco" id="subco" value="Connexion" class="btn btn-info" disabled/>
        <a href="index.php" class="btn btn-info">Retour à l'accueil</a>

    </div>
</form>

<?php
    $methode = $_SERVER['REQUEST_METHOD'];
    if ($methode == "POST") {
        $identifiant = htmlentities($_POST['identifiant']);
        var_dump($identifiant);
        $mdp = htmlentities($_POST['mdp']);
        $sql = "SELECT user.password FROM user WHERE user.login = '$identifiant'";
        $requete = $db->query($sql);
        $motdepasse = $requete->fetch();
            if (empty($mdp)) {
                echo ('Merci de saisir un mot de passe !');
            } else {
                if ($motdepasse == false ) {
                    echo ('Accès non autorisé !');
                } else {
                    if ( password_verify($mdp, $motdepasse['password'])) {
                        header('location: saisiecit.php');
                    } else {
                        echo ('Accès non autorisé !');
                    }     
                }    
            }
    } 



?>
<?php
require_once './inc/footer.inc.php';
?>