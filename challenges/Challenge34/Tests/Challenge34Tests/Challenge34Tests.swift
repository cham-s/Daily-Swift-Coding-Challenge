import XCTest
@testable import Challenge34

final class Challenge34Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([1, 2, 3].challenge34(), 2)
    }
    
    func testTwo() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([1, 2, 9].challenge34(), 2)
    }
    
    func testThree() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([1, 3, 5, 7, 9].challenge34(), 5)
    }
    
    func testFive() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([1, 2, 3, 4].challenge34(), 2.5)
    }
    
    func testFour() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([Int]().challenge34(), nil)
    }

    static var allTests = [
        ("testOne", testExample),
        ("testTwo", testTwo),
        ("testThree", testThree),
        ("testFour", testFour),
        ("testFive", testFive),
    ]
}
