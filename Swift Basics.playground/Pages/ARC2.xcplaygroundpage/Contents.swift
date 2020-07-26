//: [Previous](@previous)

import Foundation

class Horse {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    lazy var guffaw : (String) -> Void = { shout in
        print("Horse does \(self.name), \(shout)")
    }
    
    deinit {
        print("Horse goes sleep.")
    }
}

var horse : Horse? = Horse(name: "Rrrr")
horse?.guffaw("Ha ha ha")
horse = nil

//Ćwiczenie: Napraw memory leak

//: [Next](@next)
