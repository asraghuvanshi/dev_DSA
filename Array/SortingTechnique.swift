//  Sort Array Data
import Foundation

func sortArrData(arr: inout [Int]) {
    for i in 0..<arr.count {
        for j in (i + 1)..<arr.count {
            if arr[i] > arr[j] {
                let temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
            }
        }
    }

    print(arr)
}


var arr = [1,2,3,4,5,6,3,21,2,1,2,2,3,1]


sortArrData(arr: &arr)