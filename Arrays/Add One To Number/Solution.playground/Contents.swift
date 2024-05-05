import Foundation

class Solution {
    func plusOne(_ A: inout [Int]) -> [Int] {
        var ans = [Int]()
        
        var i = 0
        while i<A.count && A[i] == 0 {
            i += 1
        }

        var remainder = 1
        for j in stride(from: A.count-1, through: i, by: -1) {
            let sum = remainder + A[j]
            ans.append(sum%10)
            remainder = sum/10
        }

        if remainder != 0 {
            ans.append(remainder)
        }

        return ans.reversed()
    }
}
