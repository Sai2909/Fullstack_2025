const geocode = (address, callback) => {
    setTimeout(() => {
        const data = {
            address: address,
            latitude: 345,
            longitude: 346,
        }
        callback(data)
    }, 2000)
}
geocode('usa', (data) => {
    console.log(data)
})