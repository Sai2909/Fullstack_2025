//reduce method is used to reduce the array into one single value using some functional logic.
const products = [
    { name: "Wireless Mouse", price: 19.99, inStock: true },
    { name: "KeyBoard", price: 45.99, inStock: false },
    { name: "Monitor", price: 45543.88, inStock: true },
    { name: "HeadPhone ", price: 3452.975, inStock: false },
    { name: "DeskTop ", price: 4567.35, inStock: true },
];


const reducePrice = products.reduce((total, product) => total + product.price, 0) //here total like temporry total =19.99 next  19.99+ 45.99
console.log(reducePrice)
console.log(reducePrice.toFixed(2))