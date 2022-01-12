import UIKit

//: When I create an object, I want a shorcut without calling a method.
//: Normal Method
struct HelloKitty {
    func saySomething() -> String {
        return "I'm Cute"
    }
    
    subscript() -> String {
        return "Hello"
    }
}

HelloKitty().saySomething()
HelloKitty()[]

//: Introducing Subscriptings
struct WeekDays {
    var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    
    subscript(index: Int) -> String {
        return days[index]
    }
}

let myDays = WeekDays()
myDays[1]

//: Dictionary Type
var info = ["Height": 183, "Body Fat": 12.5, "Weight": 76]

let height = info["Height"]

struct HealthInfo {
    var info = ["Height": 183, "Body Fat": 12.5, "Weight": 76]
    
    subscript(key: String) -> Double {
        if let newInfo = info[key] {
            return newInfo
        } else {
            return 0
        }
    }
}

let bobInfo = HealthInfo()
let myHeight = bobInfo["Footsize"]
let realHeight = bobInfo["Height"]

//: Usage Case
// 1. Get the number of rows in table/collection
// 2. Anything has to do with pair and value

//: Shortcoming of Subscript
// No Context = ☠️
