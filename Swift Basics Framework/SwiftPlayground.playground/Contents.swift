import UIKit
import Alamofire

let url = URL(string: "https://i.redd.it/u44tw7rmcab01.jpg")!
URLSession.shared.dataTask(with: url) {data,res,error in
    guard let data = data else {
        print(error.debugDescription)
        return
    }
    UIImage(data: data)
}.resume()

AF.request(url).responseData { (response) in
    if let data = response.data {
        UIImage(data: data)
    }
}
