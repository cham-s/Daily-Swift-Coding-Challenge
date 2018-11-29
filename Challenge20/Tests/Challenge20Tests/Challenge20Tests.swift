import XCTest
@testable import Challenge20

final class Challenge20Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge20(32), 4)
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge20(41), 148)
    }
    
    func testExample3() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge20(4), 32)
    }

    static var allTests = [
        ("testExample", testExample),
        ("testExample2", testExample2),
        ("testExample3", testExample3)
    ]
}
