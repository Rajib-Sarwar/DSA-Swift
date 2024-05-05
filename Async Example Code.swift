import Foundation

enum FibonacciError: Error {
    case invalidInput
    case calculationError(message: String)
}

var memo: [Int: Int] = [:]

func fibonacci(_ n: Int) async throws -> Int {
    guard n >= 0 else {
        throw FibonacciError.invalidInput
    }
    
    if let result = memo[n] {
        return result
    }
    
    if n <= 1 {
        memo[n] = n
        return n
    } else {
        let fib1 = try await fibonacci(n - 1)
        let fib2 = try await fibonacci(n - 2)
        
        let safeResult = fib1 + fib2
        memo[n] = safeResult
        return safeResult
    }
}

// Test edge cases
Task {
    let testCases: [Int] = [-5, 0, 1, 50]
    for testCase in testCases {
        do {
            let nthFibonacci = try await fibonacci(testCase)
            print("Fibonacci number for \(testCase) is \(nthFibonacci)")
        } catch FibonacciError.invalidInput {
            print("Error: Invalid input. Input should be a non-negative integer.")
        } catch FibonacciError.calculationError(let message) {
            print("Error: \(message)")
        } catch {
            print("An unexpected error occurred.")
        }
    }
}
