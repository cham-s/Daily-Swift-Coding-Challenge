import XCTest
@testable import Challenge48

final class Challenge48Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(hexColor(red: 255, green: 99, blue: 71), "#FF6347")
        XCTAssertEqual(hexColor(red: 184, green: 134, blue: 11), "#B8860B")
        XCTAssertEqual(hexColor(red: 189, green: 183, blue: 107), "#BDB76B")
        XCTAssertEqual(hexColor(red: 0, green: 0, blue: 205), "#0000CD")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
