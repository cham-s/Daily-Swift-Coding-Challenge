import XCTest
@testable import Challenge42

final class Challenge42Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge42(numbers: [1, 2, 3]), 6)
        XCTAssertEqual(challenge42(numbers:  [1.0, 2.0, 3.0]), 6.0)
        let num: Array<Float> = [1.0, 2.0, 3.0]
        XCTAssertEqual(challenge42(numbers: num), 6.0)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
