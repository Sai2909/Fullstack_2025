fetch('https://jsonplaceholder.typicode.com/posts').then((response) => {
    response.json().then(data => {
        console.log(data)
        if (data.error) {
            console.log(data.error)
        } else {
            console.log(data[0].title)
        }
    })
})
    .catch((error) => console.error('Fetch error:', error));