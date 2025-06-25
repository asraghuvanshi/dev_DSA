import Foundation

class Solution {
    func mergeSortedArray(arrayF: [Int], arrayS: [Int]) -> Void {
        print(arrayF, arrayS)
        var transformedArr = [Int]()
        var i = 0, j = 0
        while(i < arrayF.count && j < arrayS.count) {
            print(arrayF[i] ,arrayS[j])
            if arrayF[i] < arrayS[j] {
                transformedArr.append(arrayF[i])
                i += 1
            } else {
                transformedArr.append(arrayS[j])
                j += 1
            }
          }

            while i < arrayS.count {
             transformedArr.append(arrayS[i])
             i += 1
             }
           
             while j < arrayS.count {
               transformedArr.append(arrayS[j])
               j += 1
             }

        print(transformedArr)
    }
}


let obj = Solution().mergeSortedArray(arrayF: [10,50,30,40,20] ,arrayS: [70,80,40])