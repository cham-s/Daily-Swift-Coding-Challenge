import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Challenge97Tests.allTests),
    ]
}
#endif