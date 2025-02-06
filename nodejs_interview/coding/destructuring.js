const name = 'sai';
const userAge = 34;

const user = {
    name,
    age: userAge,
    location: 'USA'
}

console.log(user)

const bio = {
    name: 'Andrew',
    age: 27,
    location: 'Philadelphia'
}

// The line below uses destructuring 
const { age, location: address } = bio

console.log(age)
console.log(address)


//destructuring with function arguments

const products = {
    name: 'tv',
    price: 34567,
    location: 'hyderabad'
}

const transcation = (type, { name, location }) => {
    console.log(type, name, location)
}
transcation('order', products)