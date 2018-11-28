import XCTest
@testable import Challenge6

final class Challenge6Tests: XCTestCase {
    
    func firstTest() {
        XCTAssertEqual(challenge6(input: "DVD"), "DV" )
    }
    
    func secondTest() {
        XCTAssertEqual(challenge6(input: "dossier"), "dosier" )
    }

    static var allTests = [
        ("first Test", firstTest),
        ("second Test", secondTest)
    ]
}
