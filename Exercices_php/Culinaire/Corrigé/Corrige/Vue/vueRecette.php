<?php $this->titre = "Le Blog culinaire - Recette"; ?>

<div class="container col-xxl-8 px-4 py-5">
<h1 class="display-5 fw-bold text-center line mb-5"><span><?= $recette['rec_nom']?></span></h1>
    <div class="row">
        <?php        
        echo "<div class='col-md-6'>";
            echo "<img class='d-block w-100' src='Contenu/img/".$recette['rec_image']."' alt='".$recette['rec_nom']."'>";
        echo "</div>";
        $ingredients = str_replace("\n", "<br>",$recette['rec_ingredients']);
        $preparation = str_replace("\n", "<br>",$recette['rec_preparation']);
        echo "<div class='col-md-6'>";
            echo "<i class='fa-solid fa-timer'></i>".$recette['rec_temps']
            ."<i class='fa-solid fa-euro-sign'></i>".$recette['rec_budget']
            ."<i class='fa-solid fa-hat-chef'></i>".$recette['rec-difficulte'];
            echo "<div>
            <h2 class='mt-3'>Ingrédients</h2>
            ".$ingredients."</div>";
            echo "<div>
            <h2 class='mt-3'>Préparation</h2>
            ".$preparation."</div>";
        echo "</div>";
         

        echo'<hr class=mt-5>';
        // Affichage des commentaires liés à la recette
        echo "<div class='col-md-12 mt-5'>"
        ."<h2>Les commentaires pour cette recette</h2>";
        if (empty($comments)) {
            echo"<p class=text-center>Aucun commentaire pour cette recette</p>";
        } else {
            foreach ($comments as $comment) {
                echo '<p>';
                echo $comment['com_contenu']."<br>";
                echo "<span class='fw-bold fst-italic'>".$comment['com_auteur']."</span>";
                echo "</p>";
            }
        }
        echo "</div>";
        ?>
    </div>
</div>