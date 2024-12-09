class Solution {
   func mySqrt(_ x: Int) -> Int {

    if x == 0 {
        return 0
    }
    
    var low = 0
    var high = x
    
    while low <= high {
        let mid = (low + high) / 2
        let midSquared = mid * mid
        
        if midSquared == x {
            return mid
        } else if midSquared < x {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    
    return high
   }
}

let sol = Solution().mySqrt(13)
print(sol)