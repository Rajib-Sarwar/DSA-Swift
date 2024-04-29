import UIKit

/**
 Problem Description
 You are given an array of N integers, A1, A2, .... AN.

 Return the maximum value of f(i, j) for all 1 ≤ i, j ≤ N. f(i, j) is defined as |A[i] - A[j]| + |i - j|, where |x| denotes absolute value of x.

 Problem Constraints
 1 <= N <= 100000
 -109 <= A[i] <= 109

 Input Format
 First argument is an integer array A of size N.

 Output Format
 Return an integer denoting the maximum value of f(i, j).

 Example Input
 Input 1:
 A = [1, 3, -1]
 Input 2:
 A = [2]

 Example Output
 Output 1:
 5
 Output 2:
 0
 **/


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
