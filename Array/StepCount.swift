class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n == 1 {
            return 1
        }
        if n == 2 {
            return 2
        }

        var dp = [0, 1, 2]
        for i in 3...n {
            dp.append(dp[i-1] + dp[i-2])
        }
        return dp[n]
    }
}
let sol = Solution() 
let result = sol.climbStairs(5)