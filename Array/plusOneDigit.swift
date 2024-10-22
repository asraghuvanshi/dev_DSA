class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var strDigits = ""
        for i in digits {
            strDigits += "\(i)"
        }
        let intVal = (Int(strDigits) ?? 0)
        
        let result = String(intVal + 1).compactMap { Int(String($0))}

        return result
    }

    func plusOneDigit(arr : [Int]) -> [Int] {
        var carray = 1

        for i in 0..<arr.count.reversed() {
           if arr[i] < 9 {
            arr[i] + 1
           }
        }
    }
}

// MARK:  Optimise Solution
// class Solution {
//    func plusOne(_ digits: [Int]) -> [Int] {
//     var digits = digits
//     for i in (0..<digits.count).reversed() {
//         if digits[i] < 9 {
//             digits[i] += 1
//             return digits
//         }
//         digits[i] = 0
//     }
    
//     var newDigits = [Int](repeating: 0, count: digits.count + 1)
//     newDigits[0] = 1
//     return newDigits
//     }
// }



let sol = Solution()
let arrData = [1,2,3,4,6]
sol.plusOne(arrData)
sol.plusOneDigit(arrData)