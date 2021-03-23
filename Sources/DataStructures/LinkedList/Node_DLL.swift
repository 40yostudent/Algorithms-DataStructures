/// Doubly Linked List Node
///
/// As storage, a linked list should be used mostly for O(1) operations in all needed methods, without the downside of allocating space in advance as in arrays.
public class Node_DLL<Key> {
    
    /// The value stored inside a node, `nil` if sentinel. Constant value, as it can be used to identify the node
    public let key: Key?
    
    /// Pointer to the next node, can mutate during insertion and deletion operations
    public var next: Node_DLL!
    
    /// Pointer to the previous node, can mutate during insertion and deletion operations
    public var prev: Node_DLL!
    
    /// Linked List `head` initialization, return a sentinel node where next and prev point to itself
    public init() {
        self.key = nil
        self.next = self
        self.prev = self
    }
    
    /// Generic Node initialization
    /// - Parameters:
    ///   - key: stored value, constant
    ///   - next: pointer to the next node, mutable
    ///   - prev: pointer to the previous node, mutable
    public init(key: Key, next: Node_DLL, prev: Node_DLL) {
        self.key = key
        self.next = next
        self.prev = prev
    }

}
