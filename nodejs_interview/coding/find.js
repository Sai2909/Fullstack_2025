const users = [
    { name: "sai", age: 23 },
    { name: "shiva", age: 25 }
]
const findingShiva = users.find((user) => user.name === 'shiva');
console.log(findingShiva)