//: [Previous](@previous)

import Foundation

class Matrix : NSObject {
    static let size = 10
    let matrix = Array(0..<size).map{ Array($0..<size + $0) }

    subscript(x :Int,y: Int) -> Int{
        return matrix[x][y]
    }
}
let matrix = Matrix()
matrix[5,6]

//: [Next](@next)
