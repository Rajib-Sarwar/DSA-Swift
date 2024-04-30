import Foundation

class Solution {
    func firstMissingPositive(_ A: inout [Int]) -> Int {
        var i = 0

        while i < A.count {
            if A[i] > 0 && A[i] < A.count && A[i] != A[A[i] - 1] {
                let temp = A[i]
                A[i] = A[temp - 1]
                A[temp - 1] = temp
            } else {
                i += 1
            }
        }

        for i in 0..<A.count {
            if A[i] != i+1 {
                return i+1
            }
        }
        return A.count + 1
    }
}
