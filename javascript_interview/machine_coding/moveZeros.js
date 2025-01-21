function moveZeroes(nums) {
    // create a new array to store non-zero elements
    let result = [];

    // first, add all non-zero elements to the new array
    for (let i = 0; i < nums.length; i++) {
        if (nums[i] !== 0) {
            result.push(nums[i]);
            console.log("step1:", nums[i]);  // Log the element being added
        }
    }

    // calculate how many zeros are needed
    let zeroCount = nums.length - result.length;
    console.log("zeroCount:", zeroCount);  // Log the correct zero count

    // append the zeros to the new array
    for (let i = 0; i < zeroCount; i++) {
        result.push(0);
        console.log("adding zeros:", result);  // Log the result after adding zeros
    }

    // copy the result array back to the original array
    for (let i = 0; i < nums.length; i++) {
        nums[i] = result[i];
        console.log("Updated nums[i]:", nums[i]);  // Log the updated nums array
    }
}

console.log(moveZeroes([0, 1, 0, 3, 12]));
