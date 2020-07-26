//: [Previous](@previous)

import Foundation
import UIKit

let main = DispatchQueue.main
let customQueue = DispatchQueue(label: "custom")
let background = DispatchQueue.global(qos: DispatchQoS.QoSClass.userInteractive)
main.async {
    print("Main")
}
customQueue.async {
    print("Custom")
}
background.async {
    print("Background")
}
var unsafeVar = 0
background.async(flags: .barrier) {
    for _ in 0..<10000 {
         unsafeVar+=1
    }
}
background.async(flags: .barrier) {
    for _ in 0..<10000 {
         unsafeVar+=1
    }
}

main.asyncAfter(deadline: .now() + 3) {
    print(unsafeVar)
}

//Ćwiczenie: zsynchronizaować wątki
//: [Next](@next)
