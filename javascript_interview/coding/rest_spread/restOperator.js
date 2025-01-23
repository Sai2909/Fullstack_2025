/*
=>Rest operator is used to multiple elements into single array or object.
=> This is useful when we don’t know how many parameters a function may receive and you want to capture all of them as an array.
*/

var student = {
    name: "Sai",
    age: 24,
    hobbies: ["Vollyball", "Cricket"]
}

console.log(student.name)
console.log(student.hobbies[0])

//using destrcturing
const { age, ...rest } = student;
console.log(age, rest)