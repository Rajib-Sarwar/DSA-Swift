# Swift Cheatsheet - DSA

## declaring an array
```
var numbers = [1, 2, 3, 4, 5] //array of integers

var fruits = ["Apple", "Banana", "Orange", "Mango"] //array of strings

var emptyArray: [Int] = [] //empty array of integers

var animals: [String] = ["Dog", "Cat", "Elephant"] //array with explicit type annotation

var colors = Array<String>() //array using Array constructor

var repeatedArray = Array(repeating: 0, count: 5) //array with repeated values
```

## iterate an array
```
let numbers = [1, 2, 3, 4, 5]
```
###For loop with values only
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

###For loop with indices only:
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

###For loop for index-value pairs:
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

###Special - For loop with `stride`
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

###Special - For loop with `zip`
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
