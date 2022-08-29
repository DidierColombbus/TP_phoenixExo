<?php

/* Fichier de configuration du site */

//---------------------------------
// Connexion à la BDD
//---------------------------------

$pdo = new PDO(
    'mysql:host=localhost;dbname=phoenix', //driver mysql (pourrait être oracle, IBM, ODBC...) + nom de la BDD 
    'root', // pseudo de la BDD
    '', // mot de passe de la BDD, mettre 'root' pour Mac
    array(
        PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING, // pour afficher les messages d'erreur SQL
        PDO::MYSQL_ATTR_INIT_COMMAND => 'set NAMES utf8' // définition du jeu de caractères des échanges avec la BDD 
    )

    );

//---------------------------------
// Session
//---------------------------------

session_start();

//---------------------------------
// Variables d'affichage
//---------------------------------

$msg = '';

//---------------------------------
// Inclusion du fichier qui contient les fonctions du site
//---------------------------------

require_once 'functions.inc.php';

?>