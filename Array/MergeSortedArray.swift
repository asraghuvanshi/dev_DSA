import Foundation

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
            let res = nums1.removeSubrange(m..<nums1.count)
            print(nums1)
        let result = nums1.append(contentsOf: nums2)
        let filterResult = nums1.filter { $0 != 0 }
        print(filterResult.sorted(by: <))
    }
}

var arr1 = [1,2,3, 1], arr2 = [4,5,6] , m = 3 , n = 3

let sol = Solution().merge(&arr1, m,arr2, n)
