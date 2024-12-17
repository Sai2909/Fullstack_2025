function zeros(nums) {
    let left = 0;
    let right = 0;

    while (right < nums.length) {
        if (nums[right] !== 0) {
            [nums[right], nums[left]] = [nums[left], nums[right]];
            left++;
        }
        right++;
    }
    return nums; array
}

console.log(zeros([1, 2, 0, 3, 0, 4, 6, 0, 9]));
