import XCTest
@testable import unique

final class uniqueTests: XCTestCase {
    
    func firstTest() {
        XCTAssertTrue(challenge1(input: "No duplicates"))
    }
    
    func secondTest() {
        XCTAssertTrue(challenge1(input: "abcdefghijklmnopqrstuvwxyz"))
    }
    
    func thirdTest() {
        XCTAssertTrue(challenge1(input: "AaBbCc"))
    }
    
    func fourthTest() {
        XCTAssertTrue(challenge1(input: "Hello, world"))
    }

    static var allTests = [
        ("firstTest", firstTest),
        ("secondTest", secondTest),
        ("thirdTest", thirdTest),
        ("fourthTest", fourthTest),
    ]
}
