class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var counter: Int = 0
        var uniqueArray = Set<Int>()
        for (index , value) in nums.enumerated() {
            if uniqueArray.contains(value) {
                return true
            } else {
                uniqueArray.insert(value)
            }
        }
        return false
    }
}

let nums = [1,2,3,1]

let sol = Solution().containsDuplicate(nums)
print(sol)