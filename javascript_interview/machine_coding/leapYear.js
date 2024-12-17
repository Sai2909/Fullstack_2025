//Leapyear or not
function isLeapYear(year) {
    if (year % 4 === 0) {
        return true
    } else {
        return false
    }
}

function isLeapYear2(year) {
    if (year % 4 === 0) {
        return true
    }
    return false
}

function isLeapYear3(year) {
    return year % 4 === 0
}

console.log("isLeapYear(2023)", isLeapYear(2023))
console.log("isLeapYear(2024)", isLeapYear(2024))
