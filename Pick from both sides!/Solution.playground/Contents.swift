import Foundation

class Solution {
    func solve(_ A: inout [Int], _ B: inout Int) -> Int {
        for i in 1..<A.count {
            A[i] += A[i-1]
        }

        //special edge case
        if B == A.count {
            return A[A.count - 1]
        }

        var maxSum = Int.min
        for i in 0...B {
            let leftPick = i == 0 ? 0 : A[i-1]
            let rightPick = i == B ? 0 : A[A.count - 1] - A[A.count - B + i - 1]
            maxSum = max(maxSum, leftPick + rightPick)
        }

        return maxSum
    }
}
