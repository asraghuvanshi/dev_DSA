func stepsCount(_ n: Int) -> Int {
    if n <= 1 {
        return 1
    }

    var dp:[Int] = .init(repeating: 0, count: n + 1)
    print(dp)
    dp[0] = 1
    dp[1] = 1

    for i in 2...n {
        dp[i] = dp[i - 1] + dp[i - 2]
    }

    return dp[n]
}

let steps = 3
let result2 = stepsCount(steps)
print(" \(steps) steps: \(result2)")
