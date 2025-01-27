//creates new array
const products = [
    { name: "Wireless Mouse", price: 19.99, inStock: true },
    { name: "KeyBoard", price: 45.99, inStock: false },
    { name: "Monitor", price: 45543, inStock: true },
    { name: "HeadPhone ", price: 3452, inStock: false },
    { name: "DeskTop ", price: 4567, inStock: true },
];

// const productsName = products.map(product => product.name)
// console.log(productsName)

//(()=>())
const increaPrice = products.map((product) => product.price = product.price + 10)
console.log(increaPrice)

