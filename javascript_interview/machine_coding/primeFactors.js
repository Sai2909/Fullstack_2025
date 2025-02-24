function factors(n) {
    let factors = [];
    for (let i = n; i >= 1; i--) {
        if (n % i === 0) {
            factors.push(i);
        }
    }
    return factors;
}
console.log(factors(42))