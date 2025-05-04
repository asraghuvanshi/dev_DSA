class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in (i + 1)..<nums.count {
                if nums[i] + nums[j] == target {
                   return [i ,j]
                }
            }
        }
        return [0]
    }
}

let numArray = [2,7,11,15]
let numIndex = numArray.enumerated().map{($0.offset , $0.element)}
print(numIndex)
let sol = Solution().twoSum(numArray, 9)
print(sol)