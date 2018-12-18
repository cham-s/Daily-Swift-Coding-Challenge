import XCTest
@testable import Challenge38

final class Challenge38Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([1, 2, 3].challenge38(), 1)
    }
    
    func testTwo() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(["q", "f", "k"].challenge38(), "f")
    }

    
    func testThree() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([4096, 256, 16].challenge38(), 16)
    }

    
    func testFour() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([String]().challenge38(), nil)
    }


    static var allTests = [
        ("testExample", testExample),
        ("testTwo", testTwo),
        ("testThree", testThree),
        ("testFour", testFour),
    ]
}
