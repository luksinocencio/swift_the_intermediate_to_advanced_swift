import UIKit

/// Why do optionals exist?
/// - Every variable type must be defined (Implicit/Explicit)
/// - The type can be inferred based on the value
/// - Every normal type

let name: String = "Lucas" // Explicit
let newName = "Lucas the developer" // Implicit

// Optional type allows storing nil
let myName: String? = nil // no value
let yourName: String? = "Bob Lee"

print(myName)
print(yourName)

/**
 * Optional Rules:
 * 1 - Optionals do not interact with each other
 * 2 - Convert Optionals to normal types, the process known as unwrapping
 */

var bobAge: Int? = nil
var robAge: Int? = 123
var danAge: Int? = 3

// Forced unwrapping
let newRobAge = robAge!
print(newRobAge)
let newDanAge = danAge!
print(newDanAge)

// Problem
var image: String? = nil
//image! // unuxpected error

// Conditonal Statement
let imageFromFacebook: String? = "teste"

if let normalImage = imageFromFacebook {
    print(normalImage)
} else {
    print("There is no image")
}



