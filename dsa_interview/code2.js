/*
2. Find the maximum and minimum element in an array.
*/

let numbers = [3, 7, 2, 8, 5];
let max = numbers[0]; // initialize to the first value

for (let i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
        max = numbers[i];
    }
}

console.log(max); // Outputs: 8

/*
//Pre defined Methods
let numbers = [3, 7, 2, 8, 5];
let max = Math.max(...numbers);

console.log(max); // Outputs: 8

//using reduce() methods
let numbers = [3, 7, 2, 8, 5];
let max = numbers.reduce((accumulator, currentValue) => {
    return Math.max(accumulator, currentValue);
}, numbers[0]);

console.log(max); // Outputs: 8
*/


