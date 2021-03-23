class LinkedList<Key> {
    
    enum Position {
        case first, last, key(Key)
    }
    
    class Node {
        let key: Key?
        var next: Node!
        var prev: Node!
                
        // standard node initializer
        init(key: Key, next: Node, prev: Node) {
            self.key = key
            self.next = next
            self.prev = prev
        }
        
        // head initializer
        fileprivate init() {
            self.key = nil
            self.next = self
            self.prev = self
        }
        
        var isSentinel: Bool {
            return self.key == nil
        }
        
        // last element found following all next pointers (use this for testing)
        // use iterator
        func last() -> Node {
            var node = self
            while node.next.key != nil {
                node = node.next
            }
            return node
        }
        
        @discardableResult
        func delete() -> LinkedList.Node? {
            let node = self
            self.prev.next = self.next
            self.next.prev = self.prev
            return node
        }
    }
    
    // il primo nodo ha data = nil sempre, è solo un puntatore
    private let head = Node()
    
    var sentinel: Node {
        return head
    }
    
    var first: Node {
        get {
            self.head.next
        }
        set {
            self.head.next = newValue
        }
    }
    
    var last: Node {
        get {
            self.head.prev
        }
        set {
            self.head.prev = newValue
        }
    }
    
    var isEmpty: Bool {
        return first.key == nil && last.key == nil
    }

    // la linked list non è una lista ordinabile, inserimenti sempre al primo posto
    @discardableResult
    func insert(_ key: Key) -> LinkedList {
        let newNode = Node(key: key, next: first, prev: head)
        self.first.prev = newNode
        self.first = newNode
        
        return self
    }
    
    // after conforming to Sequence
    func append(contentsOf list: LinkedList) {
        guard list !== self && !list.isEmpty else {
            return
        }
//        for key in list {
//            self.insert(key)
//        }
    }
    
    // should always delete first or last, because it's O(1)
    func delete(_ position: Position) {
        switch position {
            case .first:
                first.delete()
            case .last:
                last.delete()
            default:
                break
        }
    }
}
