import XCTest
@testable import Challenge16

final class Challenge16Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge16(4, power: 3), 64)
    }
    
    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge16(4, power: 2), 16)
        
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge16(2, power: 8), 256)
    }
    
    static var allTests = [
        ("testExample", testExample),
        ("testExample1", testExample1),
        ("testExample2", testExample2),
    ]
}
