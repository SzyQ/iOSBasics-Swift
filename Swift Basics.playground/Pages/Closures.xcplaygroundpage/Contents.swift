//: [Previous](@previous)

import Foundation

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
closure(5)

var characters = ["Mike", "Jerry", "Alfred"]
characters.sort { (a, b) -> Bool in
    a.count > b.count
}

//: [Next](@next)
