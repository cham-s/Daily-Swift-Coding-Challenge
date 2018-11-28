import XCTest
@testable import Challenge8

final class Challenge8Tests: XCTestCase {

    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertTrue(challenge8(input: "The quick brown fox jumps over the lazy dog"))
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertFalse(challenge8(input: "A pangram is a string that contains every letter of the alphabet at least once."))
    }

    static var allTests = [
        ("testExample", testExample),
        ("testExample2", testExample2),
    ]
}
