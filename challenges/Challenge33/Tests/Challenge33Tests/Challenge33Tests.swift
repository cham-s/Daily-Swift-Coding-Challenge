import XCTest
@testable import Challenge33

final class Challenge33Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        var testArray = Array(1...100)
        testArray.removeAll(where: { $0 == 26 || $0 == 21 || $0 == 7 })
        XCTAssertTrue(testArray.challenge33().contains(26))
        XCTAssertTrue(testArray.challenge33().contains(21))
        XCTAssertTrue(testArray.challenge33().contains(7))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
