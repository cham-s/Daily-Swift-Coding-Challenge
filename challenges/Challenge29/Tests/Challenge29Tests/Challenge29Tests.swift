import XCTest
import class Foundation.Bundle

final class Challenge29Tests: XCTestCase {
    func testExample() throws {
        // The Following test test the case where
        // the executable a is printed to the terminal

        // Some of the APIs that we use below are available in macOS 10.13 and above.
        guard #available(macOS 10.13, *) else {
            return
        }

        let fooBinary = productsDirectory.appendingPathComponent("Challenge29")

        let process = Process()
        process.executableURL = fooBinary

        let pipe = Pipe()
        process.standardOutput = pipe

        try process.run()
        process.waitUntilExit()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)
        
        let validOutputs = ["a", "b"]
        let invalidOutputs = ["firstLevel", "secondLevel"]
        
        // The test does not pass because I guess the app is run in sandbox so
        // testFolder is not visible.
        // swift run on the terminal produces the desire result
        XCTAssertEqual(output, validOutputs.description)
        
        XCTAssertNotEqual(output, invalidOutputs.description)
    }

    /// Returns path to the built products directory.
    var productsDirectory: URL {
      #if os(macOS)
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        fatalError("couldn't find the products directory")
      #else
        return Bundle.main.bundleURL
      #endif
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
