//: [Previous](@previous)

import Foundation

protocol InstanceProvider {
    static var shared: Human { get }
    func hello() -> String
}

class Human : InstanceProvider {
    static var shared : Human {
        return Human()
    }
    
    func hello() -> String {
        return "Hi!"
    }
    
    func mutateMe() {
        
    }
}
let human = Human.shared
human.hello()
human.mutateMe()

//: [Next](@next)
