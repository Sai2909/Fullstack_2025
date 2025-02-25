function findMax(inputNumber) {
    if (inputNumber.length === 0) {
        return undefined;
    }
    let max = inputNumber[0]

    for (let i = 0; i < inputNumber.length; i++) {
        if (inputNumber[i] > max) {
            max = inputNumber[i];
        }
    }
    return max;

}
console.log(findMax([1, 2, 4, 6, 3, 876, 4, 5]))