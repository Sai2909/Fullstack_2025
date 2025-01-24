function fetchData(callback) {
    // Simulate fetching data asynchronously
    setTimeout(function () {
        const data = { name: "John", age: 30 };
        callback(data); // Call the callback function with the retrieved data
    }, 5000); // Simulate a delay of 1 second
}

function processData(data) {
    console.log("Received data:", data);
}

fetchData(processData); // Pass the processData function as a callback