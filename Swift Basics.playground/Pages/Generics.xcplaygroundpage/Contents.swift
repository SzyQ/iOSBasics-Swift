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

class GenericClass<T : Hashable> {
    let set : Set<T>
    
    init(set: Set<T>) {
        self.set = set
    }
}

protocol GenericProtocolWithHashableAssociatedType {
    associatedtype T where T : Hashable
    var set : Set<T> {get}
}

protocol GenericProtocolWithEquatableAssociatedType {
    associatedtype E where E : Equatable
    
    func find(array: Array<E>, value: E) -> E?
}

class ClassCombiningAssociatedTypes :
    GenericProtocolWithHashableAssociatedType,
GenericProtocolWithEquatableAssociatedType {
    typealias T = String
    typealias E = Int
    
    var set: Set<String> {
        get {
            return Set(arrayLiteral: "A", "B", "C")
        }
    }
    
    func find(array: Array<E>, value: E) -> E? {
        if let index = array.firstIndex(of: value) {
            return array[index]
        } else {
            return nil
        }
    }
}

let test = ClassCombiningAssociatedTypes()
test.find(array: [1,2,3], value: 5)

extension Array where Element : Equatable{
    
    func find(item: Element) -> Element? {
        if let result = self.firstIndex(of: item) {
            return self[result]
        } else {
            return nil
        }
    }
}

let array = [1,2,3]
array.find(item: 2)


//: [Next](@next)
