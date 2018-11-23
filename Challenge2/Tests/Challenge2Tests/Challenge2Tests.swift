import XCTest
@testable import Challenge2

final class Challenge2Tests: XCTestCase {

    func testOne() {
        XCTAssertTrue(challenge2(input: "Ana"))
    }
    
    func testTwo() {
        XCTAssertTrue(challenge2(input: "alula"))
    }
    
    func testThree() {
        XCTAssertTrue(challenge2(input: "Elle"))
    }
    
    func testFour() {
        XCTAssertFalse(challenge2(input: "Four"))
    }
    
    func testFive() {
        XCTAssertFalse(challenge2(input: "Boulangerie"))
    }

    static var allTests = [
        ("testOne", testOne),
        ("testTwo", testTwo),
        ("testThree", testThree),
        ("testFour", testFour),
        ("testFive", testFive)
    ]
}
