function cal(inputNumber) {
  if (inputNumber < 0) {
    throw new Error("input number should be graterthan are equal to zero... ");
  }
  let result = 1;
  for (let i = 1; i <= inputNumber; i++) {
    result = result * i
    // result *= i
  }
  return result;
}
console.log(cal(4))

//another way
const findFactorial = (num) => {
  if (num == 0 || num == 1) {
    return 1;
  } else {
    return num * findFactorial(num - 1);
  }
};

console.log(findFactorial(4));



function fact(take) {
  if (take < 0) {
    throw new Error("Input numbers should be greater than or equal zero");
  }
  let soComming = 1;
  for (let i = 1; i <= take; i++) {
    soComming = soComming * i;
  }
  return soComming;

}
console.log(fact(5))

