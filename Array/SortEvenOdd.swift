
let arr = [5,4,3,2,1,6,7,8]
var evenArray = [Int]() 
var oddArray = [Int]() 
for item in arr {
    (item % 2 == 0) ? evenArray.append(item) : oddArray.append(item)
}

print(evenArray.sorted() , oddArray.sorted())

var numbers = [5, 2, 8, 1, 3]

for i in 0..<numbers.count {
    for j in 0..<(numbers.count - 1 - i) {
        if numbers[j] > numbers[j + 1] {
            // Swap the elements if they're in the wrong order
            let temp = numbers[j]
            numbers[j] = numbers[j + 1]
            numbers[j + 1] = temp
        }
    }
}

print(numbers)  // Output: [1, 2, 3, 5, 8]
