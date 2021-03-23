import LinkedList

public class Queue<Key> {
    
    /// this is the first node, used as a sentinel, and with key value = nil
    private let head = Node_DLL<Key>()
    
    /// init an empty Queue
    public init() {}
    
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
            let newNode = Node_DLL(key: key, next: self.head.next, prev: self.head)
            self.head.next.prev = newNode
            self.head.next = newNode
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
        head.prev.prev.next = head
        return dequeued
    }
    
}
