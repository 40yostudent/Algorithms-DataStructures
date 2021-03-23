import XCTest
@testable import Stack

final class StackTests: XCTestCase {
    
    func testStack() {
        let intStack = Stack<Int>()
        XCTAssertTrue(intStack.isEmpty)
        XCTAssertNil(intStack.top)
        
        intStack.pop(4)
        XCTAssertTrue(intStack.isEmpty)
        XCTAssertEqual(intStack.description, "Empty Stack")
        
        intStack.push(5)
            .push(4)
            .push(3)
            .push(2)
            .push(1)
            .push(0)
        XCTAssertEqual(intStack.top, 0)
        XCTAssertEqual(intStack.pop(2), 1)
        XCTAssertEqual(intStack.top, 2)
        XCTAssertNil(intStack.pop(20))
        XCTAssertTrue(intStack.isEmpty)
        
        let stringStack = Stack<String>()
        stringStack.push("Hello, World!")
        // intStack.append(contentsOf: stringStack) // Compile error expected
        
        // Reference Type test
        let intStackCopy = intStack
        XCTAssertTrue(intStackCopy.isEmpty)
        intStack.push(5, 4, 3, 2, 1, 0)
        XCTAssertFalse(intStackCopy.isEmpty)
        
        // intStack.append(contentsOf: intStackCopy) // Precondition Failure expected
        let anotherIntStack = Stack(-5, -4, -3, -2, -1)
        intStack.append(contentsOf: anotherIntStack)
        XCTAssertTrue(anotherIntStack.isEmpty)
        XCTAssertEqual(intStack.top, -5)
    }

    static var allTests = [
        ("testStack", testStack)
    ]
}
