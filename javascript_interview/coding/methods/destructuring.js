//Array destructuring is a unique technique that allow you to neately extract an arrays value into new variables.
const products = [
    { name: "Wireless Mouse", price: 19.99, inStock: true },
    { name: "KeyBoard", price: 45.99, inStock: false },
    { name: "Monitor", price: 45543.88, inStock: true },
    { name: "HeadPhone ", price: 3452.975, inStock: false },
    { name: "DeskTop ", price: 4567.35, inStock: true },
];


const [{ name: firstProductName, price: firstProductPrice }] = products;
console.log(firstProductName)

const product = { name: "Monitor", price: 45543.88, inStock: true }
const { name, price, inStock } = product
console.log(name, price, inStock)