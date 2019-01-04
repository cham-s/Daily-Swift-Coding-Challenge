import XCTest
@testable import Challenge44

final class Challenge44Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let solutions = [
            9: 3,
            16777216: 4096,
            16: 4,
            15: 3
        ]
        
        for (key, value) in solutions {
            XCTAssertEqual(challenge44(key), value)
        }
        
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
