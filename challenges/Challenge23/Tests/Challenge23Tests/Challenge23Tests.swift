import XCTest
@testable import Challenge23

final class Challenge23Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge23(subtract: 4, from: 9), 5)
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge23(subtract: 10, from: 30), 20)
    }

    static var allTests = [
        ("testExample", testExample),
        ("testExample2", testExample2)
    ]
}
