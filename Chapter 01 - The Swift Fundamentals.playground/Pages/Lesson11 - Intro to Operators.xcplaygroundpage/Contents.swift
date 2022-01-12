import UIKit

//: Problem: Write less, produce more
//: Definition -> An operator is a symbol for a function
/// Unary operators
!true //false
!false // true
//: Binary operators
1 + 2
4 == 4
1 / 4
5 % 2

//: ### Ternary Operators
//: Typical Else-if
let iCanDrink = false

if iCanDrink {
    print("You may enter")
} else {
    print("No no")
}

//: Tertiary Operator
iCanDrink ? print("You may enter") : print("No no")

var evenNumbers: [Int] = []
var oddNumbers: [Int] = []

for number in 1...50 {
    (number % 2 == 0) ? evenNumbers.append(number) : oddNumbers.append(number)
}

//: Unwrapping Optionals
var age: Int? = nil
var defaultAge: Int = 20

var finalUserAge = Int() // 0
if age != nil {
    finalUserAge = age!
} else {
    finalUserAge = defaultAge
}

//: Nil-Coalescing Operator
finalUserAge = age ?? defaultAge
