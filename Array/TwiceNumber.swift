class Solution {
    func getSneakyNumbers(_ nums: [Int]) {
        var resultArrar = [Int]()
        var counter = 0
        for i in 1...nums.count - 1 {
            for j in 1...nums.count - 1 {
                if nums[i] == nums[j] {
                    if counter == 2 {
                        counter = 0
                        return
                    } else {
                        resultArrar.append(nums[i])
                       counter += 1
                    }
                }
            }
            print(resultArrar)
        }
    }
}


let sol = Solution()
let arr = [1,2,3,5,7,8,9,5,12, 14,12]

sol.getSneakyNumbers(arr)