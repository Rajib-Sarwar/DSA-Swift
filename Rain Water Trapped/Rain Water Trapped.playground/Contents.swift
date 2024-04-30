import Foundation

class Solution {
    func trap(_ A: [Int]) -> Int {
        var rmArray = Array(repeating: 0, count: A.count)
        rmArray[A.count - 1] = A[A.count - 1]

        for index in stride(from: A.count-2, through: 0, by: -1) {
            rmArray[index] = max(rmArray[index + 1], A[index])
        }

        var leftMax = A[0]
        var maxWater = 0
        for index in 1..<A.count {
            leftMax = max(A[index], leftMax)
            let water = min(rmArray[index], leftMax) - A[index]
            maxWater += water <= 0 ? 0 : water
        }
        return maxWater
    }
}
