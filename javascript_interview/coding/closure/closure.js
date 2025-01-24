/*
-Lexical scope defines the how varibales names are resoloved in nested functions.
-nested funs have access to the scope their parent function 
-this is often confused with clouser, but lexical scope is only an important part of clouser.
closure is a fn having access to the parent scope even after the parent fn has closed.
-closure is created when we defined a fn not when a fn is executed.
-
*/
//Global scope
let x = 1;
function parentFunction() {
    //loacl scope
    let myValue = 5;
    console.log(x)
    console.log(myValue)
    const childFunction = () => {
        console.log(x += 10);
        console.log(myValue += 1)
    }
    // childFunction()
    return childFunction

}

// parentFunction()

const result = parentFunction();
result();
result();
console.log(x);
console.log(myValue)  // no defined 