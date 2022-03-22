<?php
session_start();
$_SESSION['userName'] = $_POST['nom'];
header('location:loginsuite.php');
?>