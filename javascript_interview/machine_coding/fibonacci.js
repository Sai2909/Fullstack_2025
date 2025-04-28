function fibonacci(n) {
    let a = 0, b = 1, temp;
    for (let i = 2; i <= n; i++) {
        temp = a + b;
        a = b;
        b = temp;
    }
    return n === 0 ? a : b;

}
console.log(fibonacci(9));






function fibonacciSeries(n) {
    let series = [0, 1];
    for (let i = 2; i < n; i++) {
        series.push(series[i - 1] + series[i - 2]);
    }
    return series
}
console.log(fibonacciSeries(8))




function fibbo(fib) {
    let values = [0, 1];
    for (let i = 2; i < fib; i++) {
        values.push(values[i - 1] + values[i - 2]);
    }
    return values
}
console.log(fibbo(9))