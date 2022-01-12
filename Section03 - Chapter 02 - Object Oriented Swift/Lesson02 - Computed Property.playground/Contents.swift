import UIKit
import Foundation

//: Problem: Do we have to make functions all the time to calculate something?

func getDiameter(radius: Double) -> Double {
    radius * 2
}

func getRadius(diameter: Double) -> Double {
    diameter / 2
}

getDiameter(radius: 10) // return 20
getRadius(diameter: 200) // return 100
getRadius(diameter: 600) // return 300

//: Introducing Computed Property
//: > computed = calculated

//: Gettable Property
//: > Create a variable that only can be read. It can't be modified

class NumberClass {
    var readNumber: Double {
        get {
            return 666
        }
    }
    
    // skip get
    var readableNumbers: Double {
        return 789
    }
}

//: Settable Property
var radius: Double = 10

var diameter: Double {
    get {
        return radius * 2
    }
    set {
        radius = newValue / 2
    }
}

diameter = 30
diameter

diameter = 50
radius

//: Finding Area Square

var side: Double = 100

var area: Double {
    get {
        return side * side
    }
    
    set(newArea) {
        side = sqrt(newArea)
    }
}

area = 9
side

//: Applications
//: 1. Grabbing and storing data the server
//: 2. Propagating relationships between properties
//: 3. Preventing others from manipulating your code

