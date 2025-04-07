"""
Input: nums = [1,1,2]
Output: 2, nums = [1,2,_]
Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
It does not matter what you leave beyond the returned k (hence they are underscores).
"""
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        print(nums)
        var index = 1
        for i in 1..<nums.count {
            if nums[i] != nums[i-1]{
                nums[index] = nums[i]
                index += 1
            }
        }

        return 4
    }
}

var numArr = [0,0,1,1,1,2,2,3,3]

let sol = Solution().removeDuplicates(&numArr)
