<?php
include_once '../inc/header.inc.php';
include_once '../inc/footer.inc.php';
?>

<form action="saisie.php" method="get">
    <div>
        <label for="siaisieNom">Saisir le nom de l'auteur</label>
        <input type="text" name="saisieNom" id="saisieNom">

        <label for="saisiePrenom">Saisir le prénom de l'auteur</label>
        <input type="text" name="saisiePrenom" id="saisiePrenom">

        <label for="choixSiecle">Choisir un siècle</label>
            <select name="choixSiecle" id="choixSiecle">
                <option value="">Choisir un siècle</option>
                <option value="XVIe">XVIe</option>
                <option value="XVIIe">XVIIe</option>
                <option value="XVIIIe">XVIIIe</option>
                <option value="XIXe">XIXe</option>
                <option value="XXe">XXe</option>
                <option value="XXIe">XXIe</option>
            </select>
    </div>
    <div>
        <label for="saisieCitation">Veuillez saisir la citation</label>
        <textarea name="saisieCitation" id="saisieCitation" cols="90" rows="10"></textarea>    
    </div>

    <input type="submit" value="Valider">
    <input type="reset" value="Réinitialiser">

</form>

<?php
    $name = $_GET["saisieNom"];
    $cit = $_GET["saisieCitation"];
    $prenom = $_GET["saisiePrenom"];
    $siecle = $_GET["saisieSiecle"];
    $sql = "SELECT nom FROM `auteurs`";
    $requete = $db->querry($sql);
    $nom = $requete->fetchAll();
    foreach ($nom as $nom) {
        if ($nom = $name) {
            $sql = "SELECT idauteurs from `auteurs` where nom=$name";
            $requete = $db->querry($sql);
            $ida = $requete->fetch();
            $insertSql = "INSERT INTO `citation` (`texte`,`idauteurs`) VALUES ("$cit", $ida) ";
    } else {
        
    }




    <a href="../index.php">Page d'accueil</a>
