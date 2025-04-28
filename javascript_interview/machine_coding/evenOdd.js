//even or Odd
function checkEvenOrOdd(a) {
    const remainder = a % 2
    if (remainder === 0) {
        return "even"
    } else {
        return "odd"
    }
}

function checkEvenOrOdd2(a) {
    return a % 2 === 0 ? "even" : "odd"
}
console.log(checkEvenOrOdd(13))
console.log(checkEvenOrOdd(12))




function checkNum(num) {
    if (num % 2 === 0) {
        return true;
    } else {
        return false;
    }
}
console.log(checkNum(4))
