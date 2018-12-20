import XCTest
@testable import Challenge41

final class Challenge41Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge41(numbers: [0, 1, 1, -1, 2, 3, 1]), 4...6)
        XCTAssertEqual(challenge41(numbers: [10, 20, 30, -10, -20, 10, 20]), 0...2)
        XCTAssertEqual(challenge41(numbers: [1, -1, 2, -1]), 2...2)
        XCTAssertEqual(challenge41(numbers: [2, 0, 2, 0, 2]), 0...0)
        XCTAssertEqual(challenge41(numbers: [Int]()), nil)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
