class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for (i, value1) in nums.enumerated() {
            for (j, value2) in nums.enumerated() {
                if (i != j) && (value1 + value2 == target) {
                    return [i, j]
                }
            }
        }
        return []
    }

   func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (i, num) in nums.enumerated() {
            if let j = dict[target - num] {
                return [j, i]
            }
            dict[num] = i

        }
        return []
    }
}

let solo = Solution().twoSum2([3,4,2] , 6)
