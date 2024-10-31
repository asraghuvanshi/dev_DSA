/* Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
 *
 *    You must implement a solution with a linear runtime complexity and use only constant extra space.
*/
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var counter = 0
        for i in 0...(nums.count - 1) {
            counter ^= nums[i]
        }
        return counter
    }
}

func findUniqueNumbers(_ nums: [Int]) -> [Int] {
    var counts = [Int: Int]()
    for num in nums {
        counts[num, default: 0] += 1
    }
    print(counts)
    return counts.filter { $0.value % 2 != 0 }.map { $0.key }
}

let sol = Solution().singleNumber([1,4,4,4,4,3,3,2,2,1,8,8,9])
print(findUniqueNumbers([1,1,2,3,4,6]))

let nums = [2, 2, 3, 3, 4]
var counts = [Int: Int]()

// Count occurrences
for num in nums {
    counts[num, default: 0] += 1
}

print(counts)
for (key, value) in counts {
    print("Key: \(key), Value: \(value)")
}