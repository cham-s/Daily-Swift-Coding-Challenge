import XCTest
@testable import unique

final class uniqueTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(unique().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
