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
}
