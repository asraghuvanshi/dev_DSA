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

    func twoSumSortedArray(_ nums: [Int], _ target: Int) -> [Int] {
        let indexedNums = nums.enumerated().map { (index, num) in (index, num) }
       // let indexedNums:[(Int, Int)] = Array(nums.enumerated())


        let sorted = indexedNums.sorted { $0.1 < $1.1 }
        
        var left = 0
        var right = sorted.count - 1
        
        while left < right {
            let sum = sorted[left].1 + sorted[right].1
            if sum == target {
                return [sorted[left].0, sorted[right].0]  
            } else if sum < target {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return []
    }

}

let numArray = [2,7,11,15]
let numIndex = numArray.enumerated().map{($0.offset , $0.element)}
print(numIndex)
let sol = Solution().twoSum(numArray, 9)
print(sol)