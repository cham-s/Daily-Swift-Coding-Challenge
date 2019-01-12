import XCTest
@testable import Challenge47

final class Challenge47Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(upc(4210000526), 4)
        XCTAssertEqual(upc(3600029145), 2)
        XCTAssertEqual(upc(12345678910), 4)
        XCTAssertEqual(upc(1234567), 0)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
