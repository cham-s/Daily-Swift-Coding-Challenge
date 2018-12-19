import XCTest
@testable import Challenge39

final class Challenge39Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        var numbers = deque<Int>()
        numbers.pushBack(5)
        numbers.pushBack(8)
        numbers.pushBack(3)
        XCTAssertEqual(numbers.count, 3)
        XCTAssertEqual(numbers.popFront()!, 5)
        XCTAssertEqual(numbers.popFront()!, 8)
        XCTAssertEqual(numbers.popFront()!, 3)
        XCTAssertEqual(numbers.popBack(), nil)
        
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
