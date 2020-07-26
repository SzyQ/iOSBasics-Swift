//
//  Swift_Basics_FrameworkTests.swift
//  Swift_Basics_FrameworkTests
//
//  Created by Work on 23/07/2020.
//  Copyright © 2020 Szymon Klimaszewski. All rights reserved.
//

import XCTest

class Swift_Basics_FrameworkTests: XCTestCase {

    var session : URLSession!
    override func setUpWithError() throws {
        session = URLSession(configuration: .default)
    }

    override func tearDownWithError() throws {
        session = nil
    }

    func testAsync() throws {
        let url = URL(string: "https://i.redd.it/u44tw7rmcab01.jpg")!
        let promise = expectation(description: "Should return image")
        URLSession.shared.dataTask(with: url) {data,res,error in
            if let error = error {
                XCTFail()
                return
            }
            promise.fulfill()
        }.resume()
        wait(for: [promise], timeout: 2)
    }

    func testPerformance() throws {
        measure {
            try! testAsync()
        }
    }

}
