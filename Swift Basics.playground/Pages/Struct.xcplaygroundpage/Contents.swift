//: [Previous](@previous)

import Foundation

protocol Offsetable {
    mutating func offset(by points: Int)
}

struct Point : Offsetable{
    var x : Int
    var y : Int
    
    mutating func offset(by points: Int) {
        x += points
        y += points
    }
}

let point = Point(x: 5, y: 6)
var newPoint = point
point.x == newPoint.x
newPoint.x = 7
point.x == newPoint.x

//MARK: Mutating
let mutatingPoint = Point(x: 5, y: 6)
var newMutatingPoint = point
mutatingPoint.x == newMutatingPoint.x
newPoint.offset(by: 5)
mutatingPoint.x == newMutatingPoint.x

//: [Next](@next)
