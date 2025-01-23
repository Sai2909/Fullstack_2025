const fetchPrimaryData = () =>
    fetch("https://jsonplaceholder.typicode.com/albums/1").then((res) =>
        res.json()
    );
const fetchSecondaryData = () =>
    fetch("https://jsonplaceholder.typicode.com/albums/2").then((res) =>
        res.json()
    );
const fetchTertiaryData = () =>
    fetch("https://jsonplaceholder.typicode.com/albums/3").then((res) =>
        res.json()
    );

Promise.any([fetchPrimaryData(), fetchSecondaryData(), fetchTertiaryData()])
    .then((data) => {
        console.log("Fetched data from one of the sources:", data);
    })
    .catch((error) => {
        console.error("All promises rejected:", error);
    });

