
//brute force
// function twoSum(nums, target) {
//     for (let i = 0; i < nums.length; i++) {
//         for (let j = i + 1; j < nums.length; j++) {
//             if (nums[i] + nums[j] == target) {
//                 return [i, j]
//             }
//         }
//     }
// }

// nums = [9, 1, 5, 4, 7]
// target = 12
// console.log(twoSum(nums, target))


/*
two pointers :
first sort the array
set one pointe at the beginning (left) and another at the end (right) of the array.


*/
function twoSum(nums, target) {
    //store intial indexes
    nums = nums.map((num, index) => ({ num, index }))
    //sort the array
    nums.sort((a, b) => a.num - b.num);
    let left = 0;
    let right = nums.length - 1;

    while (left <= right) {
        const sum = nums[left].num + nums[right].num;
        if (sum === target) {
            return [nums[left].index, nums[right].index];
        } else if (sum < target) {
            left++;
        } else {
            right--;
        }
    }

}

nums = [9, 1, 5, 4, 7]
target = 12
console.log(twoSum(nums, target))