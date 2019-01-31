import XCTest
@testable import Challenge66

final class Challenge66Tests: XCTestCase {
    private let fullGarden = Garden("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV")
    private let disorderedGarden = Garden("VCRRGVRG\nRVGCCGCV", children: ["Samantha", "Patricia", "Xander", "Roger"])
    private static let diagram = "VCRRGVRG\nRVGCCGCV"
    private let garden1 = Garden(diagram, children: ["Alice", "Bob", "Charlie", "Dan"])
    private let garden2 = Garden(diagram, children: ["Bob", "Charlie", "Dan", "Erin"])
    
    
    func testAlicesGarden() {
        let garden = Garden("RC\nGG")
        XCTAssertEqual([Plant.radishes, Plant.clover, Plant.grass, Plant.grass], garden.plantsForChild("Alice"))
    }
    
    func testDifferentGardenForAlice() {
        let garden = Garden("VC\nRC")
        XCTAssertEqual([Plant.violets, Plant.clover, Plant.radishes, Plant.clover], garden.plantsForChild("Alice"))
    }
    
    func testBobsGarden() {
        let garden = Garden("VVCG\nVVRC")
        XCTAssertEqual([Plant.clover, Plant.grass, Plant.radishes, Plant.clover], garden.plantsForChild("Bob"))
    }
    
    func testBobAndCharliesGardens() {
        let garden = Garden("VVCCGG\nVVCCGG")
        XCTAssertEqual([Plant.clover, Plant.clover, Plant.clover, Plant.clover], garden.plantsForChild("Bob"))
        XCTAssertEqual([Plant.grass, Plant.grass, Plant.grass, Plant.grass], garden.plantsForChild("Charlie"))
    }
    
    // MARK: - Test full garden
    
    func testAlice() {
        XCTAssertEqual([Plant.violets, Plant.radishes, Plant.violets, Plant.radishes], fullGarden.plantsForChild("Alice"))
    }
    
    func testBob() {
        XCTAssertEqual([Plant.clover, Plant.grass, Plant.clover, Plant.clover], fullGarden.plantsForChild("Bob"))
    }
    
    func testCharlie() {
        XCTAssertEqual([Plant.violets, Plant.violets, Plant.clover, Plant.grass], fullGarden.plantsForChild("Charlie"))
    }
    
    func testDavid() {
        XCTAssertEqual([Plant.radishes, Plant.violets, Plant.clover, Plant.radishes], fullGarden.plantsForChild("David"))
    }
    
    func testEve() {
        XCTAssertEqual([Plant.clover, Plant.grass, Plant.radishes, Plant.grass], fullGarden.plantsForChild("Eve"))
    }
    
    func testFred() {
        XCTAssertEqual([Plant.grass, Plant.clover, Plant.violets, Plant.clover], fullGarden.plantsForChild("Fred"))
    }
    
    func testGinny() {
        XCTAssertEqual([Plant.clover, Plant.grass, Plant.grass, Plant.clover], fullGarden.plantsForChild("Ginny"))
    }
    
    func testHarriet() {
        XCTAssertEqual([Plant.violets, Plant.radishes, Plant.radishes, Plant.violets], fullGarden.plantsForChild("Harriet"))
    }
    
    func testIleana() {
        XCTAssertEqual([Plant.grass, Plant.clover, Plant.violets, Plant.clover], fullGarden.plantsForChild("Ileana"))
    }
    
    func testJoseph() {
        XCTAssertEqual([Plant.violets, Plant.clover, Plant.violets, Plant.grass], fullGarden.plantsForChild("Joseph"))
    }
    
    func testKincaid() {
        XCTAssertEqual([Plant.grass, Plant.clover, Plant.clover, Plant.grass], fullGarden.plantsForChild("Kincaid"))
    }
    
    func testLarry() {
        XCTAssertEqual([Plant.grass, Plant.violets, Plant.clover, Plant.violets], fullGarden.plantsForChild("Larry"))
    }
    
    // MARK: - Test disordered garden
    
    func testPatricia() {
        XCTAssertEqual([Plant.violets, Plant.clover, Plant.radishes, Plant.violets], disorderedGarden.plantsForChild("Patricia"))
    }
    
    func testRoger() {
        XCTAssertEqual([Plant.radishes, Plant.radishes, Plant.grass, Plant.clover], disorderedGarden.plantsForChild("Roger"))
    }
    
    func testSamantha() {
        XCTAssertEqual([Plant.grass, Plant.violets, Plant.clover, Plant.grass], disorderedGarden.plantsForChild("Samantha"))
    }
    
    func testXander() {
        XCTAssertEqual([Plant.radishes, Plant.grass, Plant.clover, Plant.violets], disorderedGarden.plantsForChild("Xander"))
    }
    
    // MARK: - Test two gardens, different students
    
    func testBobAndCharliePerGarden() {
        XCTAssertEqual([Plant.radishes, Plant.radishes, Plant.grass, Plant.clover], garden1.plantsForChild("Bob"))
        XCTAssertEqual([Plant.violets, Plant.clover, Plant.radishes, Plant.violets], garden2.plantsForChild("Bob"))
        XCTAssertEqual([Plant.grass, Plant.violets, Plant.clover, Plant.grass], garden1.plantsForChild("Charlie"))
        XCTAssertEqual([Plant.radishes, Plant.radishes, Plant.grass, Plant.clover], garden2.plantsForChild("Charlie"))
    }

    static var allTests = [
        ("testAlicesGarden", testAlicesGarden),
        ("testDifferentGardenForAlice", testDifferentGardenForAlice),
        ("testBobsGarden", testBobsGarden),
        ("testBobAndCharliesGardens", testBobAndCharliesGardens),
        ("testAlice", testAlice),
        ("testBob", testBob),
        ("testCharlie", testCharlie),
        ("testDavid", testDavid),
        ("testEve", testEve),
        ("testFred", testFred),
        ("testGinny", testGinny),
        ("testHarriet", testHarriet),
        ("testIleana", testIleana),
        ("testJoseph", testJoseph),
        ("testKincaid", testKincaid),
        ("testLarry", testLarry),
        ("testPatricia", testPatricia),
        ("testRoger", testRoger),
        ("testSamantha", testSamantha),
        ("testXander", testXander),
        ("testBobAndCharliePerGarden", testBobAndCharliePerGarden),
    ]
}
