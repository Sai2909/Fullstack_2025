function inputString(input) {
    if (typeof input !== "string") {
        throw new Error('Only string are allowed..!')
    }
    let result = "";
    for (let i = input.length - 1; i >= 0; i--) {
        result += input[i]
    }
    return result

}
console.log(inputString('hellg manchalaa'))