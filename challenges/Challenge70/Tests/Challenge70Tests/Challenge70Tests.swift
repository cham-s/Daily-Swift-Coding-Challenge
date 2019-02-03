import XCTest
@testable import Challenge70

final class Challenge70Tests: XCTestCase {
    func testPerfect() {
        let numberClassifier = NumberClassifier(number: 6)
        XCTAssertEqual([NumberClassifier.perfect], [numberClassifier.classification])
    }
    
    func testPerfectAgain() {
        let numberClassifier = NumberClassifier(number: 28)
        XCTAssertEqual([NumberClassifier.perfect], [numberClassifier.classification])
    }
    
    func testDeficient() {
        let numberClassifier = NumberClassifier(number: 13)
        XCTAssertEqual([NumberClassifier.deficient], [numberClassifier.classification])
        
    }
    
    func testAbundant() {
        let numberClassifier = NumberClassifier(number: 12)
        XCTAssertEqual([NumberClassifier.abundant], [numberClassifier.classification])
    }

    static var allTests = [
        ("testPerfect", testPerfect),
        ("testPerfectAgain", testPerfectAgain),
        ("testDeficient", testDeficient),
        ("testAbundant", testAbundant),
    ]
}
