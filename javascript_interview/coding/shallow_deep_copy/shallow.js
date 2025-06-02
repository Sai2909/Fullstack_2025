const original = {
    a: 1,
    b: 2,
    c1: {
        c: 3,
        d: 4
    }
}
//spread
let shallowCopy = { ...original }

shallowCopy.a = 10;
shallowCopy.c1.c = 30

console.log(original);
console.log(shallowCopy)
