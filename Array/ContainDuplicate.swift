import Foundation

class ContainDuplicate {
  func isContainDuplicate(_ nums : [Int]) -> Bool {
    var dictArr = [Int : Int]()
    
    for i in nums {
      dictArr[i , default:0] += 1
    }
    for item in dictArr {
      if item.value > 1 {
        return true
      }
    }
    return false
  }

  //  func isContainDuplicate(_ nums: [Int]) -> Bool {
  //   var seen = Set<Int>()
    
  //   for num in nums {
  //     if seen.contains(num) {
  //       return true
  //     }
  //     seen.insert(num)
  //   }
    
  //   return false
  // }
}

let arr = [1,2,3,4,4,4,5,6]
let solution = ContainDuplicate().isContainDuplicate(arr)
print(solution)
