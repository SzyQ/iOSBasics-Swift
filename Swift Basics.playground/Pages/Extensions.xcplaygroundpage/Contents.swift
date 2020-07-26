//: [Previous](@previous)

import Foundation

protocol Joker {
    func tellMeAJoke() -> String
}

class Guy {}

extension Guy : Joker {
    
    func tellMeAJoke() -> String {
        return """
        
        How many times can you subtract 10 from 100?
        Once. The next time you would be subtracting 10 from 90.
        
        """
    }
}
extension Int {
    func times(block: () -> Void) {
        for index in 0..<self {
            block()
        }
    }
}

5.times {
    print(Guy().tellMeAJoke())
}

//Exercise: Tell another joke

//: [Next](@next)
