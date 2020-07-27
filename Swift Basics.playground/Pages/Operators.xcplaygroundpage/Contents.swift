//: [Previous](@previous)

//MARK: OPERATORS
let arrayOfTenInts = Array(1...10)
for number in arrayOfTenInts[5...] {
    print("My number = \(number)")
}
for number in arrayOfTenInts[..<5] {
    print("My number = \(number)")
}

//: [Next](@next)
