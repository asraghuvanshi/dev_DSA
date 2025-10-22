var arr = [10, 20, 30, 40, 50]
let removeIndex = 2
var index = 0
var newArray = [Int]()

while index < arr.count {
    if index != removeIndex {
        newArray.append(arr[index])
    }
    index += 1
}


print(newArray)