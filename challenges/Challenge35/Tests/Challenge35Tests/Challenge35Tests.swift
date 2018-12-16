import XCTest
@testable import Challenge35

final class Challenge35Tests: XCTestCase {
    func testFirst() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([1, 2, 3].challenge35(indexOf: 1), 0)
    }
    
    func testSecond() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([1, 2, 3].challenge35(indexOf: 3), 2)
    }

    func testThird() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([1, 2, 3].challenge35(indexOf: 5), nil)
    }

    static var allTests = [
        ("testFirst", testFirst),
        ("testSecond", testSecond),
        ("testThird", testThird),
    ]
}
