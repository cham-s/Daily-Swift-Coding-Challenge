import XCTest
@testable import unique

final class uniqueTests: XCTestCase {
    
    func testOne() {
        XCTAssertTrue(challenge1(input: "No duplicates"))
    }
    
    func testTwo() {
        XCTAssertTrue(challenge1(input: "abcdefghijklmnopqrstuvwxyz"))
    }
    
    func testThree() {
        XCTAssertTrue(challenge1(input: "AaBbCc"))
    }
    
    func testFour() {
        XCTAssertFalse(challenge1(input: "Hello, world"))
    }

    static var allTests = [
        ("testOne", testOne),
        ("testTwo", testTwo),
        ("testThree", testThree),
        ("testFour", testFour),
    ]
}
