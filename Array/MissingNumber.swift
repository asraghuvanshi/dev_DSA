class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
      let n = nums.count
      let total = n * (n + 1) / 2
      let sum = nums.reduce(0, +)
      return total - sum
    }
}

let nums = [3,0,1]
let sol = Solution().missingNumber(nums)
print(sol)
