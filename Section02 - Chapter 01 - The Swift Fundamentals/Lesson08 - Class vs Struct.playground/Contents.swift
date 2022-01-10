import UIKit

// Problem
/// 1. What are the differences besides inheritance?
/// 2. When to use Structs over Classes?

//: Design Class
class HumanClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}

//: Create Instance
var humanClassObject = HumanClass(name: "Lucas")
print(humanClassObject.name)

var newHumanClassObject = humanClassObject
newHumanClassObject.name = "Bobby"

humanClassObject.name

//: Design Struct

struct HumanStruct {
    var name: String
    
    init(name: String) {
        self.name = name
        print("Created")
    }
}

var structObject = HumanStruct(name: "Bob")
var newStructObject = structObject
newStructObject.name = "Bobby"

//: One more Difference in Mutability
/// Mutable Class

class BobClass {
    var name = "Bob"
}

let bobClass = BobClass()
bobClass.name = "Bobby"
bobClass.name

//: Immutable Struct
struct BobStruct {
    var name = "Bob"
}

var bobStruct = BobStruct()
bobStruct.name = "Bobby"
