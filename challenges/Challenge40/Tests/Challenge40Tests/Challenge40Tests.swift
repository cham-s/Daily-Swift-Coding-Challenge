import XCTest
@testable import Challenge40

final class Challenge40Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge40(1, 2, 2, 3, 3, 4), 5)
        XCTAssertEqual(challenge40(5, 5, 5, 12, 12), 12)
        XCTAssertEqual(challenge40(1, 1, 2, 2, 3, 3, 4, 4), 10)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
