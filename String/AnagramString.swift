/*    Given two strings s and t, return true if t is an anagram
      of s, and false otherwise.
      Example 1:

      Input: s = "anagram", t = "nagaram"
*/

import Foundation 
class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        
        var frequencyDict = [Character: Int]()
        for char in s {
            frequencyDict[char, default: 0] += 1
        }
        
        for char in t {
            if let count = frequencyDict[char], count > 0 {
                frequencyDict[char]! -= 1
            } else {
                return false
            }
        }
        
        return true
    }

    
    // func isAnagram1(_ s: String, _ t: String) -> Bool {
    //     return s.sorted() == t.sorted()
    // }

}


