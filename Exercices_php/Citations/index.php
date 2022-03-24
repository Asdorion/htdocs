<?php
include_once 'inc/header.inc.php';
include_once 'inc/footer.inc.php';

    $sql = 'SELECT * from `auteurs`';
    $requete = $db->query($sql);
    $auteurs = $requete->fetchAll();
    $nbauteurs = $requete->rowCount();
?>

<form action="pages/affichecit.php" method="get">
    <label for="recherche">Recherche</label>
    <input type="search" name="recherche" id="recherche">

    <label for="choixAuteurs">Critère de recherche (optionnel)</label>
    <select name="choixAuteur" id="choixAuteur">
        <option value="">Choisir un auteur</option>
        <?php
            foreach($auteurs as $auteurs)
            echo "<option>".$auteurs["nom"]."</option>";
        ?>
    </select>

    <label for="choixSiecle">Critère de recherche (optionnel)</label>
    <select name="choixSiecle" id="choixSiecle">
        <option value="">Choisir un siècle</option>
        <option value="XVIe">XVIe</option>
        <option value="XVIIe">XVIIe</option>
        <option value="XVIIIe">XVIIIe</option>
        <option value="XIXe">XIXe</option>
        <option value="XXe">XXe</option>
        <option value="XXIe">XXIe</option>
    </select>

    <label for="triauteurs">Tri par auteurs</label>
    <input type="radio" name="tri" id="radio1" value="triauteurs" checked>
    <label for="trisiecle">Tri par siècle</label>
    <input type="radio" name="tri" id="radio2" value="trisiecle">

    <input type="submit" value="Valider">
    <input type="reset" value="Réinitialiser">
</form>


<a href="pages/saisiecit.php">Page d'insertion</a>

<?php
include_once 'inc/footer.inc.php';
?>