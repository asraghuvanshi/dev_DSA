class BalancedString {
    static func isBalanced(_ num: String) -> Bool {
        var evenSum = 0
        var oddSum = 0

        for (index, number) in num.enumerated() {
            guard let digit = Int(String(number)) else {
                continue
            }
            if index % 2 == 0 {
                evenSum += digit
            } else {
                oddSum += digit
            }
        }
        
        return evenSum == oddSum
    }
}


let sol = BalancedString.isBalanced("24123")
print(sol)