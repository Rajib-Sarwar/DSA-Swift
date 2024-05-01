import Foundation

class Solution {
    func solve(_ A: inout [Int]) -> Int {
        for i in 1..<A.count {
            A[i] += A[i-1]
        }

        for i in 0..<A.count {
            let l = i == 0 ? 0 : A[i-1]
            let r = i == A.count-1 ? 0 : A[A.count-1] - A[i]
            if l == r {
                return i
            }
        }
        return -1
    }
}

