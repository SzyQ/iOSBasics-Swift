import UIKit

//MARK: TYPES
let integerAndDoubleSum : Double = 1.5
let integerAndDoubleSumDeclaredWithoutType = 1.0
let total = integerAndDoubleSum + integerAndDoubleSumDeclaredWithoutType
let touple = ("Suma wynosi ", total)
print("\(touple.0)\(touple.1)")

typealias ShakespeareQuestionSolution = Bool

var toBeOrNotToBe : ShakespeareQuestionSolution? = nil
toBeOrNotToBe = true


//MARK: OPERATORS
let arrayOfTenInts = Array(1...10)
for number in arrayOfTenInts[5...] {
    print("My number = \(number)")
}
for number in arrayOfTenInts[..<5] {
    print("My number = \(number)")
}

//MARK: STRING
let oridnaryStringText = "Some text"
let quotation = """
This is first line.
And this is second one.
"And this is a quote"
"""

let objcInmutableString = NSMutableString("Old school way")
objcInmutableString.append(" is still working")

var inmutableString = String("Swift way")
inmutableString.append(" is better")

//MARK: COLLECTIONS

// Array
let dc = ["Batman", "Wonder Woman", "Stargirl"]
let marvel = ["Iron Man", "Spiderman", "Hulk"]
var characters = (dc + marvel).shuffled()

// Set
let charactersSet = Set(characters + characters)
charactersSet.count == characters.count

//Exercise
//let oddDigits: Set = [1, 3, 5, 7, 9]
//let evenDigits: Set = [0, 2, 4, 6, 8]
//let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
//oddDigits.union(evenDigits).sorted()
//oddDigits.intersection(evenDigits).sorted()
//oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
//oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

// Dictionary
let characterPairs = ["Batman" : "Catwoman", "Stargirl" : "Starman"]
let alterEgo = characterPairs["Batman"]

//Exercise
//Use touple to iterate over dictionary
//for (key, value) in characterPairs {
//    print(value)
//}

switch(characters.shuffled()[0]) {
case "Batman",
     "Catwoman":
    print("OK")
case "Stargirl":
    print("It's a girl")
default:
    print("Default")
}

switch(5) {
case 0:
    print("It's 0")
case 1...10:
    print("It's a ten")
default:
    print("None of those")
}

let point = (1,2)
switch point {
case (_,1):
    print("Y matches")
case (1,_):
    print("X matches")
case (1,2):
    print("X, Y is matches")
default:
    print("None matches")
}
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}

//
func tryGuardStatement() {
    let optionalValue : Int? = nil
    guard let value = optionalValue else {return}
    print("I'm in tryGuardStatement")
}

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


//Closures
func run(block: (Int) -> Int){
    block(5)
}
run { (a) -> Int in
    5
}
run { $0 * 5}
run(block: { $0 * 5})

func run1(_ completion: () throws -> Void, _ failure: () -> Void){
    do {
        try completion()
    } catch {
        failure()
    }
}
run1({

} ){

}

func serve(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}

let closure : (Int) -> Int = {value in return value * 10 }
characters.sort { (a, b) -> Bool in
    true
}
closure(5)


struct MyType {
    let name: String
}
extension MyType : Hashable {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}
let dcCharacters = [
    MyType(name: "Simon")
]
