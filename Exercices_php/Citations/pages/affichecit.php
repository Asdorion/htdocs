<?php
include_once '../inc/header.inc.php';

$recherche = $_GET["recherche"];
$rechercheAuteur = $_GET["choixAuteur"];
$rechercheSiecle = $_GET["choixSiecle"];
$tri = $_GET["tri"];
?>

<table>
    <?php 
        if ((!empty($recherche)) && (!empty($rechercheAuteur))) {
                $sql = "SELECT idauteurs, nom, prenom FROM `auteurs` WHERE nom = '$rechercheAuteur'";
                $requete = $db->query($sql);
                $auteur = $requete->fetch();
                $sql = "SELECT * from `citation` WHERE citation.idauteurs=".$auteur["idauteurs"]."";
                $requete = $db->query($sql);
                $jointure = $requete->fetchAll();
                foreach($jointure as $jointure) {
                    if ((str_contains($jointure["texte"], $recherche)) && ($jointure["idauteurs"]=$auteur)) {
                        echo "<tr><td>".$jointure["texte"]."</td><td>".$auteur["prenom"]."</td><td>".$auteur["nom"]."</td></tr>";
                    }
                }
        } else if ((!empty($recherche)) && (!empty($rechercheSiecle))) {
            $sql = "SELECT idauteurs, nom, prenom FROM `auteurs` WHERE siecle = '$rechercheSiecle'";
            $requete = $db->query($sql);
            $auteur = $requete->fetch();
            $sql = "SELECT * from `citation` WHERE citation.idauteurs=".$auteur["idauteurs"]."";
            $requete = $db->query($sql);
            $jointure = $requete->fetchAll();
            foreach($jointure as $jointure) {
                if ((str_contains($jointure["texte"], $recherche)) && ($jointure["idauteurs"]=$auteur)) {
                    echo "<tr><td>".$jointure["texte"]."</td><td>".$auteur["prenom"]."</td><td>".$auteur["nom"]."</td></tr>";
                }
            }
        } else if ((empty($recherche)) && (!empty($rechercheAuteur))) {
                $sql = "SELECT idauteurs, nom, prenom FROM `auteurs` WHERE nom = '$rechercheAuteur'";
                $requete = $db->query($sql);
                $auteur = $requete->fetch();
                $sql = "SELECT texte FROM `citation` WHERE citation.idauteurs = ".$auteur["idauteurs"]." ";
                $requete = $db->query($sql);
                $citation = $requete->fetch();
                echo "<tr><td>".$citation["texte"]."</td><td>".$auteur["prenom"]."</td><td>".$auteur["nom"]."</td></tr>";
            } else if ((empty($recherche)) && (!empty($rechercheSiecle))) {
                $sql = "SELECT idauteurs, nom, prenom FROM `auteurs` WHERE siecle = '$rechercheSiecle'";
                $requete = $db->query($sql);
                $auteur = $requete->fetch();
                $sql = "SELECT texte FROM `citation` WHERE citation.idauteurs = ".$auteur["idauteurs"]." ";
                $requete = $db->query($sql);
                $citation = $requete->fetch();
                echo "<tr><td>".$citation["texte"]."</td><td>".$auteur["prenom"]."</td><td>".$auteur["nom"]."</td></tr>";
            } else {
                $sql = 'SELECT * from `citation`';
                $requete = $db->query($sql);
                $lignes = $requete->rowCount();
                while ($lignes != 0) {
                    $sql = "SELECT texte,idauteurs from `citation` WHERE idcit=$lignes";
                    $requete = $db->query($sql);
                    $req = $requete->fetch();
                    $sql = "SELECT nom, prenom from `auteurs` WHERE idauteurs=".$req["idauteurs"]."";
                    $requete = $db->query($sql);
                    $req2 = $requete->fetch();
                    echo "<tr><td>".$req["texte"]."</td><td>".$req2["prenom"]."</td><td>".$req2["nom"]."</td></tr>";
                    $lignes--;
                };
            }
    ?>
</table>

<a href="../index.php">Page d'accueil</a>
<a href="saisiecit.php">Page d'insertion</a>
<?php
include_once '../inc/footer.inc.php';
?>