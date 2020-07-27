//: [Previous](@previous)

import Foundation


if #available(iOS 10, *){
    print("I'm on iOS 10 and above")
}
// MARK: Functions
func shift(by value: Int, and another: Int = 0) -> Int {
    return 10 + value + another
}
let shifted = shift(by: 5, and: 5)

func testInOut(by value: inout Int, and another: inout Int) -> Int {
    value += 1
    another += 1
    return 10 + value + another
}
var a = 5
var b = 5
testInOut(by: &a, and: &b)
a

//: [Next](@next)
