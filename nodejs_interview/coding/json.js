const books = {
    name: 'reactjs',
    author: 'saikiran'
}

const jsonStrigfy = JSON.stringify(books)
console.log(jsonStrigfy)


const jsonParse = JSON.parse(jsonStrigfy)
console.log(jsonParse)