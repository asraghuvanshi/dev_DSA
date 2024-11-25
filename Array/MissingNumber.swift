class Solution {
     func missingNumber(_ nums: [Int]) -> Int {
       
        //   let n = nums.count
        // let expectedSum = n * (n + 1) / 2
        // let actualSum = nums.reduce(0, +)
        // return expectedSum - actualSum
       
        let sortedNums = nums.sorted()
        for (index, value) in sortedNums.enumerated() {
            if value != index {
                return index
            }
        }
        
        return nums.count
    }
}

let arr = [0,1]
let sol = Solution().missingNumber(arr)

print(sol)