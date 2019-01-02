import XCTest
@testable import Challenge19

final class Challenge19Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        if let values = challenge19(12) {
            XCTAssertEqual(values.highest, 17)
            XCTAssertEqual(values.lowest, 10)
        }
    }
    
    func testExample2(){
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        if let values = challenge19(28) {
            XCTAssertEqual(values.highest, 35)
            XCTAssertEqual(values.lowest, 26)
        }
    }
    
    

    static var allTests = [
        ("testExample", testExample),
        ("testExample", testExample2)
    ]
}
