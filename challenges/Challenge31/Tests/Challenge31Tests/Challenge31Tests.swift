import XCTest
@testable import Challenge31

final class Challenge31Tests: XCTestCase {
    func testFirst() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([1, 2, 3, 4].challenge31(count: 3), [1, 2, 3])
    }
    
    func testSecond() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(["q", "f", "k"].challenge31(count: 10), ["f", "k", "q"])
    }
    
    func testThird() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual( [256, 16].challenge31(count: 3), [16, 256])
    }
    
    func testFourth() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([String]().challenge31(count: 3), [String]())
    }
    
    static var allTests = [
        ("first Test", testFirst),
        ("second Test", testSecond),
        ("third Test", testThird),
        ("fourth Test", testFourth),
    ]
}
