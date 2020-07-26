//: [Previous](@previous)

import Foundation

class Mouse {
    deinit {
        print("Mouse goes sleep.")
    }
}
class Dog {
    var bitch: Bitch? = nil
    var mouse: Mouse? = nil
    deinit {
        print("Dog goes sleep.")
    }
}

class Bitch {
    var dog: Dog? = nil
    deinit {
        print("Dog goes sleep.")
    }
}
class Horse {
    var dog: Dog? = nil
    deinit {
        print("Horse goes sleep.")
    }
}

var horse : Horse? = Horse()
var dog : Dog? = Dog()
var bitch : Bitch? = Bitch()
var mouse : Mouse? = Mouse()
horse?.dog = dog
dog?.bitch = bitch
bitch?.dog = dog
dog?.mouse = mouse

horse = nil
dog = nil
bitch = nil
mouse = nil


// Ćwiczenie - napraw memory leak

//ARC().someClosure
//: [Next](@next)
