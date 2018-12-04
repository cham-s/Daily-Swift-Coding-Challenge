import XCTest
@testable import Challenge19

final class Challenge19Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge19(12).highest, 17)
        XCTAssertEqual(challenge19(12).lowest, 10)
    }
    
    func testExample2(){
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge19(28).highest, 35)
        XCTAssertEqual(challenge19(28).lowest, 26)
    }
    
    

    static var allTests = [
        ("testExample", testExample),
        ("testExample", testExample2)
    ]
}
