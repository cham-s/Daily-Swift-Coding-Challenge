import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Challenge12Tests.allTests),
    ]
}
#endif