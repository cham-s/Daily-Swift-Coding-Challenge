import XCTest
@testable import Challenge11

final class Challenge11Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge11(input: "swift switch swill swim"), "swi")
    }
    
    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
       XCTAssertEqual(challenge11(input: "flip flap flop"), "fl")
    }

    static var allTests = [
        ("testExample", testExample),
        ("testExample1", testExample1),
    ]
}
