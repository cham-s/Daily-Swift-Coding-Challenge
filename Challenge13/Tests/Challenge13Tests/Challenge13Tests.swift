import XCTest
@testable import Challenge13

final class Challenge13Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge13(input: "Swift Coding Challenges"), "tfiwS gnidoC segnellahC")
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(challenge13(input: "The quick brown fox"), "ehT kciuq nworb xof")
    }

    static var allTests = [
        ("testExample", testExample),
        ("testExample2", testExample2),
    ]
}
