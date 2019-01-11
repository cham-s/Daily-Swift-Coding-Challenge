import XCTest
@testable import Challenge46

final class Challenge46Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertTrue(funnel(compare: "leave", with: "eave"))
        XCTAssertTrue(funnel(compare: "reset", with: "rest"))
        XCTAssertTrue(funnel(compare: "dragoon", with: "dragon"))
        XCTAssertFalse(funnel(compare: "eave", with: "leave"))
        XCTAssertFalse(funnel(compare: "sleet", with: "lets"))
        XCTAssertFalse(funnel(compare: "sleet", with: "lets"))
        
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
