import XCTest
@testable import Challenge50

final class Challenge50Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertFalse(isLeap(1997))
        XCTAssertTrue(isLeap(1996))
        XCTAssertFalse(isLeap(1900))
        XCTAssertTrue(isLeap(2400))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
