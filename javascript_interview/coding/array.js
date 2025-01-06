//which one is better
let empty1 = undefined;
let empty2 = null;


let arr1 = new Array("purple", "green", "yellow");
let arr2 = ["black", "orange", "pink"];
let arr3 = new Array(10);
let arr4 = [10];

console.log(arr3);
console.log(arr4);



let arr = ["hi there", 5, true];
console.log(typeof arr[0]);
console.log(typeof arr[2]);


const arrayy = ["hi there"];
arrayy[0] = "new value";
console.log(arr[0]);


let cars = ["Toyota", "Renault", "Volkswagen"];
console.log(cars[0]);
console.log(cars[1])
console.log(cars[3]);
console.log(cars[-1]);
cars[0] = "Tesla";
console.log(cars[0]);


colors = ["black", "orange", "pink", "green"]
booleans = [true, false, false, true];
emptyArray = [];
console.log("Length of colors:", colors.length);
console.log("Length of booleans:", booleans.length);
console.log("Length of empty array:", emptyArray.length);


lastElement = colors[colors.length - 1];
console.log(lastElement)


//task
let fruits = ["milk", "bread", "apple"];
console.log(fruits.length);
fruits[1] = "banana";
console.log(fruits);


//array methods
//adding end push
let tech = ["React", "node"];
tech.push("mssql");
console.log(tech)


//slice
let arrOfShapes = ["circle", "triangle", "rectangle", "pentagon"];
arrOfShapes.splice(2, 0, "square", "trapezoid"); //indexing(inserting) ,deleting
console.log(arrOfShapes);

arrOfShapes.splice(2, 2, "square", "trapezoid");
console.log(arrOfShapes);

/*
If you were to increase the second parameter to a number higher than our array, it
would not affect the result as JavaScript would simply stop as soon as it runs out of
values to delete. Try the following
*/
arrOfShapes.splice(2, 12, "square", "trapezoid");
console.log(arrOfShapes);


let arr5 = [1, 2, 3];
let arr6 = [4, 5, 6];
let arr7 = arr5.concat(arr6);
console.log(arr7);


//finding elements
let arr8 = [2, 6, 7, 8];
let findValue = arr8.find(function (e) { return e === 6 });
let findValue2 = arr8.find(e => e === 10);
console.log(findValue, findValue2);
/*
The log statement will log 6 and undefined because it can find an element that
matches for 6, but not one that matches for 10. 
*/


let arrrrrr = [2, 6, 7, 8];
let findIndex = arrrrrr.indexOf(6);
let findIndex2 = arrrrrr.indexOf(10);
console.log(findIndex, findIndex2);

let aarr8 = [2, 6, 7, 8];
let findIndex3 = aarr8.indexOf(6, 2);
/* In this case, the value of findIndex3 will be -1, because 6 cannot be found starting
from index 2.*/

let mothu = [0, 1, 2];
console.log(typeof mothu);



