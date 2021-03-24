/**
 Stack - Data Structure
 
 The Stack is a Data Structures in which the position of the next inserted entry and the next entry to be cancelled are predetermined.
 Think of it as a stack of dishes or coins, where the only visible entry is the first on top, and any attempt to read other entries will result in
 popping out entries from the stack.
 
 Implemented as described on the Cormen's book, there are 5 available operations: top(), pop(\_: Int), push(\_: Key), isEmpty: Bool, append(contentsOf: Sequence<Key>)
 
 The primary traits of the Stack data structure are:
 * The element consumed by a cancelling operation is predetermined, and is the last inserted (LIFO, Last In First Out)
 * Traversing the elements of this data structure is a consuming operation, see Warning Section
 * Only the last element inserted can be inspected without mutating the data storage
  
 - Important: This data structure has been implemented as a class to avoid confusion on its use.
 Considering its storage is implemented as a class, this object would behave as a reference type even if implemented as a struct.
 For this reason, a class is the obvious choice.
  
 - Warning: Can be traversed only once. Traversing the elements of this data structure is a consuming operation, and will result in an empty stack.
 */
public class Stack<Key> {
    
    /// this is the first node, used as a sentinel, and with key value = nil
    private let head = Node_SLL<Key>()
    
    /// init an empty Stack
    public init() {}
    
    /// init a new non empty Stack
    /// - Parameter keys: one or more values to be inserted
    public init(_ keys: Key...) {
        for key in keys {
            self.push(key)
        }
    }
    
    /// Value stored on top of the Stack
    public var top: Key? {
        get {
            self.head.next.key
        }
    }
    
    public var isEmpty: Bool {
        return top == nil
    }
    
    /// Insertion method for the Stack
    ///
    /// Always stores new values on top of the Stack
    /// - Complexity: O(1)
    /// - Parameter key: new value(s) to be stored
    /// - Returns: the Stack itself, so other operations can be concatenated
    @discardableResult
    public func push(_ keys: Key...) -> Stack {
        for key in keys {
            let newNode = Node_SLL(key: key, next: self.head.next)
            self.head.next = newNode
        }
        
        return self
    }
    
    /// Deletion method for the Stack
    ///
    /// Always delete new values from the top of the Stack
    /// - Complexity: O(1)
    /// - Parameter times: how many elements will be deleted
    /// - Returns: the last value deleted
    @discardableResult
    public func pop(_ times: Int = 1) -> Key? {
        for _ in 1..<times {
            head.next = head.next.next
        }
        let popped = top
        head.next = head.next.next
        return popped
    }
    
    /// Append the content of another sequence
    ///
    /// Convenience method to append another sequence, as a union operation
    /// - Parameter sequence: the list that will be appended
    /// - Precondition: appending a Stack to itself would result in an infinite loop
    /// - Warning: this could consume the appended sequence
    public func append<T: Sequence>(contentsOf sequence: T) where T.Element == Key {
        guard self !== sequence as AnyObject else {
            preconditionFailure("Appending a Stack to itself would result in an infinite loop")
        }
        for key in sequence {
            self.push(key)
        }
    }
    
}
