class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var mergedArr = (nums1 + nums2).sorted()
        let arrCount = mergedArr.count
        let midNumber = arrCount / 2
        var firstMidNumber = 0.0
        var secondMidNumber = 0.0
        var mid = 0.0
        if arrCount % 2 == 1 {
            mid = Double(mergedArr[arrCount / 2])
        } else {
            firstMidNumber = Double(mergedArr[midNumber - 1])
            secondMidNumber = Double(mergedArr[midNumber])
            mid = (firstMidNumber + secondMidNumber) / 2.0
        }
       
        print(mergedArr, firstMidNumber,secondMidNumber ,mid)

        return mid
    }
}

let sol = Solution()

let result = sol.findMedianSortedArrays([1,2], [3,4])