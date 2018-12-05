import XCTest
@testable import Challenge6

final class Challenge6Tests: XCTestCase {
    
    func testFirst() {
        XCTAssertEqual(challenge6(input: "DVD"), "DV" )
    }
    
    func testSecond() {
        XCTAssertEqual(challenge6(input: "dossier"), "dosier" )
    }

    static var allTests = [
        ("first Test", testFirst),
        ("second Test", testSecond)
    ]
}
