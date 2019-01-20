import XCTest
@testable import Challenge61

final class Challenge61Tests: XCTestCase {
    func testNoNameGiven() {
        XCTAssertEqual(TwoFer.twoFer(), "One for you, one for me.")
    }
    
    func testANameGiven() {
        XCTAssertEqual(TwoFer.twoFer(name: "Alice"), "One for Alice, one for me.")
    }
    
    func testAnotherNameGiven() {
        XCTAssertEqual(TwoFer.twoFer(name: "Bob"), "One for Bob, one for me.")
    }

    static var allTests = [
        ("testNoNameGiven", testNoNameGiven),
        ("testANameGiven", testANameGiven),
        ("testAnotherNameGiven", testAnotherNameGiven),
    ]
}
