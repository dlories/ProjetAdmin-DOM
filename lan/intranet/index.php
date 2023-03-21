<?php
// D  finir les param  tres de connexion    la base de donn  es
$serveur = "172.20.1.6";
$utilisateur = "root";
$mot_de_passe = "ephec";
$nom_bdd = "products";

// Se connecter    la base de donn  es
$connexion = mysqli_connect($serveur, $utilisateur, $mot_de_passe, $nom_bdd);

// V  rifier la connexion
if (!$connexion) {
    die("FAIL!" . mysqli_connect_error());
}

// Interroger la base de donn  es
$resultat = mysqli_query($connexion, "SELECT * FROM produit");

// V  rifier s'il y a des r  sultats
if (mysqli_num_rows($resultat) > 0) {
    // Afficher les r  sultats
    while ($ligne = mysqli_fetch_assoc($resultat)) {
        echo "No : " . $ligne["NPRO"] . " - Lib : " . $ligne["LIBELLE"] . " - Prix : " . $ligne["PRIX"] . "Stock : " . $ligne["QSTOCK"] ."<br>";
    }
} else {
    echo "Aucun produit";
}

// Fermer la connexion    la base de donn  es
mysqli_close($connexion);
?>
