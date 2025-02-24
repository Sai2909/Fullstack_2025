function isPalindrom(inputString) {
    inputString = inputString.toLowerCase();
    let start = 0;
    let end = inputString.length - 1;
    for (start, end; start < end; start++, end--) {
        if (inputString[start] !== inputString[end]) {
            return false;
        }
    }
    return true;

}


// function isPalindrom(inputString) {
//     for (let i = 0; i < inputString.length / 2; i++) {
//         if (inputString[i] !== inputString[inputString.length - 1 - i]) {
//             return false
//         }
//     }
//     return true
// }

console.log("Prabhas", isPalindrom("Prabhas"))
console.log("Sai Kiran", isPalindrom("Prabhas"))