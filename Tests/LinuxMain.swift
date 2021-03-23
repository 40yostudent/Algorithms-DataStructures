import XCTest

import LinkedList

var tests = [XCTestCaseEntry]()
tests += DataStructuresTests.allTests()
tests += StackTests.allTests()
tests += QueueTests.allTests()
XCTMain(tests)
