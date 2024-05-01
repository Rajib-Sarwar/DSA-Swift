import Foundation

class Solution {
    func flip(_ A: inout String) -> [Int] {
        var A = Array(A)
        var count = 0, maxCount = Int.min
        var i = 0
        var l = 0, r = -1
        for j in 0..<A.count {
            count += A[j] == "0" ? 1 : -1
            
            if count < 0 {
                i = j+1
                count = 0
            } else if count > maxCount {
                maxCount = count
                l = i
                r = j
            }
        }

        if r == -1 {
            return []
        }

        return [l+1, r+1]
    }
}
