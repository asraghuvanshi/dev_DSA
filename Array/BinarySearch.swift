import Foundation

func binarySearchAlgorithm(arr: [Int], target: Int) -> Int {
    var low = 0
    var high = arr.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        if arr[mid] == target {
            return mid
        }
        
        if arr[mid] > target {
            high = mid - 1
        }
        else {
            low = mid + 1
        }
    }
    
    return -1
}

let arr = [1, 3, 5, 7, 9, 11, 13, 15, 17]
let target = 7
let result = binarySearchAlgorithm(arr: arr, target: target)