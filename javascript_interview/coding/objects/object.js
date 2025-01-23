let dog = {
    dogName: "JavaScript",
    weight: 2.4,
    color: "brown",
    breed: "chihuahua",
    age: 3,
    burglarBiter: true
};

console.log(dog)
let dogColor1 = dog["color"];
console.log(dogColor1)

//another way
let dogColor2 = dog.color;
console.log(dogColor2)


//updating object

dog["color"] = "blue";
dog.weight = 2.3;
console.log(dog)

//It's useful to note that if we change the data type of one of our properties, for 
dog["age"] = "three";
console.log(dog)

let variable = "age";
console.log(dog[variable]);


let company = {
    companyName: "Healthy Candy",
    activity: "food manufacturing",
    address: {
        street: "2nd street",
        number: "123",
        zipcode: "33116",
        city: "Miami",
        state: "Florida"
    },
    yearOfEstablishment: 2021
};

company.address.zipcode = "33117";
company["address"]["number"] = "100";
console.log(company)


let company2 = {
    companyName: "Healthy Candy",
    activities: ["food manufacturing",
        "improving kids' health", "manufacturing toys"],
    address: {
        street: "2nd street",
        number: "123",
        zipcode: "33116",
        city: "Miami",
        state: "Florida"
    },
    yearOfEstablishment: 2021
};


let activity = company2.activities[1];
console.log(activity)


let addresses = [{
    street: "2nd street",
    number: "123",
    zipcode: "33116",
    city: "Miami",
    state: "Florida"
},
{
    street: "1st West avenue",
    number: "5",
    zipcode: "75001",
    city: "Addison",
    state: "Texas"
}];

let streetName = addresses[0].street;
console.log(streetName)

