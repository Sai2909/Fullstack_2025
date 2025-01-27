/*
the flat() method of array instances creates a new  array 
with all sub-array elements concatenated into it recursively to the specifiede depth.
*/

const nestedArray = [1, [2, [3, 4]], 5, [6, [7, 8, [9]]]];
const flataArray = nestedArray.flat(Infinity);
const flataArray1 = nestedArray.flat(2);
console.log(flataArray)
console.log(flataArray1)
