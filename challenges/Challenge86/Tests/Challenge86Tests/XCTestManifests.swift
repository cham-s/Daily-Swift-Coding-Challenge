import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Challenge86Tests.allTests),
    ]
}
#endif