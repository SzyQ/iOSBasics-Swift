import UIKit

//MARK: COLLECTIONS

// Array
let dc = ["Batman", "Wonder Woman", "Stargirl"]
let marvel = ["Iron Man", "Spiderman", "Hulk"]
var characters = (dc + marvel).shuffled()

// Set
let charactersSet = Set(characters + characters)
charactersSet.count == characters.count

struct MyType : Hashable, Equatable{
    let name: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.name == rhs.name
    }
}
let myType = MyType(name: "smth")
let dcCharacters = Set([MyType(name: "Simon")])
for character in dcCharacters {
    print(character)
}

//Exercise
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

// Dictionary
let characterPairs = ["Batman" : "Catwoman", "Stargirl" : "Starman"]
let alterEgo = characterPairs["Batman"]

//Exercise
//Use touple to iterate over dictionary
//for (key, value) in characterPairs {
//    print(value)
//}

//MARK: Switch

switch(characters.shuffled()[0]) {
case "Batman",
     "Catwoman":
    print("OK")
case "Stargirl":
    print("It's a girl")
default:
    print("Default")
}

switch(5.0) {
case 0:
    print("It's 0")
case 1...4.9:
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

func tryGuardStatement() {
    let optionalValue : Int? = 1
    //guard let value = optionalValue else {return}
    if let value = optionalValue {
        print("I'm in tryGuardStatement \(value)")
    } else {
        return
    }
    
}

tryGuardStatement()
