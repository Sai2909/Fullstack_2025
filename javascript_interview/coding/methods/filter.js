//filter method is used to filter values from an array and return new filtered ARRAY
const products = [
    { name: "Wireless Mouse", price: 19.99, inStock: true },
    { name: "KeyBoard", price: 45.99, inStock: false },
    { name: "Monitor", price: 45543, inStock: true },
    { name: "HeadPhone ", price: 3452, inStock: false },
    { name: "DeskTop ", price: 4567, inStock: true },
];

const inStock = products.filter((product) => product.inStock)
console.log(inStock)