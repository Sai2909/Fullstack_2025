console.log(a);  
 
var a = 10;  
 
async function fetchData() {

  console.log("Fetching data...");

  setTimeout(() => {

    console.log("Timeout executed");

  }, 0);
 
  Promise.resolve().then(() => console.log("Promise resolved 1"));
 
  await Promise.resolve().then(() => console.log("Promise resolved 2"));
 
  console.log("After await");
 
  return "Data received";

}
 
fetchData().then(console.log);
 
console.log("End of script");