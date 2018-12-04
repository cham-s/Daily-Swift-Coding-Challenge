import XCTest
@testable import Challenge4

final class Challenge4Tests: XCTestCase {
    func firstTest() {
        XCTAssertTrue("Hello, world".challenge4("Hello"))
    }
    
    func secondTest() {
        XCTAssertTrue("J'ai achete du lait".challenge4("Lait"))
    }
    
    func thirdTest() {
        XCTAssertTrue("今日は暑いですね".challenge4("暑い"))
    }
    
    func fourthTest() {
        XCTAssertFalse("Hello, Waldo".challenge4("World"))
    }

    static var allTests = [
        ("first Test", firstTest),
        ("second Test", firstTest),
        ("third Test", firstTest),
        ("fourth Test", firstTest),
    ]
}
