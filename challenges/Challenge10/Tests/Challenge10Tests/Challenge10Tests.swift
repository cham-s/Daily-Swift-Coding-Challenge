import XCTest
@testable import Challenge10

final class Challenge10Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertTrue(challenge10(first: "Clamp", second: "Cramp"))
    }
    
    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertTrue(challenge10(first: "Clamp", second: "Crams"))
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertFalse(challenge10(first: "Clamp", second: "Grans"))
    }
    
    func testExample3() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertFalse(challenge10(first: "Clamp", second: "Clam"))
    }

    static var allTests = [
        ("testExample", testExample),
        ("testExample1", testExample1),
        ("testExample2", testExample2),
        ("testExample3", testExample3)
    ]
}
