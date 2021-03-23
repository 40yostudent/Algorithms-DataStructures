/// Linked List Node
///
/// As storage, a linked list should be used mostly for O(1) operations in all needed methods, without the downside of allocating space in advance as in arrays.
public class Node_SLL<Key> {
    
    /// The value stored inside a node, `nil` if sentinel. Constant value, as it can be used to identify the node
    public let key: Key?
    /// Pointer to the next node, can mutate during insertion and deletion operations
    public var next: Node_SLL!
    
    /// Linked List `head` initialization, return a sentinel node where next point to itself
    public init() {
        self.key = nil
        self.next = self
    }
    
    /// Generic Node initialization
    /// - Parameters:
    ///   - key: stored value, constant
    ///   - next: pointer to the next node, mutable
    public init(key: Key, next: Node_SLL) {
        self.key = key
        self.next = next
    }

}
