/*
var has global scope and let has block scope. var's global scope means that you can
use the variables defined with var in the entire script. On the other hand, let's block
scope means you can only use variables defined with let in the specific block of code
in which they were defined. Remember, a block of code will always start with { and
end with }, which is how you can recognize them.
On the other hand, const is used for variables that only get a value assigned once—
for example, the value of pi, which will not change. If you try reassigning a value
declared with const, you will get an error:
const someConstant = 3;
someConstant = 4;
*/

let nr1 = 12;
var nr2 = 8;
const PI = 3.14159;