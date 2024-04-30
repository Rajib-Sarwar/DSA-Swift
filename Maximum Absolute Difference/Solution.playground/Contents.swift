import UIKit

class Solution {
    func maxArr(_ A: inout [Int]) -> Int {
        var addMax = Int.min
        var addMin = Int.max
        var subMax = Int.min
        var subMin = Int.max
        for i in 0..<A.count {
            addMax = max(addMax, A[i] + i)
            addMin = min(addMin, A[i] + i)
            subMax = max(subMax, A[i] - i)
            subMin = min(subMin, A[i] - i)
        }
        return max(addMax - addMin, subMax - subMin)
    }
}
