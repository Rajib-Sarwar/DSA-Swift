# Swift Cheatsheet - DSA

- `let` is for constants; their value cannot change.
- `var` is for variables; their value can change.
  

## Declaring an Array
```
var numbers = [1, 2, 3, 4, 5] //array of integers

var fruits = ["Apple", "Banana", "Orange", "Mango"] //array of strings

var emptyArray: [Int] = [] //empty array of integers

var animals: [String] = ["Dog", "Cat", "Elephant"] //array with explicit type annotation

var colors = Array<String>() //array using Array constructor

var repeatedArray = Array(repeating: 0, count: 5) //array with repeated values
```

## Iterate an array
```
let numbers = [1, 2, 3, 4, 5]
```
#### For loop with values only
```
//Forward
for number in numbers {
    print("Element: \(number)")
}

numbers.forEach { number in
    print("Element: \(number)")
}

//Backward
for number in numbers.reversed() {
    print("Element: \(number)")
}
```

#### For loop with indices only:
```
//Forward
for index in numbers.indices {
    print("Index: \(index), Element: \(numbers[index])")
}

for index in 0..<numbers.count {
    print("Index: \(index), Element: \(numbers[index])")
}

//Backward
for index in numbers.indices.reversed() {
    print(index)
}
```

#### For loop for index-value pairs:
```
//Forward
for (index, number) in numbers.enumerated() {
    print("Index: \(index), Element: \(number)")
}

//Backward
for (index, number) in numbers.enumerated().reversed() {
    print("Index: \(index), Element: \(number)")
}
```

#### Special - For loop with `stride`
```
//Forward
for index in stride(from: 0, to: numbers.count, by: 1) {
    print("Index: \(index), Element: \(number)")
}

// Backward
for index in stride(from: numbers.count - 1, through: 0, by: -1) {
    print("Index: \(index), Element: \(number)")
}
```

#### Special - For loop with `zip`
```
// Iterate backward over the array along with indices using zip
for (index, number) in zip(numbers.indices.reversed(), numbers.reversed()) {
    // Process each index and element
    print("Index: \(index), Element: \(number)")
}

let numbers = [1, 2, 3, 4, 5]
let letters = ["A", "B", "C", "D", "E"]
// Iterate backward over two arrays along with indices using zip
for (numberIndex, letterIndex) in zip(numbers.indices.reversed(), letters.indices.reversed()) {
    let number = numbers[numberIndex]
    let letter = letters[letterIndex]
    print("Index: \(numberIndex), Number: \(number), Letter: \(letter)")
}

```

#### Using while loop:
```
var index = numbers.count - 1 // Start from the last index

while index >= 0 {
    let number = numbers[index]
    print("Index: \(index), Number: \(number)")
    index -= 1 // Move to the previous index
}
```

#### Using repeat-while loop:
```
var index = numbers.count - 1 // Start from the last index
repeat {
    let number = numbers[index]
    print("Index: \(index), Number: \(number)")
    index -= 1 // Move to the previous index
} while index >= 0

```

## Access the first and last elements
```
var numbers = [1, 2, 3, 4, 5]

// Accessing the first element
let firstElement = numbers.first // firstElement is now equal to 1

// Accessing the last element
let lastElement = numbers.last // lastElement is now equal to 5

// Removing the first element
let removedFirst = numbers.removeFirst() // removedFirst is now equal to 1, and numbers is [2, 3, 4, 5]

// Removing the last element
let removedLast = numbers.removeLast() // removedLast is now equal to 5, and numbers is [2, 3, 4]
```


## Modifying an Array
```
var numbers = [1, 2, 3, 4, 5]

numbers.append(6) //Appending 6 to the end of the array

numbers.insert(0, at: 0) // Inserting 0 at the beginning of the array

numbers.remove(at: 2) // Removing the element at index 2 (third element)

numbers.replaceSubrange(0..<2, with: [0, 0])
```

## Declaring a Set
```
var set1 = Set<Int>() // Initialize an empty set of integers
var set2: Set<String> = Set() // Initialize an empty set of strings

var set3: Set<Character> = ["a", "b", "c"] // Initialize a set with an array literal
```

## Accessing and Modifying Sets
```
var set: Set<String> = ["apple", "banana", "orange"]
if set.contains("apple") {
    print("Apple is in the set")
}

set.insert("grape") // Add an element
let removedFruit = set.remove("banana") // Remove an element and returns the removed value
```

## Array Technique

### Prefix Sum (PS)
```
Ar  : [-3, 6, 2, 4, 5,  2,   8, -9, 3 ]
PS  : [-3, 3, 5, 9, 14, 16, 24, 15, 18]

PS[0] = Ar[0]
for i in 1..<Ar.count {
    PS[i] = PS[i-1] + Ar[i]
}
```

### Carry Forward
```
leftMax[i] = Maximum value in array from index 0 to index i

Ar : [-3, 6, 2, 4, 5, 2, 8, -9, 3, 1]
LM : [-3, 6, 6, 6, 6, 6, 8,  8, 8, 8]

LM[0] = A[0]
for i in 1..<Ar.count {
    LM[i] = max(LM[i-1] + Ar[i])
}


rightMax[i] = Maximum value in array from index i to the last index

Ar : [-3, 6, 2, 4, 5, 2, 8, -9, 3, 1]
LM : [ 8, 8, 8, 8, 8, 8, 8,  3, 3, 1]

RM = [Int](repeating: 0, count: n)
RM[n - 1] = Ar[n - 1]
for i in stride(from: n - 2, through: 0, by: -1) {
    RM[i] = max(RM[i + 1], Ar[i])
}
```





