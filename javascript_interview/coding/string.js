/*
Double quotes
• Single quotes
• Backticks: special template strings in which you can use variables directly
*/

let singleString = 'Hi there!';
let doubleString = "How are you?";

// let funActivity = 'Let's learn JavaScript';
// let question = "Do you want to learn JavaScript? "Yes!"";

let language = "JavaScript";
let message = `Let's learn ${language}`;
console.log(message);

let x = 2;
x += 2;  //x=x+2
console.log(x)

let a = 5;
let b = "5";
console.log(a == b);
console.log(a === b);
console.log(a != b)
console.log(a !== b)


let num = 6;
let num1 = 7
console.log(num > num1)


/*
&&:: It will only return true if both expressions are
true
*/

let age = 23;
let age1 = 26;
let age2 = 38;

console.log(age < age1 && age1 < age2);
console.log(age > age1 && age1 < age2);

/*
||:: If you want to get true if either one of the expressions is true, you use or.
These pipes are used to see if either one of these two is true,
in which case the whole expression evaluates to true
*/

console.log(age > age1 || age1 < age2);


/*
Not::!
In some cases you will have to negate a Boolean. This will make it the opposite value.
It can be done with the exclamation mark, which reads as not:
*/

let isAvailable = false;
console.log(!x);


let price = 1;
let price1 = 2;
console.log(!(price < price1));


