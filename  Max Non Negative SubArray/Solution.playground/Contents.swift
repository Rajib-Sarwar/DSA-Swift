import Foundation

class Solution {
    func maxset(_ A: inout [Int]) -> [Int] {
        var maxSum = 0
        var curStart = -1
        var curSum = 0
        var curLength = 0
        var maxLength = 0

        for i in 0..<A.count {
            if A[i] >= 0 {
                curSum += A[i]
                curLength += 1
                
                if curSum > maxSum || (curSum == maxSum && curLength > maxLength) {
                    maxSum = curSum
                    maxLength = curLength
                    curStart = i - curLength + 1
                }
            } else {
                curSum = 0
                curLength = 0
            }
        }
        
        if curStart == -1 {
            return []
        } else {
            return Array(A[curStart..<(curStart + maxLength)])
        }
    }
}
