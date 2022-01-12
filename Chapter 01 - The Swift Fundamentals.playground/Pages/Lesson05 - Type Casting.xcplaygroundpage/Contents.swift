import UIKit

// Problem:
/// 1. How do you distinguish between as, as?, as! ?
/// 2. Why does Xcodes keep telling me what to do ?
import UIKit
let label = UILabel() as UIView

//: Design Class
class Human {
    func introduce() {
        print("Hi, I'm a human")
    }
}

//: Design Subclass
class Korean: Human {
    func signGangNamStyle() {
        print("Oppa Gangnam Style")
    }
}

let bob = Korean()
bob.introduce()
bob.signGangNamStyle()

//: Type Casting
let newBob = bob as Human
newBob.introduce() // upcasting
//: > as --> Upcasting (Always works)
class Japanese: Human {
    func doNInja() {
        print("Shhh.....")
    }
}


//: Upcasting with Normal/Common Types
var name = "Bob" as Any
var number = 20 as Any

var anyArray = [name, number]
// Downcasting only occurs after upcasting
// Downcasting --> specific
//: ### Downcasting
//: Explicit/Force Downcasting
let newValue = anyArray[1] as! Int // normal type
//let anotherValue = anyArray[1] as! String
//: Implicit Downcasting (Safe)
let newNewValue = anyArray[0] as? Int
let newNewNewValue = anyArray[1] as? Int

//: Grouping
let shion = Japanese()
let lee = Korean()
let kenji = Japanese()
let park = Korean()

//let humans: [Human] = [shion as Human, lee as Human, kenji as Human, park as Human]
let humans: [Human] = [shion, lee, kenji, park]

for human in humans {
    if let korean = human as? Korean {
        korean.signGangNamStyle()
    }
    
    if let japanese = human as? Japanese {
        japanese.doNInja()
    }
}

//: Pratical Type Casting Usage
let loginButton = UIButton()
let loginMessage = UILabel()
let loginView = UIView()

let UIComponents = [loginButton, loginMessage, loginView]

for component in UIComponents {
    if let button = component as? UIButton {
        
    }
    
    if let label = component as? UILabel {
        
    }
    
    if let view = component as? UIView {
        
    }
}

//: Type Casting in UIKit
//let storyboard = UIStoryboard(name: "Main", bundle: nil)
//let vc = storyboard.instantiateViewController(withIdentifier: "VC") as!
