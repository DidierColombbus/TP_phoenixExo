<?php

require_once 'inc/init.inc.php';

//Récupération des informations en BDD pour affichage des voyages

$req_all_voyage = executeRequete("SELECT * FROM voyage");

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap 5.2 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <title>👀 Agence de voyages</title>
</head>
<body>

<!-- Une nav -->

<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Nom de l'agence et logo</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Destinations</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Voyages</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Payer</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Nous contacter</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Liens et informations
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Qui sommes-nous</a></li>
            <li><a class="dropdown-item" href="#">Ministère du Tourisme</a></li>
            <li><a class="dropdown-item" href="#">Nos partenaires</a></li>
            </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Bootstrap 5.2 -->

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>

    
</body>
</html>