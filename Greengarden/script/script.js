'use strict'

// déclaration des variables
let formins = document.querySelector('#formInscription');


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

