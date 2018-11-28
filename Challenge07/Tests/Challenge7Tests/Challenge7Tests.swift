import XCTest
@testable import Challenge7

final class Challenge7Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge7(input: "Hello,    World!"), "Hello, World!")
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge7(input: "Have you   tried the    new   Indian restaurant?"), "Have you tried the new Indian restaurant?")
    }

    static var allTests = [
        ("testExample", testExample),
        ("testExample2", testExample2),
    ]
}
