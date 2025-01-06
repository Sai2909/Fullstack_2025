/*
Spread operator is used to expand the elements of an "iterable" like array or string into individual elements.
*/

//with array
const techs = ["react", "javascript", "nodejs", "nextjs"];
console.log(techs)
console.log(...techs)
console.log([...techs])

//combining array
const techs1 = ["react", "javascript", "nodejs", "nextjs"];
const developers = ["shiva", "sai", "ravalika"]
const spread = [...techs1, ...developers]

console.log(spread)

//we can also write using push method
techs1.push(...developers);
console.log(techs1)

//with objects 
const person = {
    name: "sai",
    age: 23
}
console.log({ ...person })



function doSum(times, ...items) {
    let sum = 0;
    for (let item of items){
        sum += item*times;
    }
    return sum;
}

console.log(doSum(1, 1));
console.log(doSum(2, 1, 2));