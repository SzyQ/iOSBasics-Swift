//: [Previous](@previous)

import Foundation
import UIKit

URLSession.shared.dataTask(with: URL(string: "https://i.redd.it/u44tw7rmcab01.jpg")!) {data,res,error in
    guard let data = data else {
        print(error.debugDescription)
        return
    }
    UIImage(data: data)
}.resume()

//: [Next](@next)
