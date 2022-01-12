import UIKit

//: Problema: I'm lazy. Can we initialize quickly?

class Human {
    var name: String
//    var color: UIColor?
    init(name: String) {
        self.name = name
    }
    
    /// Convenience init initializes the designated init method
    convenience init() {
        self.init(name: "Bob the developer")
    }
}

let bob = Human(name: "bob")
let rob = Human()
let robby = Human()
robby.name

//: Real Life Situation
let randomColor = UIColor(displayP3Red: 80/255, green: 80/255, blue: 255/255, alpha: 1)

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a:CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: a/255)
    }
}

let myFavoriteColor = UIColor(r:255, g:255, b:255, a:255)

//: Application
/// 1. Useful for quick initialization for open source projects
/// 2. Custom convenience like UIKit
