import UIKit

//: Problem
/// 1. Warn your co-workers the function can cause dangerous results.
/// 2. Understanding of a do-try block
/// 3. Distinguish between try?, try!, and try
func checkHeight(height: Int) {
    if height > 200 {
        print("You are going to hit your head and fall off")
    } else if height < 140 {
        print("You might fly in the air")
    } else {
        print("enjoy")
    }
}

/// Problem with an else-if statement
/// Problem 1: Bloated Function
/// Problem 2: Modurality
// Design Error (1/3)
enum HeightError: Error {
    case maxHeight
    case minHeight
}

// Call Function (2/3)
func checkHeightError(height: Int) throws {
    if height > 200 {
        throw HeightError.maxHeight
    } else if height < 140 {
        throw HeightError.minHeight
    } else {
        print("Enjoy")
    }
}

/**
 *
 * If function has throws, you need to run do-try
 *
 */
// Handle with Error  (3/3)
do {
    try checkHeightError(height: 150)
} catch HeightError.maxHeight {
    print("You are too tall")
} catch HeightError.minHeight {
    print("You are too short")
}

//: Error Handling with Object Initialization
//: Design Error (1/3)
enum NameError: Error {
    case noName
}

//: Design Class (2/3)
class Course {
    var name: String
    
    init (name: String) throws {
        if name == "" {
            throw NameError.noName
        } else {
            self.name = name
            print("Hey, you've created an object!")
        }
    }
}

do {
    let myCourse = try Course(name: "Learn Swift with Bob")
} catch NameError.noName {
    print("Make sure enter your name please")
}

//: Distinguish `try?`, `try!`, `try`
// if error not thrown, --> optional
// if error thrown --> nil
let newCourse = try? Course(name: "Bob the Dev")

let myNewCourse = try! Course(name: "Bobby Lee")
