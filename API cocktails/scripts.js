let btn = document.getElementById('search');
let choice = document.getElementById('choice');
let gallery = document.getElementById('gallery');

function createNode(element) {
    return document.createElement(element);
}

function append(parent, el) {
    return parent.appendChild(el);
}

btn.addEventListener('click', function(event) {
    event.preventDefault();
    let value = choice.value;
    const url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s="+value;
    
    fetch(url)
    .then((resp) => resp.json())
    .then(function(data){
        let cocktails = data.drinks;
        let cocktail = cocktails.map(function(obj_cocktail) {
            // return obj_cocktail.strDrinks;
            let card = createNode('div');
            let img = createNode('img');
            img.src = obj_cocktail.strDrinkThumb;
            let title = createNode('h1');
            title.innerHTML = `${obj_cocktail.strDrink}`;
            card.classList.add('card');
            card.classList.add("col-md-3");
            img.classList.add("car-img-top");
            append(card, img);
            append(card, title);
            append(gallery, card);
        });
    })
    .catch((error) => console.log('error'))
})