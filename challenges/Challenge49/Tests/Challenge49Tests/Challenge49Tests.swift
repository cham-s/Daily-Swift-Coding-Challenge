import XCTest
@testable import Challenge49

final class Challenge49Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertTrue(balanced("xxxyyy"))
        XCTAssertTrue(balanced("xxxyyy"))
        XCTAssertFalse(balanced("xxxyyyy"))
        XCTAssertTrue(balanced("yyxyxxyxxyyyyxxxyxyx"))
        XCTAssertFalse(balanced("xyxxxxyyyxyxxyxxyy"))
        XCTAssertTrue(balanced(""))
        XCTAssertFalse(balanced("x"))
    }
    
    func testBonus() {
        XCTAssertTrue(balanced_bonus("xxxyyyzzz"))
        XCTAssertTrue(balanced_bonus("abccbaabccba"))
        XCTAssertFalse(balanced_bonus("xxxyyyzzzz"))
        XCTAssertTrue(balanced_bonus("abcdefghijklmnopqrstuvwxyz"))
        XCTAssertFalse(balanced_bonus("pqq"))
        XCTAssertFalse(balanced_bonus("fdedfdeffeddefeeeefddf"))
        XCTAssertTrue(balanced_bonus("www"))
        XCTAssertTrue(balanced_bonus("x"))
        XCTAssertTrue(balanced_bonus(""))
    }

    static var allTests = [
        ("testExample", testExample),
        ("testExample", testExample)
    ]
}
