// fetch(url, {
//     method: 'post',
//     headers: {
//       "Content-type": "application/x-www-form-urlencoded; charset=UTF-8"
//     },
//     body: 'foo=bar&lorem=ipsum'
//   })
//   .then(json)
//   .then(function (data) {
//     console.log('Request succeeded with JSON response', data);
//   })
//   .catch(function (error) {
//     console.log('Request failed', error);
//   });

const addListeners = (add, subtract, quantity) => {
  add.addEventListener('click', (event) => {
    quantity.innerText += 1;
    // event.preventDefault();
  });
  subtract.addEventListener('click', (event) => {
    quantity.innerText -= 1;
    // event.preventDefault();
  });
}

const documentQueries = (row) => {
  const subtract = row.querySelector(".subtract");
  const add = row.querySelector(".add");
  const quantity = row.querySelector(".q");
  addListeners(add, subtract, quantity);
}

const quantities = document.querySelectorAll(".quantity");
quantities.forEach(documentQueries);





// const observer = new MutationObserver(function(mutations) {
//   mutations.forEach(function(mutation) {
//     console.log(mutation);
//   });
// });

// const config = {
//   characterData: true,
//   subtree: true
// };

// const quantities = document.querySelectorAll('.quantity');
// console.log(quantities);
// quantities.forEach(function(node) {
//   observer.observe(node, config);
// });
