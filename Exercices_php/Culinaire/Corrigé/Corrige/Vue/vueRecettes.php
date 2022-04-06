<?php $this->titre = "Le Blog culinaire - Recette"; ?>

<div class="container col-xxl-8 px-4 py-5">
<h1 class="display-5 fw-bold text-center line mb-5"><span>Les recettes</span></h1>
    <div class="row">
        <?php        
             foreach ($recipes as $recipe): ?>
                <div class="col-12 col-md-6 col-xl-4 my-3">
                <div class="card mx-auto" style="width: 18rem;">
                <a href="index.php?action=recette&id=<?= $recipe['rec_id']; ?>">
                  <img src="./Contenu/img/<?=  $recipe['rec_miniature'];?>" class="card-img-top" alt="...">
                </a>
                  <div class="card-body">
                    <p class="card-text"><?=  $recipe['rec_nom'];?></p>
                  </div>
                </div>
              </div>
             <?php endforeach;
        ?>
    </div>
</div>