//: [Previous](@previous)

import Foundation
import Combine


let stream = (1...100).publisher
    .map({ (value) -> String in
        "-\(value)-"
    })
    .delay(for: .seconds(1), scheduler: RunLoop.main)
//    .delay(for: .seconds(1), scheduler: DispatchQueue.global())
    .collect()
    .sink { (element) in
        print("Got \(element)")
}
    
DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
    stream.cancel()
}


//: [Next](@next)
