import XCTest
@testable import Challenge15

final class Challenge15Tests: XCTestCase {
    

    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        for _ in 0..<10 {
            XCTAssertTrue(1...5 ~= challenge15(min: 1, max: 5))
        }
        
    }
    
    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        for _ in 0..<10 {
            XCTAssertTrue(20...32 ~= challenge15(min: 20, max: 32))
        }
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        for _ in 0..<10 {
            XCTAssertTrue(16...56 ~= challenge15(min: 16, max: 56))
        }
        
    }
    


    static var allTests = [
        ("testExample", testExample),
        ("testExample1", testExample1),
        ("testExample2", testExample2),
    ]
}
