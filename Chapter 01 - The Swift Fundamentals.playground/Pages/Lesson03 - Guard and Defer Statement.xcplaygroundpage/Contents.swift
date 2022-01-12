import UIKit

// Guard and Defer Statement
/// 1 - Is there any alternative to write an else-if statement ?
/// 2 - How do you safely unwrap multiple optionals?
func checkDrinkingAge() {
    let canDrink = true
    
    if canDrink {
        print("You may enter")
    } else {
        print("Let me take you to the jail")
    }
}

/// 1. Nested Brackets
/// 2. Have to read all
let iCanDrink = false

func checkDrinkAges() {
    guard iCanDrink else {
        // iCanDrink == false
        // iCanDrink == true // simply ignore the guard block
        print("You can't drink! let me take you to the jail")
        return
    }
    
    print("Enjoy your night!")
}

checkDrinkAges()

//: ### Unwrapping Optionals
var publicName: String? = "Lucas"
var publicPhoto: String? = "Bob's face"
var publicAge: Int? = 28

func unwrappingOneByOneWithGuard() {
    guard let name = publicName else {
        print("Name is missing")
        return
    }
    
    guard let photo = publicPhoto else {
        print("Photo is missing")
        return
    }
    
    guard let age = publicAge else {
        print("Age is missing")
        return
    }
    
    print(name)
    print(photo)
    print(age)
}

func unwrapping() {
    guard let name = publicName, let photo = publicPhoto, let age = publicAge else {
        print("Something is missing")
        return
    }
    
    print("Hello my name is \(name), my profile photo is \(photo) and I'am \(age) age")
}

unwrappingOneByOneWithGuard()
unwrapping()
