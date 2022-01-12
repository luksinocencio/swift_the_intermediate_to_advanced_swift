import UIKit

let highSchoolGPA = [2.8, 3.2, 3.5, 3.8, 3.5]
let favoritePeople = ["Elon Musk", "Steve Jobs", "Kevin O'leary"]
let favoriteNumbers = [3, 20]

//: Worst
highSchoolGPA[0]
highSchoolGPA[1]
highSchoolGPA[2]

//: Typical Solution
func printDoubleElement(array: [Double]) {
    for GPA in array {
        print(GPA)
    }
}

func printStringElementArray(array: [String]) {
    for person in array {
        print("I love \(person)")
    }
}

func printNumberElement(array: [Int]) {
    for number in array {
        print("I like \(number)")
    }
}

printDoubleElement(array: highSchoolGPA)

//: Introducing Generics
func genericFunction<anything>(value: anything) {
    print(value)
}

genericFunction(value: highSchoolGPA)
genericFunction(value: "Bob")

func genericfunctions<T>(value: T) {
    print(value)
}

func printElement<T>(array: [T]) {
    for element in array {
        print(element)
    }
}

printElement(array: highSchoolGPA)
printElement(array: favoritePeople)
printElement(array: favoriteNumbers)

/**
 * Generic code enables you to write flexible, reusable functions and types that can work with
 * any type, subject to requirements tha you define.
 */

//: Struct Met Generics
// Non-generic code
struct Family {
    var members: [String] = []
    
    mutating func push(member: String) {
        members.append(member)
    }
}

var myFam = Family()
myFam.push(member: "Bob")
myFam.members

struct GenericFam<T> {
    var members: [T] = []
    
    mutating func push(member: T) {
        members.append(member)
    }
}

//: Generic Initialization
// T Implicity Defined
let myHappyFamily = GenericFam(members: [1, 2, 3, 4, 5])

// T Explicitly Defined
var genericFamily = GenericFam<Int>()
genericFamily.push(member: 10)

//: Generic Extension
extension GenericFam {
    var firstElement: T? {
        if members.isEmpty {
            return nil
        } else {
            return members[0]
        }
    }
}

genericFamily.firstElement

//: Type Constraint
class LOL { }
class BabyLol: LOL {}

func addLOLClassOnly<T: LOL>(array: [T]) { }

addLOLClassOnly(array: [LOL(), LOL()])
addLOLClassOnly(array: [BabyLol() as LOL, BabyLol()])
