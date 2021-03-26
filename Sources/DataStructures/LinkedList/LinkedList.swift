public class LinkedList<Key> {
    
    // il primo nodo ha data = nil sempre, è solo un puntatore. Poiché costante, può essere public
    let head = Node_DLLIndexed<Key>()
    
    /// init an empty Linked List
    public init() {}
    
    var first: Node_DLLIndexed<Key> {
        get {
            self.head.next
        }
        set {
            self.head.next = newValue
        }
    }
    
    var last: Node_DLLIndexed<Key> {
        get {
            self.head.prev
        }
        set {
            self.head.prev = newValue
        }
    }
    
    @discardableResult
    public func insert(_ key: Key) -> LinkedList {
        let newNode = Node_DLLIndexed(key: key, next: head, prev: head.prev)
        newNode.index = head.index
        head.index += 1
        head.prev.next = newNode
        head.prev = newNode
        
        return self
    }
    
    /// Append the content of another sequence
    ///
    /// Convenience method to append another list, as a union operation
    /// - Parameter sequence: the sequence that will be appended
    /// - Precondition: appending a Queue to itself would result in an infinite loop
    /// - Warning: this could consume the appended sequence
    public func append<T: Sequence>(contentsOf sequence: T) where T.Element == Key {
        guard self !== sequence as AnyObject else {
            preconditionFailure("Appending a Linked List to itself would result in an infinite loop")
        }
        for key in sequence {
            self.insert(key)
        }
    }

}
