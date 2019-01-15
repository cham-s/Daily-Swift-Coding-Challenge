import XCTest
@testable import Challenge50

final class Challenge50Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertFalse(isLeapYer(1997))
        XCTAssertTrue(isLeapYer(1996))
        XCTAssertFalse(isLeapYer(1900))
        XCTAssertTrue(isLeapYer(2000))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
