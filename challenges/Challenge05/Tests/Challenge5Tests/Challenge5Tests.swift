import XCTest
@testable import Challenge5

final class Challenge5Tests: XCTestCase {
    func testFirst() {
        XCTAssertEqual(challenge5(input: "Mon train est arrive en retard.", count: "a"), 3)
    }
    
    func testSecond() {
        XCTAssertEqual(challenge5(input: "Today is the day.", count: "y"), 2)
    }
    
    static var allTests = [
        ("first test", testFirst),
        ("second test", testSecond)
    ]
}
