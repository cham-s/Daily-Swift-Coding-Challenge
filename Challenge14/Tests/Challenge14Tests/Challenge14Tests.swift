import XCTest
@testable import Challenge14

final class Challenge14Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge14(2), "2")
    }
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge14(3), "Fizz")
    }
    func testExample3() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge14(5), "Buzz")
    }
    func testExample4() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge14(15), "Fizz Buzz")
    }

    static var allTests = [
        ("testExample", testExample),
        ("testExample2", testExample2),
        ("testExample3", testExample3),
        ("testExample4", testExample4),
    ]
}
