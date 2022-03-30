<?php 

require 'vue.php';

// vueRecette.php
$this->titre= "Le blog culinaire"; ?>
      
            <div class="card mx-auto mt-5 mb-5" style="width: 18rem;">
                <img src="img/<?=  $recipes["rec_miniature"]; ?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <p class="card-text"><?= $recipes["rec_resume"]; ?></p>
                </div>
            </div>
        <div class="text-center">
            <h5 class="text-dark"><?= $comments['com_contenu'];?></h5>
            <p class="text-dark"><?= $comments['com_auteur'];?></p>
            <p class="text-recipe-carousel fst-italic">Recette : <?= $recipes['rec_nom'];?></p>
        </div>

