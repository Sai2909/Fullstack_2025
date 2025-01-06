/*
=>It is introduced in Es6.
=> It allows us to assign the object properties and array values into variables.
*/

const cars = {
    name: "scoda",
    price: 200000,
    model: 2025
}
const result = cars.name
console.log(result)

const { name, price, model } = cars;
console.log(name, price)



const person = {
    name1: 'sAI',
    personDetails: {
        Technology: ['React', 'Node'],
        yearsToServe: 25
    }
};

const { name1 } = person
const { yearsToServe, Technology } = person.personDetails;
