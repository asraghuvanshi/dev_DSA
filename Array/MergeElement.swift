class MergeElement {
    func mergeArr(for arr1: [Int], with arr2: [Int]) {
        var i = 0, j = 0
        
        print(arr1, arr2)
        
        var merged = [Int](repeating: 0, count: arr1.count + arr2.count)
        var k = 0

        while i < arr1.count && j < arr2.count {
            if arr1[i] < arr2[j] {
                merged[k] = arr1[i]
                i += 1
            } else {
                merged[k] = arr2[j]
                j += 1
            }
            k += 1
        }

        // Copy remaining elements
        while i < arr1.count {
            merged[k] = arr1[i]
            i += 1
            k += 1
        }

        while j < arr2.count {
            merged[k] = arr2[j]
            j += 1
            k += 1
        }

        print("Merged array:", merged)
    }
}

let sol = MergeElement()
sol.mergeArr(for: [1, 2, 3, 4, 6], with: [5, 6, 7, 8])
