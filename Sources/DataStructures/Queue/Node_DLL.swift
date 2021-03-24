/// Doubly Linked List Node
///
/// As storage, a linked list should be used mostly for O(1) operations in all needed methods, without the downside of allocating space in advance as in arrays.
class Node_DLL<Key> {
    
    /// The value stored inside a node, `nil` if sentinel. Constant value, as it can be used to identify the node
    let key: Key?
    
    /// Pointer to the next node, can mutate during insertion and deletion operations
    var next: Node_DLL!
    
    /// Pointer to the previous node, can mutate during insertion and deletion operations
    var prev: Node_DLL!
    
    /// Linked List `head` initialization, return a sentinel node where next and prev point to itself
    init() {
        self.key = nil
        self.next = self
        self.prev = self
    }
    
    /// Generic Node initialization
    /// - Parameters:
    ///   - key: stored value, constant
    ///   - next: pointer to the next node, mutable
    ///   - prev: pointer to the previous node, mutable
    init(key: Key, next: Node_DLL, prev: Node_DLL) {
        self.key = key
        self.next = next
        self.prev = prev
    }

}
