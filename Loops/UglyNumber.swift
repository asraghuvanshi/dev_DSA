/* An ugly number is a positive integer which does not have a prime factor other than 2, 3, and 5.
Given an integer n, return true if n is an ugly number. */

class Solution {
    func isUgly(_ n: Int) -> Bool {
            if n <= 0 { return false }

    var nums = n
    let allowedPrimes = [2, 3, 5]

    for prime in allowedPrimes {
        while nums % prime == 0 {
            nums /= prime
        }
    }

    return nums == 1
    }
}