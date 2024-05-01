import Foundation

class Solution {
    func solve(_ A: inout Int, _ B: inout [[Int]]) -> [Int] {
        var amounts = Array(repeating: 0, count: A)

        for devotee in B {
            var amount = devotee[2]
            amounts[devotee[0]-1] += amount
            if devotee[1] < A {
                amounts[devotee[1]] -= amount
            }
        }

        for i in 1..<A {
            amounts[i] += amounts[i-1]
        }

        return amounts
    }
}
