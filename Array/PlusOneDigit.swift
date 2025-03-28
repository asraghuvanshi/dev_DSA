class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits 
        for i in (0..<digits.count).reversed() {
            if digits[i] < 9 {
                digits[i] += 1
                return digits
            } else {
                digits[i] = 0
            }
        }

        return [1] + digits
    }
}


class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var nums = digits 
        for i in (0..<nums.count).reversed() {
            if nums[i] < 9 {
                nums[i] += 1  
                return nums
            } else {
                nums[i] = 0  
            }
        }
        
        nums.insert(1, at: 0) 
        return nums
    }
}
