class MajorityElement {
    func findMajorityElement(_ nums: [Int]) -> Int {
        var dictCount = [Int: Int]()
        for num in nums {
            dictCount[num , default: 0] += 1
        }

        for (index , value) in dictCount {
            if value > dictCount.count / 2 {
                return index
            }
        }

        return 0
    }
}