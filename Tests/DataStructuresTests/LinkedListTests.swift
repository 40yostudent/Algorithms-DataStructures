import XCTest
@testable import LinkedList

final class LinkedListTests: XCTestCase {
    
    func testLinkedList() {
//
//        let newList = LinkedList<Int>()
//
//        XCTAssertTrue(newList.isEmpty)
//        newList.delete(.first)
//        newList.delete(.last)
//        newList.delete(.key(3))
//        XCTAssertFalse(newList.contains(5))
//
//        XCTAssertNil(newList.first.key)
//        XCTAssertNil(newList.last.key)
//        XCTAssertEqual(newList.description, "Empty List")
//
//        XCTAssert(newList.last === newList.sentinel.last())
//
//        newList.insert(5)
//        XCTAssertFalse(newList.isEmpty)
//        XCTAssertEqual(newList.first.key, 5)
//        XCTAssertTrue(newList.contains(5))
//        XCTAssertEqual(newList.last.key, 5)
//        XCTAssertNotNil(newList.first.key)
//        XCTAssertEqual(newList.description, "head -> 5")
//
//        XCTAssert(newList.last === newList.sentinel.last())
//
//        newList.insert(4)
//        newList.insert(3)
//        newList.insert(2)
//        newList.insert(1)
//        newList.insert(0)
//        XCTAssertFalse(newList.isEmpty)
//        XCTAssertEqual(newList.first.key, 0)
//        XCTAssertEqual(newList.last.key, 5)
//        XCTAssertEqual(newList.description, "head -> 0 -> 1 -> 2 -> 3 -> 4 -> 5")
//        XCTAssertTrue(newList.contains(4))
//        XCTAssertTrue(newList.contains(3))
//        XCTAssertTrue(newList.contains(2))
//        XCTAssertTrue(newList.contains(1))
//        XCTAssertTrue(newList.contains(0))
//        XCTAssertFalse(newList.contains(6))
//
//        XCTAssert(newList.last === newList.sentinel.last())
//
//        XCTAssertEqual(newList.min(), 0)
//
//        newList.delete(.first)
//        XCTAssertEqual(newList.first.key, 1)
//        XCTAssertEqual(newList.last.key, 5)
//        XCTAssertEqual(newList.description, "head -> 1 -> 2 -> 3 -> 4 -> 5")
//
//        XCTAssert(newList.last === newList.sentinel.last())
//
//        newList.delete(.last)
//        XCTAssertEqual(newList.first.key, 1)
//        XCTAssertEqual(newList.last.key, 4)
//        XCTAssertEqual(newList.description, "head -> 1 -> 2 -> 3 -> 4")
//
//        XCTAssert(newList.last === newList.sentinel.last())
//
////        newList.delete(.key(3))
////        XCTAssertEqual(newList.first.key, 1)
////        XCTAssertEqual(newList.last.key, 4)
////        XCTAssertEqual(newList.description, "head -> 1 -> 2 -> 4")
//
//        XCTAssert(newList.last === newList.sentinel.last())
    }
    
    func testLinkedListAsSequence() {
//        let newList = LinkedList<String>()
//
//        newList.insert("5")
//        .insert("4")
//        .insert("8")
//        .insert("Hello, World!")
//        .insert("9")
//        .insert("0")
//        .insert("2")
//        .insert("21")
//
//        XCTAssertTrue(newList.contains("8"))
//        XCTAssertFalse(newList.contains("7"))
//
//        XCTAssertTrue(newList.contains(where: {$0.count < 10}))
//        XCTAssertFalse(newList.contains(where: {$0.count > 100}))
//
//        XCTAssertEqual(newList.first(where: {$0.first == "H"}), "Hello, World!")
//
//        XCTAssertEqual(newList.min(), "0")
//        XCTAssertEqual(newList.min(by: >), "Hello, World!")
//        XCTAssertEqual(newList.max(), "Hello, World!")
//
//        XCTAssertEqual(newList.compactMap { Int($0) }, [21, 2, 0, 9, 8, 4, 5])
//        XCTAssertEqual(newList.compactMap { Int($0) }.reduce(0, +), 49)
//
//        // enumerated() test
    }

    static var allTests = [
        ("testLinkedList", testLinkedList),
        ("testLinkedListAsSequence", testLinkedListAsSequence)
    ]
}
