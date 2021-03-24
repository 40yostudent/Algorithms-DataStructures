import XCTest
@testable import Queue

final class QueueTests: XCTestCase {
    
    func testQueue() {
        let intQueue = Queue<Int>()
        XCTAssertTrue(intQueue.isEmpty)
        XCTAssertNil(intQueue.first)

        intQueue.dequeue(4)
        XCTAssertTrue(intQueue.isEmpty)
        XCTAssertEqual(intQueue.description, "Empty Queue")

        intQueue.enqueue(5)
            .enqueue(4)
            .enqueue(3)
            .enqueue(2)
            .enqueue(1)
            .enqueue(0)
        XCTAssertEqual(intQueue.first, 5)
        XCTAssertEqual(intQueue.dequeue(2), 4)
        XCTAssertEqual(intQueue.first, 3)
        XCTAssertEqual(intQueue.dequeue(), 3)
        XCTAssertEqual(intQueue.first, 2)
        XCTAssertNil(intQueue.dequeue(20))
        XCTAssertTrue(intQueue.isEmpty)

        let stringQueue = Queue<String>()
        stringQueue.enqueue("Hello, World!")
        // intQueue.append(contentsOf: stringQueue) // Compile error expected

        // Reference Type test
        let intQueueCopy = intQueue
        XCTAssertTrue(intQueueCopy.isEmpty)
        intQueue.enqueue(5, 4, 3, 2, 1, 0)
        XCTAssertFalse(intQueueCopy.isEmpty)

        // intQueue.append(contentsOf: intQueueCopy) // Precondition Failure expected
        let anotherIntQueue = Queue(-1, -2, -3, -4, -5)
        intQueue.append(contentsOf: anotherIntQueue)
        XCTAssertTrue(anotherIntQueue.isEmpty)
        XCTAssertEqual(intQueue.first, 5)
        XCTAssertEqual(intQueue.last, -5)
    }

    static var allTests = [
        ("testQueue", testQueue)
    ]
}
