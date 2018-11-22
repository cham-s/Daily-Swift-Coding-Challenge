import XCTest

import uniqueTests

var tests = [XCTestCaseEntry]()
tests += uniqueTests.allTests()
XCTMain(tests)