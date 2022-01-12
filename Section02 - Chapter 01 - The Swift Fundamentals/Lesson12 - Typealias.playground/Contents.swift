import UIKit

//: Problem The parameters are unreadable and boring

//: Typealias for String

typealias Name = String

func insertName(name: Name) {
    print(name)
}

//: Typealias for custom class

class Employee { }

typealias MyEmployees = [Employee]

func listEmployees(enterEmployees: MyEmployees) {
    
}

listEmployees(enterEmployees: [Employee(), Employee()])

//: Typealias for Tuple

typealias GridPoint = (Int, Int)

func enterPoint(grid: GridPoint) {
    print(grid.0)
    print(grid.1)
}

enterPoint(grid: (1, 2))

//: Type Definition

let arrayOne: Array<String> = Array(["Bob", "Bobby"]) // 2
let arrayTwo: [String] = ["Bob", "Bobby"] // 1

//: Dictionary Type

let dictOne: [String: Int] = ["Alex": 31, "Paul": 39]
let dictTwo: Dictionary<String, Int> = ["Alex": 31, "Paul": 39]

//: Optional Type
var optionalOne: String?
var optionalTwo: Optional<String>
