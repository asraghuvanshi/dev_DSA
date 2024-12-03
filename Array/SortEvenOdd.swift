
let arr = [5,4,3,2,1,6,7,8]
var evenArray = [Int]() 
var oddArray = [Int]() 
for item in arr {
    (item % 2 == 0) ? evenArray.append(item) : oddArray.append(item)
}

print(evenArray.sorted() , oddArray.sorted())