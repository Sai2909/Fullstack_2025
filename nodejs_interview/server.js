/*
const check = require('./coding/sample'); // Import the check function
check();

--------------******-------------------------


*/


const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('hello express')
})
app.get('/element', (req, res) => {
    // Provide HTML to render in the browser 
    res.send('<h1>Weather</h1>')
})
app.get('/data', (req, res) => {
    // Provide an object to send as JSON 
    res.send({
        forecast: 'It is snowing',
        location: 'Philadelphia'
    })
})
app.get('/weather', (req, res) => {
    res.send('Your weather')
})
app.listen(3000, () => {
    console.log('Server is up on port 3000.')
}) 
