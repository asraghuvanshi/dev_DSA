import Foundation

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        // var newArray = [String]()
        // var word = ""
        let stringWithoutWhiteSpaces = s.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // for i in (0...stringWithoutWhiteSpaces.count - 1).reversed() {
        //     let index = stringWithoutWhiteSpaces.index(stringWithoutWhiteSpaces.startIndex, offsetBy: i)
        //     if stringWithoutWhiteSpaces[index] == " "{
        //         break
        //     }else {
        //         word.append(stringWithoutWhiteSpaces[index])
        //     }
        // }
        // print(stringWithoutWhiteSpaces.last, word))
        let strArr = stringWithoutWhiteSpaces.split(separator: " ")
        if let lastWord = strArr.last {
                let lastWordCount = lastWord.count
                return lastWordCount

        } else {
             return 1
        }
    }
}

let sol = Solution()
sol.lengthOfLastWord("swift ios development")