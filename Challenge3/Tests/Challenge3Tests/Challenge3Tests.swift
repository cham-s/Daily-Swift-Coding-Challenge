import XCTest
@testable import Challenge3

final class Challenge3Tests: XCTestCase {
    func testOne() {
        XCTAssertTrue(challenge3(first: "abca", second: "abca"))
    }
    
    func testTwo() {
         XCTAssertTrue(challenge3(first: "dva", second: "vad"))
    }
    
    func testThree() {
        XCTAssertTrue(challenge3(first: "pire", second: "repi"))
        
    }
    
    func testFour() {
         XCTAssertFalse(challenge3(first: "goods", second: "doog"))
    }
    
    func testFive() {
         XCTAssertFalse(challenge3(first: "mere", second: "pere"))
    }
    
    static var allTests = [
        ("testOne", testOne),
        ("testTwo", testTwo),
        ("testThree", testThree),
        ("testFour", testFour),
        ("testFive", testFive)
    ]


}
