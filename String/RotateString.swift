/* 
    Problem Number: 796. Rotate String
    Given two strings s and goal, return true if and only if s can become goal after some number of shifts on s.
    A shift on s consists of moving the leftmost character of s to the rightmost position.
    For example, if s = "abcde", then it will be "bcdea" after one shift.
    Example 1:
    Input: s = "abcde", goal = "cdeab"
    Output: true
 */

import Foundation

class RotateString {
	func rotateString(_ s: String, _ goal: String) -> Bool {
		guard s.count == goal.count else {
			return false
		}
		let appendedString = s + s
		return appendedString.contains(goal)
	}

	func rotateString1(_ s: String, _ goal: String) -> Bool {
	    let putString = Array(s)
	    var goalString = Array(goal)
        for _ in putString {
            if goalString == putString {
                return true
            } else {
                goalString.insert(goalString.last! , at: 0)
                goalString.removeLast()
            }
        }
    	return false
    }
}

let sol = RotateString().rotateString("amit", "mita")
let obj = RotateString().rotateString1("amit", "mita")
print(sol, obj)
