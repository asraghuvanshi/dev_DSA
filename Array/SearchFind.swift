class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if nums.max() ?? 0 < target {
            return nums.count
        }
        
        for (index, value) in nums.enumerated() {
            if value >= target {
                return index
            }
        }
        
        return 0
    }
}
var arr = [1,2,4,5,6]
let sol = Solution()
let result = sol.searchInsert(arr, 3)
print(result)