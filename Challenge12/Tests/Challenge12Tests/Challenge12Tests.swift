import XCTest
@testable import Challenge12

final class Challenge12Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge12(input: "aabbcc"), "a2b2c2")
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge12(input: "aaabaaabaaa"), "a3b1a3b1a3")
    }
    
    func testExample3() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
         XCTAssertEqual(challenge12(input: "aaAAaa"), "a2A2a2")
    }

    static var allTests = [
        ("testExample", testExample),
        ("testExample2", testExample2),
        ("testExample3", testExample3),
    ]
}
