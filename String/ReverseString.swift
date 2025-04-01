class Solution {
    func reverseString(_ s: inout [Character]) {
        var min = 0
        var max = s.count - 1

        while(min < max) {
            let temp = s[min]

            s[min] = s[max]
            s[max] = temp

            min += 1
            max -= 1
        }
        return s
    }
}

var nums = ["h","e","l","l","o"]
let n = Character(nums[0])

var charArray = nums.compactMap{ $0.first}

let sol = Solution().reverseString(&charArray)
print(type(of: charArray))
