//: [Previous](@previous)

import Foundation


func doGenericStuff<AnyType>(with thatThing: AnyType) {
    print(thatThing)
}

doGenericStuff(with: "Say it!")
doGenericStuff(with: 44)
doGenericStuff(with: [1, 2, 3, 4, 5])


func findIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

findIndex(of: "Test", in: ["A","B","Test","C"])

//: [Next](@next)
