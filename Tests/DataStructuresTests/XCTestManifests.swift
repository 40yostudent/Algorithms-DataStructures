import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(DataStructuresTests.allTests),
        testCase(StackTests.allTests),
    ]
}
#endif
