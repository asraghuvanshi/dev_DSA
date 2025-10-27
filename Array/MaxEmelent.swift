import Foundation

class MaxElement {
    func maxElement(arr: [Int]) -> Int {
        guard !arr.isEmpty else { return Int.min }
        var maxValue = arr[0]
        
        for num in arr {
            if num > maxValue {
                maxValue = num
            }
        }
        return maxValue
    }
}

let sol = MaxElement().maxElement(arr: [11,6,7,2,3,4,15])
print(sol)


class MoveElement {
 func moveZeros(_ arr: inout [Int]) {
    var insertPos = 0
    for num in arr where num != 0 {
        arr[insertPos] = num
        insertPos += 1
    }
    while insertPos < arr.count {
        arr[insertPos] = 0
        insertPos += 1
    }
}

}
var arr = [0, 0, 1]
MoveElement().moveZeros(&arr)
print(arr)