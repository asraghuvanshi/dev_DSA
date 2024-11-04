/*
    A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
    Given a string s, return true if it is a palindrome, or false otherwise.

     Example 1:

    Input: s = "A man, a plan, a canal: Panama"
    Output: true
    Explanation: "amanaplanacanalpanama" is a palindrome.
*/


import Foundation

class Solution {
    static func isPalindrome(_ s: String) -> Bool {
        if s.isEmpty {
            return true
        } else {
            // let pattern = "[^a-zA-Z0-9]"
            // if let regex = try? NSRegularExpression(pattern: pattern, options: []) {
            //     let range = NSRange(s.startIndex..., in: s)
            //     let trimmedString = regex.stringByReplacingMatches(in: s, options: [], range: range, withTemplate: "")
            //      print(trimmedString)
            //      if trimmedString.reversed() == s {
            //          return true
            //      } else {
            //          return false
            //      }
            //  }
            // }     

            let allowedCharacters = CharacterSet.alphanumerics
            let trimmedString = s.unicodeScalars.filter { allowedCharacters.contains($0) }.map { String($0) }.joined().lowercased()
            if String(trimmedString.reversed()) == trimmedString {
                return true
            } else {
                return false
            }
       }
    }
}


let str = Solution.isPalindrome("ios developer,: developer ios")
print(str)