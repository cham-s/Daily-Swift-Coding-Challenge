import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Challenge26Tests.allTests),
    ]
}
#endif