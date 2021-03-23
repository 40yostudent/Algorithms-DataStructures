/// Doubly Linked List Node
///
/// As storage, a linked list should be used mostly for O(1) operations in all needed methods, without the downside of allocating space in advance as in arrays.
public class Node_DLL<Key>: Node_SLL<Key> {
    
    /// Pointer to the next node, can mutate during insertion and deletion operations
    public var prev: Node_DLL!
    
    /// Linked List `head` initialization, return a sentinel node where next and prev point to itself
    public override init() {
        super.init()
        self.prev = self
    }
    
    /// Generic Node initialization
    /// - Parameters:
    ///   - key: stored value, constant
    ///   - next: pointer to the next node, mutable
    ///   - prev: pointer to the previous node, mutable
    public init(key: Key, next: Node_DLL, prev: Node_DLL) {
        super.init(key: key, next: next)
        self.prev = prev
    }

}
