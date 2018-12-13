import XCTest
@testable import Challenge30

final class Challenge30Tests: XCTestCase {
    func testFirst() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([5, 15, 55, 515].challenge30(count: "5"), 6)
    }
    
    func testSecond() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([5, 15, 55, 515].challenge30(count: "1"), 2)
    }
    
    func testThird() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([333333].challenge30(count: "3"), 6)
    }
    
    func testFourth() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([444444444].challenge30(count: "2"), 0)
    }
    
    static var allTests = [
        ("firstTest", testFirst),
        ("secondTest", testSecond),
        ("thirdTest", testThird),
        ("fourthTest", testFourth)
    ]
}
