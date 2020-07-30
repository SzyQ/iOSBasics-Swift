//: [Previous](@previous)

import Foundation

enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet : Int {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let directionToHead = CompassPoint.south
switch directionToHead {
case CompassPoint.north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}

enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases
print("\(numberOfChoices) beverages available")
for beverage in Beverage.allCases {
    print(beverage)
}

enum Barcode : Equatable {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
var productBarcode2 = Barcode.upc(8, 85909, 51226, 8)

//Bez interfejsu Equatable nie porównanie jest niewykonalne
productBarcode == productBarcode2

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}
//Skrócona wersja z let
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}


enum StringCompassPoint: String {
    case north, south, east, west
}
let sunsetDirection = StringCompassPoint.west.rawValue

let possiblePlanet = Planet(rawValue: 7)

indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

evaluate(product)


enum SimpleValue {
    case intHolder(value: Int)
}
let simpleValue = SimpleValue.intHolder(value: 5)
print(simpleValue)
//: [Next](@next)
