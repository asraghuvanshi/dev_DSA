class Solution {
    func reverse(_ x: Int) -> Int {
        let intMinValue = Int32.min
        let intMaxValue = Int32.max 

        let isNegativeValue = x < 0 ? -1 : 1

         var reversed = 0
         var tempNumber = x
         while tempNumber != 0 {
             let remainder = tempNumber % 10
             tempNumber = tempNumber / 10
           if reversed > intMaxValue / 10 || (reversed == intMaxValue / 10 && remainder > 7) {
                return 0
            }
            if reversed < intMinValue / 10 || (reversed == intMinValue / 10 && remainder < -8) {
                return 0
            }
             reversed = reversed * 10 + remainder

         }

        return reversed
    }
}


let sol = Solution()
let result = sol.reverse(-123)

print(result)