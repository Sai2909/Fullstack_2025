const original = {
    a: 1,
    b: 2,
    c1: {
        c: 3,
        d: 4
    }

}

let deepCopy = JSON.parse(JSON.stringify(original))
deepCopy.a = 10;
deepCopy.c1.c = 30
console.log(original)
console.log(deepCopy)
