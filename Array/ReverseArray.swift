class ReserseArray {

    func reverseArr(_ arr: [Int]) {
        var reversedArr = [Int](repeating: 0, count: arr.count)
        for i in 0..<arr.count {
           reversedArr[arr.count - 1 - i] = arr[i]
        }
        print("Reversed array: - ",reversedArr)
    }


    func reverseArray2(_ arr: [Int]) {
        var reversedArr = [Int](repeating: 0 , count: arr.count) 

        var i = 0, j = arr.count - 1
        while i < arr.count {
            reversedArr[j] = arr[i]
            i += 1
            j -= 1
        }
        print("Resersed array: \(reversedArr)")
    }

    func reserseInPlace(_ arr: inout [Int]) {
        var i = 0, j = arr.count - 1

        while(i < j) {
            let temp =  arr[i]
            arr[i] = arr[j]
            arr[j] = temp
            i += 1
            j -= 1
        }

        print("Reversed array in place: \(arr)")
    }
}



let sol = ReserseArray()
var arr = [1,2,3,4,5,6,7,8,9]
sol.reverseArr(arr)
sol.reverseArray2(arr)

sol.reserseInPlace(&arr)