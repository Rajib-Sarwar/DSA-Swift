import Foundation

class Solution {
    func maxSubArray(_ A: [Int]) -> Int {
        var maxSum = Int.min
        var sum = 0

        for num in A {
            sum += num
            maxSum = max(sum, maxSum)

            if sum < 0 {
                sum = 0
            }
        }
        return maxSum
    }
}
