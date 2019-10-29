const updateFigures = (price, unit, quantity) => {
  price.innerText = (unit.innerText * quantity.innerText).toFixed(1);
  const prices = document.querySelectorAll(".price");
  let sum = 0;
  prices.forEach((price) => {
    sum += parseInt(price.innerText);
  });
  const total = document.querySelector(".total");
  total.innerText = sum.toFixed(1);
  const quantities = document.querySelectorAll(".q");
  let sum2 = 0
  quantities.forEach((q) => {
    sum2 += parseInt(q.innerText);
  });
  const basketQuantity = document.getElementById("basket-quantity");
  basketQuantity.innerText = `Basket [ ${sum2} ]`
}

const addListeners = (add, subtract, quantity, unit, price) => {
  if (add !== null) {
    add.addEventListener('click', (event) => {
      quantity.innerText = parseInt(quantity.innerText) + 1;
      updateFigures(price, unit, quantity);
      // debugger
    });
  }
  if (subtract !== null) {
    subtract.addEventListener('click', (event) => {
      if (quantity.innerText > 1) {
        quantity.innerText -= 1;
      }
      updateFigures(price, unit, quantity);
    });
  }
}

const documentQueries = (row) => {
  const subtract = row.querySelector(".subtract");
  const add = row.querySelector(".add");
  const quantity = row.querySelector(".q");
  const unit = row.querySelector(".unit");
  const price = row.querySelector(".price");
  addListeners(add, subtract, quantity, unit, price);
}

const rows = document.querySelectorAll(".basket-rows");
rows.forEach(documentQueries);
