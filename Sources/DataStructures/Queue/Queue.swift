/**
 Queue - Data Structure
 
 The Queue is a Data Structures in which the position of the next inserted entry and the next entry to be cancelled are predetermined.
 Think of it as a queue of persons, or better some cars in a tunnel, where the only visible entry is the first in queue, and any attempt to read other entries will result in dequeuing out entries from the queue.
 
 Implemented as described on the Cormen's book, plus some methods in analogy to some found in the Stack, there are 2 available operations: enqueue(\_: Keys...), dequeue(\_: Int), isEmpty: Bool, append(contentsOf: Sequence<Key>)
 
 The primary traits of the Queue data structure are:
 * The element consumed by a cancelling operation is predetermined, and is the first inserted (FIFO, First In First Out)
 * Traversing the elements of this data structure is a consuming operation, see Warning Section
 * Only the first and last element inserted can be inspected without mutating the data storage
  
 - Important: This data structure has been implemented as a class to avoid confusion on its use.
 Considering its storage is implemented as a class, this object would behave as a reference type even if implemented as a struct.
 For this reason, a class is the obvious choice.
  
 - Warning: Can be traversed only once. Traversing the elements of this data structure is a consuming operation, and will result in an empty queue.
 */
public class Queue<Key> {
    
    /// this is the first node, used as a sentinel, and with key value = nil
    private let head = Node_DLL<Key>()
    
    /// init an empty Queue
    public init() {}
    
    /// init a new non empty Queue
    /// - Parameter keys: one or more values to be inserted
    public init(_ keys: Key...) {
        for key in keys {
            self.enqueue(key)
        }
    }
    
    /// The next value to be dequeued
    public var first: Key? {
        get {
            self.head.prev.key
        }
    }
    
    /// The last value enqueued
    public var last: Key? {
        get {
            self.head.next.key
        }
    }
    
    public var isEmpty: Bool {
        return first == nil && last == nil
    }
    
    /// Insertion method for the Queue
    ///
    /// Always stores new values as last elements of the Queue
    /// - Complexity: O(1)
    /// - Parameter key: new value(s) to be stored
    /// - Returns: the Queue itself, so other operations can be concatenated
    @discardableResult
    public func enqueue(_ keys: Key...) -> Queue {
        for key in keys {
            let newNode = Node_DLL(key: key, next: head.next, prev: head)
            head.next.prev = newNode
            head.next = newNode
        }
        
        return self
    }
    
    /// Deletion method for the Queue
    ///
    /// Always dequeue the first element of the Queue
    /// - Complexity: O(1)
    /// - Parameter times: how many elements will be dequeued
    /// - Returns: the last value dequeued
    @discardableResult
    public func dequeue(_ times: Int = 1) -> Key? {
        for _ in 1..<times {
            head.prev = head.prev.prev
        }
        let dequeued = first
        head.prev = head.prev.prev
        head.prev.next = head
        return dequeued
    }
    
    /// Append the content of another sequence
    ///
    /// Convenience method to append another list, as a union operation
    /// - Parameter sequence: the sequence that will be appended
    /// - Precondition: appending a Queue to itself would result in an infinite loop
    /// - Warning: this could consume the appended sequence
    public func append<T: Sequence>(contentsOf sequence: T) where T.Element == Key {
        guard self !== sequence as AnyObject else {
            preconditionFailure("Appending a Queue to itself would result in an infinite loop")
        }
        for key in sequence {
            self.enqueue(key)
        }
    }
    
}
