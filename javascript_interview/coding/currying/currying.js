/*
currying is tranforming a function that takes mulitple arguments into sequence of functions. each taking single argument.

*/


function curryingExp(a, b) {
    return a + b;
}
console.log(curryingExp(2, 3))



function curriedAdd(a) {
    return function (b) {
        return a + b;
    };
}

console.log(curriedAdd(2)(3));


function y(a) {
    return function (b) {
        return function (c) {
            return function (d) {
                return a + b + c + d;
            }
        }
    }
}

let getSumOne = y(5)(4)(3)(9);
console.log(getSumOne)