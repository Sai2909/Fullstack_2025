/*
filter
new Set
forEach
reduce
*/
const removeDuplicateValues = [1, 2, 2, 3, 4, 4, 5];


// const uniqueArray = removeDuplicateValues.filter((item, index) => removeDuplicateValues.indexOf(item) == index);
// console.log(uniqueArray);

// const uniqueArray = [...new Set(removeDuplicateValues)]
// console.log(uniqueArray)

// const uniqueArray = [];
// removeDuplicateValues.forEach(item => {
//     if (!uniqueArray.includes(item)) {
//         uniqueArray.push(item)
//     }
// })
// console.log(uniqueArray)

const uniqueArray = removeDuplicateValues.reduce((accumulate, currentValue) => {
    if (!accumulate.includes(currentValue)) {
        accumulate.push(currentValue)
    }
    return accumulate;
}, [])

console.log(uniqueArray)





