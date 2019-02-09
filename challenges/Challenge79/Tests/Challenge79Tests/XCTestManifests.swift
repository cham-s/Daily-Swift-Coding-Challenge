import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Challenge79Tests.allTests),
    ]
}
#endif