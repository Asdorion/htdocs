'use strict'

// déclaration des variables
let formins = document.querySelector('#formInscription');
let formconnexion = document.querySelector('#formconnexion');

/** Ecoute du champs Téléphone et vérification du nombre de caractères saisis.
 * @param  {String} telephone
 * @param  {Array} tel
 * @param  {String} alerttel
 */
formins.telephone.addEventListener('change', function() {
    let telephone = formins.telephone.value;
    let tel = telephone.split(" ");
    tel = tel.join("");
    let alerttel = document.getElementById("alerttel");
        if (tel.length != 10) {
           alerttel.classList.remove("masque");
        } else {
            alerttel.classList.add("masque");
        };
});


/** Ecoute du champs Email et vérification de la forme.
 * @param  {String} mail
 * @param  {String} alertmail
 * @param  {RegExp} mailref
 */
formins.mail.addEventListener('change', function () {
    let mail = formins.mail.value;
    let alertmail = document.getElementById('alertmail');
    let mailref = RegExp('[a-zA-Z0-9-_.]+[@]{1}[a-zA-Z0-9-_.]+[.]{1}[a-zA-Z]{2,4}$','g');
    if (mailref.test(mail)) {
        alertmail.classList.add('masque');
    } else {
        alertmail.classList.remove('masque');
    };
});


/** Ecoute d'un changement du champs Mot de passe et vérificartion du respect des consignes.
 * @param  {String} mdp
 * @param  {String} alertcons
 */
formins.mdp.addEventListener('change', function () {
    let mdp = formins.mdp.value;
    let alertcons = document.getElementById('alertcons');
    // Test si absence d'une minuscule
    if (!/[a-z]/.test(mdp)) {
        alertcons.classList.remove('masque');
    } 
    // Test si absence d'une majuscule
    else if (!/[A-Z]/.test(mdp)) {
        alertcons.classList.remove('masque');
    } 
    // Test si absence d'un chiffre
    else if (!/[0-9]/.test(mdp)) {
          alertcons.classList.remove('masque');
    }
    // Vérification de la présence d'au moins 5 caractères
    else if (mdp.lenght < 5) {
        alertcons.classList.remove('masque');
    } else {
        alertcons.classList.add('masque');
    };
});


/** Ecoute du champs de confirmation du mot de passe et vérification de la concordance avec le mot de passe.
 * @param  {String} mdp
 * @param  {String} mdpconf
 * @param  {String} alertmdp
 */
formins.mdpconf.addEventListener('change', function () {
    let mdp = formins.mdp.value;
    let mdpconf = formins.mdpconf.value;
    let alertmdp = document.getElementById('alertmdp');
    if (mdp != mdpconf) {
        alertmdp.classList.remove('masque');
    } else {
        alertmdp.classList.add('masque');
    };
});


// Ecoute du bouton €noyer et vérification de l'absence de champs vide
formins.envoyer.addEventListener('click', function () {
    let civilites = formins.civilites.value;
    let nom = formins.nom.value;
    let prenom = formins.prenom.value;
    let adresse = formins.adresse.value;
    let cp = formins.cp.value;
    let ville = formins.ville.value;
    let telephone = formins.telephone.value;
    let mail = formins.mail.value;
    let mdp = formins.mdp.value;
    let mdpconf = formins.mdpconf.value;
    if ((civilites != 'on') || (nom == '') || (prenom == '') || (adresse == '') || (cp =='') || (ville == '') || (telephone == '') || (mail == '') || (mdp == '') || (mdpconf == '')) {
        alert('Le formulaire est incomplet');
    };
});

// Ecoute du bouton Connexion et vérification de l'absence de champs vide
formconnexion.connexion.addEventListener('click', function () {
    let login = formconnexion.login.value;
    let comdp = formconnexion.comdp.value;
    if ( (login == '') || (comdp == '')) {
        alert('Le formulaire de connexion est incomplet');
    };
});