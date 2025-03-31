class Solution {
    func reverseVowels(_ s: String) -> String {
        var vowels: [Character] = []
        let vowelSet: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        var stringArr = Array(s)

        for char in stringArr {
            if vowelSet.contains(char) {
                vowels.append(char)
            }
        }

        for i in 0..<stringArr.count {
            if vowelSet.contains(stringArr[i]) {
                stringArr[i] = vowels.popLast()!
            }
        }

        return String(stringArr)
    }
}