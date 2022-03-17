<?php
session_start();
if (!empty($_SESSION['userName'])) { ?>
    <h1>Le menu du jour pour vous, <?php echo $_SESSION['userName'] ?>...</h1>
    <ul>
        <li><a href="">Sommaire</a></li>
        <li>Et aussi...</li>
        <li>Et encore...</li>
        <li>Et pour finir...</li>
    </ul>
<?php } else  { ?>
    <h1>Erreur login: vous n'avez pas droit d'accès au site</h1>
    <a href="">Retour à la page d'acceuil</a>
<?php } ?>