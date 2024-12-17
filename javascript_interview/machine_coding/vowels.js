function vowelsCount(inputString) {
    console.log(inputString)
    let result = inputString.toLowerCase().replace(/ /g, "")

    let vowel = "aeiou"
    let countVowel = 0
    for (let i = 0; i < result.length; i++) {
        if (vowel.includes(result[i])) {
            countVowel++
        }
    }
    return countVowel
}
console.log(vowelsCount("hello world"))