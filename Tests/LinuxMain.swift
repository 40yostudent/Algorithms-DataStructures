import XCTest

import LinkedList

var tests = [XCTestCaseEntry]()
tests += LinkedListTests.allTests()
tests += StackTests.allTests()
tests += QueueTests.allTests()
XCTMain(tests)
