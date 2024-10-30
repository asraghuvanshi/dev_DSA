// class PascaleTriangle {
//      func pascleTriangle(num: Int) {
//         let newArr:[Int] = .init(repeating: 0, count: num + 1) 

//         print(newArr)
//      }
// }

class PascaleTriangle {
    func generatePascleTriangle(_ numRows: Int) -> [[Int]] {
        var triangle: [[Int]] = []

        for row in 0..<numRows {
            let newRow = (0...row).map { col in
                if col == 0 || col == row {
                    return 1
                } else {
                    return triangle[row - 1][col - 1] + triangle[row - 1][col]
                }
            }
            triangle.append(newRow)
        }

        return triangle
    }
}


let arrModel = PascaleTriangle().generatePascleTriangle(5)
print(arrModel)