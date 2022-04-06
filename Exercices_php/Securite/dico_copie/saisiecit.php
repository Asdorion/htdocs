
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/EmptyPHPWebPage.php to edit this template
-->
<?php
require_once './inc/header.inc.php';

// Récupération de la connexion à la BDD
require_once 'connexion.php';
$db = getConnect();
?>
<section class="container my-5">
    <div class="row">
        <h1 class='text-center mb-5'>Saisir une nouvelle citation</h1>
        <form class="col-6 mx-auto" method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
            <div class="mb-3">
              <label for="nom" class="form-label">Nom de l'auteur</label>
              <input type="text" class="form-control" id="nom" name="nom" minlength="2" required>
            </div>
            <div class="mb-3">
              <label for="prenom" class="form-label">Prénom de l'auteur</label>
              <input type="text" class="form-control" name="prenom" id="prenom" minlength="2" required>
            </div>
            <!-- Liste des siècles -->
            <div class="mb-3">
                <select class="form-select" name="siecle2" id="siecle2" aria-label="liste des siècles" required>
                    <option selected>Liste des siècles</option>
                    <option value="XVI">XVI</option>
                    <option value="XVII">XVII</option>
                    <option value="XVIII">XVIII</option>
                    <option value="XIX">XIX</option>
                    <option value="XX">XX</option>
                    <option value="XXI">XXI</option>
                 </select>
            </div>
            <!-- Zone de saisie citation -->
            <div class="mb-3">
                <label for="citation" class="form-label">Citation</label>
                <textarea class="form-control" id="citation" name="citation" rows="5" minlength="10" required></textarea>
            </div>
            <div class="mb-3">
                <input type="submit" class="btn btn-primary" value="Insérer">
                <a href="index.php" class="btn btn-info float-end">Retour à l'accueil</a>
            </div>
        </form>
    </div>
</section>

<?php
$methode = $_SERVER['REQUEST_METHOD'];
if ($methode =='POST') {
    $nomauteur = htmlspecialchars($_POST['nom']);
    $prenomauteur = htmlspecialchars($_POST['prenom']);
    $siecle = htmlspecialchars($_POST['siecle2']);
    $citation = $_POST['citation'];

    $sql = "SELECT idauteur FROM `auteurs` WHERE nom= :nomauteur";
    $requete = $db->prepare($sql);
    $requete->bindParam(':nomauteur', $nomauteur, PDO::PARAM_STR);
    $requete->execute();
    $idauteur = $requete->fetch();
    if ( $idauteur == false ) {
        $sql = "INSERT INTO `auteurs` (`nom`,`prenom`,`siecle`) VALUES (:nomauteur, :prenomauteur, :siecle)";
        $requete = $db->prepare($sql);
        $requete->bindParam(':nomauteur', $nomauteur, PDO::PARAM_STR);
        $requete->bindParam(':prenomauteur', $nomauteur, PDO::PARAM_STR);
        $requete->bindParam(':siecle', $nomauteur, PDO::PARAM_STR);
        $requete->execute();
        $sql = "SELECT idauteur FROM `auteurs` WHERE nom= :nomauteur";
        $requete = $db->prepare($sql);
        $requete->bindParam(':nomauteur', $nomauteur, PDO::PARAM_STR);
        $idauteur = $requete->fetch();
        $idauteur = $idauteur['idauteur'];
        $sql = "INSERT INTO `citation` (`texte`, `auteurid`) VALUES (:citation, :idauteur)";
        $requete = $db->prepare($sql);
        $requete->bindParam(':citation', $citation, PDO::PARAM_STR);
        $requete->bindParam(':idauteur', $nomauteur, PDO::PARAM_STR);
        $requete->execute();
    }  else {
        $idauteur = $idauteur['idauteur'];
        $sql = "INSERT INTO `citation` (`texte`, `auteurid`) VALUES (:citation, :idauteur)";
        $requete = $db->prepare($sql);
        $requete->bindParam(':citation', $citation, PDO::PARAM_STR);
        $requete->bindParam(':idauteur', $idauteur, PDO::PARAM_STR);
        $requete->execute();
    }
}
?>






<?php
// $methode = $_SERVER['REQUEST_METHOD'];
// if ($methode =='POST') {
//     $nomauteur = htmlspecialchars($_POST['nom']);
//     $prenomauteur = htmlspecialchars($_POST['prenom']);
//     $siecle = htmlspecialchars($_POST['siecle2']);
//     $citation = addslashes($_POST['citation']);

//     $sql = "SELECT idauteur FROM `auteurs` WHERE nom='$nomauteur'";
//     $requete = $db->query($sql);
//     $idauteur = $requete->fetch();
//     if ( $idauteur == false ) {
//         $sql = "INSERT INTO `auteurs` (`nom`,`prenom`,`siecle`) VALUES ('$nomauteur', '$prenomauteur', '$siecle')";
//         $requete = $db->query($sql);
//         $sql = "SELECT idauteur FROM `auteurs` WHERE nom='$nomauteur'";
//         $requete = $db->query($sql);
//         $idauteur = $requete->fetch();
//         $idauteur = $idauteur['idauteur'];
//         $sql = "INSERT INTO `citation` (`texte`, `auteurid`) VALUES ('$citation', '$idauteur')";
//         $requete = $db->query($sql);
//     }  else {
//         $idauteur = $idauteur['idauteur'];
//         $sql = "INSERT INTO `citation` (`texte`, `auteurid`) VALUES ('$citation', '$idauteur')";
//         $requete = $db->query($sql);
//     }
// }
?>
<?php
require_once './inc/footer.inc.php';
 ?>