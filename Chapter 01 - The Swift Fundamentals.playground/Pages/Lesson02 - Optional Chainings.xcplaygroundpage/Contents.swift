import UIKit

/// Why do I see "?" and "!" when accessing methods and properties?
let labelColor = UILabel().highlightedTextColor?.cgColor

class Human {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello, I'm \(name)")
    }
}

class Apartment {
    var human: Human? = nil
}

//: Initialize
var seoulApartment = Apartment()
seoulApartment.human = Human(name: "Lucas")

// Force Unwrapping
seoulApartment.human?.sayHello()
let name = seoulApartment.human!.name

// Implicit Unwrapping
let NYCApartment = Apartment()
NYCApartment.human = Human(name: "Ryu")
NYCApartment.human?.name

if let residentName = NYCApartment.human?.name {
    print(residentName)
} else {
    print("no name available")
}
