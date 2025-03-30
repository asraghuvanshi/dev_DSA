
class Solution {
    var transformedArray = [[Int]]()
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = Int.min  
        for i in 0..<nums.count {
            for j in (i + 1)...nums.count {
                let rotatedArr = Array(nums[i..<j])
                transformedArray.append(rotatedArr)

                let arraySummation = rotatedArr.reduce(0, +)
                
                maxSum = max(maxSum, arraySummation)
            }
        }

        return maxSum
    }
}

let sol = Solution().maxSubArray([-2,1,-3,4,-1,2,1,-5,4])

print(sol)