//
//  SampleTests.swift
//  
//
//  Created by Work on 23/07/2020.
//

import XCTest

class SampleTests: XCTestCase {

    var session : URLSession!
    
    override func setUpWithError() throws {
        session = URLSession(configuration: .default)
    }

    override func tearDownWithError() throws {
        session = nil
    }

    func testAsyncImageDownload() throws {
        let promise = expectation(description: "Image found")
        let url = URL(string: "https://i.redd.it/u44tw7rmcab01.jpg")!
        URLSession.shared.dataTask(with: url) {data,res,error in
            guard let data = data else {
                XCTFail(error.debugDescription)
                return
            }
            promise.fulfill()
        }.resume()
        wait(for: [promise], timeout: 5)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}

