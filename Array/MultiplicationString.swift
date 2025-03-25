class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
    let m = num1.count
    let n = num2.count
    
    if num1 == "0" || num2 == "0" {
        return "0"
    }
    
    var result = Array(repeating: 0, count: m + n)
    
    for i in (0..<m).reversed() {
        for j in (0..<n).reversed() {
            let digit1 = Int(String(num1[num1.index(num1.startIndex, offsetBy: i)]))!
            let digit2 = Int(String(num2[num2.index(num2.startIndex, offsetBy: j)]))!
            let product = digit1 * digit2
            let sum = product + result[i + j + 1]
            
            result[i + j + 1] = sum % 10
            result[i + j] += sum / 10
        }
    }
    
    var resultStr = ""
    for num in result {
        if !(resultStr.isEmpty && num == 0) { 
            resultStr.append(String(num))
        }
    }
    
    return resultStr
    }
}


let sol = Solution().multiply("10", "50")

print(sol)