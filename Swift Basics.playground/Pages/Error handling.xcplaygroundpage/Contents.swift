//: [Previous](@previous)

import Foundation

enum TooMuchFun : Error {
    case wayTooMuch
    case almostRight
}
func throwingFunction(shouldThrow: Bool) throws {
    defer {
        print("Defer is always called!")
    }
    if(shouldThrow){
        throw TooMuchFun.wayTooMuch
    }
    print("Throwing function succeeded!")
}



do {
    try throwingFunction(shouldThrow: true)
} catch TooMuchFun.almostRight {
    print("It's almost right, but not right enough!")
} catch {
    print(error)
}
try? throwingFunction(shouldThrow: true) //Error is ignored
try! throwingFunction(shouldThrow: false)

func notThrowingFunction() {
    try! throwingFunction(shouldThrow: false)
}
notThrowingFunction()
//: [Next](@next)
