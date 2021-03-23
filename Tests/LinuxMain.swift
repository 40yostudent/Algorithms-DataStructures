import XCTest

import LinkedList

var tests = [XCTestCaseEntry]()
tests += DataStructuresTests.allTests()
tests += StackTests.allTests()
XCTMain(tests)
