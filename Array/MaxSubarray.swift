import Foundation
//  Kadane algorithm to find subarray sum 
class MaxSubArraySum {
    func maxSubArraySum(arr: [Int]) {
        guard !arr.isEmpty else { return }

        var maxSum = arr[0]
        var currentSum = arr[0]

        var start = 0
        var end = 0
        var tempStart = 0

        for i in 1..<arr.count {
            if arr[i] > currentSum + arr[i] {
                currentSum = arr[i]
                tempStart = i
            } else {
                currentSum += arr[i]
            }

            if currentSum > maxSum {
                maxSum = currentSum
                start = tempStart
                end = i
            }
        }

        let subArray = Array(arr[start...end])
        print("Max Sum =", maxSum)
        print("Subarray =", subArray)
    }
}

let sol = MaxSubArraySum().maxSubArraySum(arr: [-2, 1, -3, 4, -1, 2, 1, -5, 4])
