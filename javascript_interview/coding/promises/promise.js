const creatingPromise = new Promise((resolve, reject) => {
    let status = 200;
    if (status === 200) {
        resolve("success...")
    } else {
        reject("Faild...")
    }
})

creatingPromise
    .then((result) => console.log(result))
    .catch((error) => console.log(error))
    .finally(() => console.log("Completed..."))