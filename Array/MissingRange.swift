class RangeSolution {
    func findRanges(_ nums: [Int]) -> [String] {
       if nums.isEmpty {
        return []
    }
    
    var result = [String]()
    var start = nums[0] 
    for i in 1..<nums.count {
        if nums[i] != nums[i - 1] + 1 {
            if start == nums[i - 1] {
                result.append("\(start)")
            } else {
                result.append("\(start)->\(nums[i - 1])")
            }
            start = nums[i] 
        }
    }
    
    if start == nums[nums.count - 1] {
        result.append("\(start)")
    } else {
        result.append("\(start)->\(nums[nums.count - 1])")
    }
    
    return result
    }
}

let sol = RangeSolution()
let nums = [0,1,2,4,5,7]
sol.findRanges(nums)