import UIKit

// Problem:
/// 1. I'd love to eliminate duplicated items (Set)
/// 2. I'd love to combine all kinds types of types (Tuples)
///
//: Introducing Sets
/**
 * A set stores values of the same type in a collection with no defined ordering and no duplicated elements.
 */

//: Multiple ways to create arrays
var arrayOne: [Double] = [] // 👍
var arrayTwo = [Double]()

var arrayThree: Array<Double> = Array()
var arrayFour: Array<Double> = []
var arrayFive = Array([1123.08, 234.23])
var arraySix = Array(1...100)
var arraySeven = Array(repeatElement("Bob", count: 10))

//: Multiple ways to create State
var setOne: Set = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 1, 1]
var setTwo: Set<String> = ["Bob", "Bobby", "Bob the developer"]
var setThree = Set<String>()
var setFout = Set(["Bob", "Rob", "Dob"]) // 👍
//: Built-in Set Methods
setThree.insert("Bob")
setThree.contains("Bob")
setThree.remove("Bob")

//: Generate odd and even numbers
var oddNumbers: [Int] = []
var evenNumbers: [Int] = []

for number in 1...50 {
    if number % 2 == 0 {
        evenNumbers.append(number)
    } else {
        oddNumbers.append(number)
    }
}

print(oddNumbers)

//: Convert array<Int> or [Int] to Set<Int>
var oddNumberSet = Set(oddNumbers)
let evenNumberSet = Set(evenNumbers)

//: Union
print(oddNumberSet.union(evenNumberSet))

//: SymmetricDifference
print(oddNumberSet.symmetricDifference(evenNumberSet))

//: Intersection
print(oddNumberSet.intersection(evenNumberSet))

//: Subtraction
print(oddNumberSet.subtract(evenNumberSet))

var numberSet = Set([1, 2, 3])
var secondNumberSet = Set([1, 2])

numberSet.subtract(secondNumberSet)
print(numberSet)

//: Filter/Sort
// Convert Sets to sorted Array
let sortedArray = evenNumberSet.sorted()
print(sortedArray)

// Functional Programming
let sortedArrayFromHighToLow = evenNumberSet.sorted { $0 > $1 }
print(sortedArrayFromHighToLow)

//: Pratical Usage of Set
/// 1. Finding unique letters
/// 2. Finding unique visitors
/// 3. Any game logic
let firstScore = (name: "Bob", score: 9)
firstScore.0
firstScore.1

firstScore.name
firstScore.score

//: Practical Usage
let httpSuccess = (code: 200, description: "success")
httpSuccess.code

//let httpFailure: [Any] = [401, "Fail"]
//: Bonus Tips
// Okay
var dog = "dog", cat = "cat"
print(dog)

var (x, y, z) = (1, 2, 3)
print(x)
print(y)
print(z)

var shoppingList = ["Eggs", "Milk", "Rice"]

for (index, value) in shoppingList.enumerated() {
    print(index, value)
}
