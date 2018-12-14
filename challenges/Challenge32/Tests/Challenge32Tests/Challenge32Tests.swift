import XCTest
@testable import Challenge32

final class Challenge32Tests: XCTestCase {

    func testFirst() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(["a", "abc", "ab"].challenge32(), ["abc", "ab", "a"])
    }
    
    func testSecond() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(["paul", "taylor", "adele"].challenge32(), ["taylor", "adele", "paul"])
    }
    
    func testThird() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([String]().challenge32(), [String]())
    }
    
    
    
    static var allTests = [
        ("first Test", testFirst),
        ("second Test", testSecond),
        ("third Test", testThird),
    ]
}
