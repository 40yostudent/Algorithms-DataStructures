class Node_DLLIndexed<Key> {
    let key: Key?
    var next: Node_DLLIndexed!
    var prev: Node_DLLIndexed!
    var index: Int!
            
    // standard node initializer
    init(key: Key, next: Node_DLLIndexed, prev: Node_DLLIndexed) {
        self.key = key
        self.next = next
        self.prev = prev
    }
    
    // head initializer
    init() {
        self.key = nil
        self.next = self
        self.prev = self
        self.index = 0 // this is the value of endIndex
    }
    
    @discardableResult
    public func delete() -> Node_DLLIndexed {
        let node = self
        node.prev.next = node.next
        node.next.prev = node.prev
        return node
    }
}
