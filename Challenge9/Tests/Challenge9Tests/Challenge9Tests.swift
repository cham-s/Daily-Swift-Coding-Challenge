import XCTest
@testable import Challenge9

final class Challenge9Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge9(input: "This is an example of a functional test case.").vowels, 15)
        XCTAssertEqual(challenge9(input: "This is an example of a functional test case.").consonants, 20)
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge9(input: "your tests produce the correct").vowels, 9)
        XCTAssertEqual(challenge9(input: "your tests produce the correct").consonants, 17)
        
    }
    static var allTests = [
        ("testExample", testExample),
        ("testExample2", testExample2)
    ]
}
