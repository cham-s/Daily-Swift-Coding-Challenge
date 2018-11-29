import XCTest
@testable import Challenge21

final class Challenge21Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertTrue(challenge21("01010101"))
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertTrue(challenge21("123456789"))
    }
    
    func testExample3() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertTrue(challenge21("9223372036854775808"))
    }
    
    func testExample4() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertFalse(challenge21("1.01"))
    }

    static var allTests = [
        ("testExample", testExample),
        ("testExample2", testExample2),
        ("testExample3", testExample3),
        ("testExample4", testExample4),
    ]
}
