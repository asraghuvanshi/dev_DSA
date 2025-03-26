class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
      var index = 0
        
        for i in 0..<nums.count {
            if nums[i] != val {
                nums[index] = nums[i]
                index += 1  
            }
        }
        
        nums.removeSubrange(index..<nums.count)
        
        return index  
    }
}
