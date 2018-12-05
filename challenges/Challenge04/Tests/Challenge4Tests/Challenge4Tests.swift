import XCTest
@testable import Challenge4

final class Challenge4Tests: XCTestCase {
    func testFirst() {
        XCTAssertTrue("Hello, world".challenge4("Hello"))
    }
    
    func testSecond() {
        XCTAssertTrue("J'ai achete du lait".challenge4("Lait"))
    }
    
    func testThird() {
        XCTAssertTrue("今日は暑いですね".challenge4("暑い"))
    }
    
    func testFourth() {
        XCTAssertFalse("Hello, Waldo".challenge4("World"))
    }

    static var allTests = [
        ("first Test", testFirst),
        ("second Test", testSecond),
        ("third Test", testThird),
        ("fourth Test", testFourth)
    ]
}
