import XCTest
@testable import Challenge37

final class Challenge37Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual([1, 2, 3].challenge37 { String($0) }, ["1", "2", "3"])
    }
    
    func testTwo() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(["1", "2", "3"].challenge37 { Int($0)! }, [1, 2, 3])
    }

    static var allTests = [
        ("testExample", testExample),
        ("testTwo", testTwo),
    ]
}
