class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var temp = 0
        for i in 0..<nums.count {
                if nums[i] != val {
                  nums[temp] = nums[i]
                  temp += 1
                }
        }
        return temp
    }
}


var arr = [3,2,2,3]
let sol = Solution()
let result = sol.removeElement(&arr, 3)
print(arr)