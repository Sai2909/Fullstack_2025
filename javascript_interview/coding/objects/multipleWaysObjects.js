const myBio = {
    name: "saikiran",
    age: 23
}
console.log("Methods-1", myBio)

let myBio1 = new Object();
console.log("Methods-2", myBio1);

let myBio2 = Object.create(null);
console.log("Methods-3", myBio2)

function Person(name) {
    this.name = name;
    this.age = 23
}
var myBio3 = new Person("Sai Kiran");
console.log("Methods-4", myBio3)


function Person1() { }
Person.prototype.name = "Prabhas";
var myBio4 = new Person1();
console.log("Methods-5", myBio4)