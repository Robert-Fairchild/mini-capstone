/* global axios */

axios.get("http://localhost:3000/v1/products").then(function(response) {
  var products = response.data;
  console.log(products);

  var productTemplate = document.querySelector("#product-card");
  var productContainer = document.querySelector(".row");

  products.forEach(function(product) {
    var clone = productTemplate.content.cloneNode(true);

    clone.querySelector(".card-img-top").src = product.image;
    clone.querySelector(".card-title").innerText = product.name;
    clone.querySelector(".card-text").innerText = product.description;

    productContainer.appendChild(clone);
  });
});
